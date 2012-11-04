using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using umbraco.MacroEngines;
using umbraco.NodeFactory;
using umbraco.cms.businesslogic.web;
using umbraco.BusinessLogic;
using umbraco.cms.businesslogic.media;
using umbraco.cms.businesslogic.member;

namespace albertllonguerasWebsite.usercontrols
{
    public partial class FormulariJornada : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var member = Member.GetCurrentMember();
     
            var user = new User(0);

            var parentId = Node.getCurrentNodeId();

            var idWebsiteNode = Node.getCurrentNodeId();
            DynamicNode WebsiteNode = new DynamicNode(idWebsiteNode).Parent;
            DynamicNode PlayerNode = WebsiteNode.Descendants("Jugador").Items.First(x => x.Name == member.LoginName);

            DynamicNode nodePorra = PlayerNode.Down();
            DocumentType dt = DocumentType.GetByAlias("Puntuacio");
            var name = EquipLocal.SelectedValue + EquipVisitant.SelectedValue + DateTime.Now.Ticks;

            var document = Document.MakeNew(name, dt, user, nodePorra.Id);

            //Guardar els valors del formulari al node

            string jornada = WebsiteNode.Descendants("PorraHome").Items.First().GetPropertyValue("jornada");
            document.getProperty("jornada").Value = jornada;
            document.getProperty("equipLocal").Value = EquipLocal.SelectedValue;
            document.getProperty("equipVisitant").Value = EquipVisitant.SelectedValue;
            document.getProperty("resultatLocal").Value = ResultatLocal.SelectedValue;
            document.getProperty("resultatVisitant").Value = ResultatVisitant.SelectedValue;

            string golejadorsLocal = string.Empty;
            for (int i = 0; i < GolejadorsLocal.Items.Count; i++)
            {
                if (GolejadorsLocal.Items[i].Selected==true)
                {
                    golejadorsLocal=string.Format("{0}{1},", golejadorsLocal, GolejadorsLocal.Items[i].Value);
                }
                
            }
            document.getProperty("golejadorsLocal").Value = golejadorsLocal;

            string golejadorsVisitant = string.Empty;
            for (int i = 0; i < GolejadorsVisitant.Items.Count; i++)
            {
                if (GolejadorsVisitant.Items[i].Selected==true)
                {
                    golejadorsVisitant = string.Format("{0}{1},", golejadorsVisitant, GolejadorsVisitant.Items[i].Value);
                }
                
            }
            document.getProperty("golejadorsVisitant").Value = golejadorsVisitant;

            document.Publish(user);
            umbraco.library.UpdateDocumentCache(document.Id);
        }

    }
}