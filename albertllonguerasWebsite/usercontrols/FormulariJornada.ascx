<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="FormulariJornada.ascx.cs" Inherits="albertllonguerasWebsite.usercontrols.FormulariJornada" %>

<div class="input">
<asp:DropDownList ID="EquipLocal" runat="server">
    <asp:ListItem Value="0">Escollir equip</asp:ListItem>
    <asp:ListItem>Barcelona</asp:ListItem>
    <asp:ListItem>Madrid</asp:ListItem>
</asp:DropDownList>
</div>
<div class="input">
<asp:DropDownList ID="ResultatLocal" runat="server">
    <asp:ListItem Value="0">Resultat</asp:ListItem>
    <asp:ListItem>1</asp:ListItem>
    <asp:ListItem>2</asp:ListItem>
</asp:DropDownList>
</div>
<div class="input">
<asp:CheckBoxList ID="GolejadorsLocal" runat="server">
    <asp:ListItem>Messi</asp:ListItem>
    <asp:ListItem>Xavi</asp:ListItem>
    <asp:ListItem>Iniesta</asp:ListItem>
</asp:CheckBoxList>
</div>
<div class="input">
<asp:DropDownList ID="EquipVisitant" runat="server">
    <asp:ListItem Value="0">Escollir equip</asp:ListItem>
    <asp:ListItem>Barcelona</asp:ListItem>
    <asp:ListItem>Madrid</asp:ListItem>
</asp:DropDownList>
</div>
<div class="input">
<asp:DropDownList ID="ResultatVisitant" runat="server">
    <asp:ListItem Value="0">Resultat</asp:ListItem>
    <asp:ListItem>1</asp:ListItem>
    <asp:ListItem>2</asp:ListItem>
</asp:DropDownList>
</div>
<div class="input">
<asp:CheckBoxList ID="GolejadorsVisitant" runat="server">
    <asp:ListItem>Messi</asp:ListItem>
    <asp:ListItem>Xavi</asp:ListItem>
    <asp:ListItem>Iniesta2</asp:ListItem>
</asp:CheckBoxList>
</div>
<div class="input">
<asp:Button ID="Button1" runat="server" Text="Button" onclick="Button1_Click" />
</div>



