<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="FormulariJornada.ascx.cs"
    Inherits="albertllonguerasWebsite.usercontrols.FormulariJornada" %>
<div class="EquipLocal">
    <div class="input">
        <asp:DropDownList ID="EquipLocal" runat="server">
            <asp:ListItem Value="0">Escollir equip</asp:ListItem>
        </asp:DropDownList>
    </div>
    <div class="input">
        <select name="ResultatLocal">
            <option value="0">0</option>
            <option value="1">1</option>
            <option value="2">2</option>
            <option value="3">3</option>
        </select>
    </div>
    <div class="input" runat="server">
        <input type="text" id="GolejadorsLocal" name="blah" />
        <input type="button" id="buttonToken" value="Submit" />
    </div>
</div>
<div class="EquipVisitant">
    <div class="input">
        <asp:DropDownList ID="EquipVisitant" runat="server">
            <asp:ListItem Value="0">Escollir equip</asp:ListItem>
        </asp:DropDownList>
    </div>
    <div class="input">
        <select name="ResultatLocal">
            <option value="0">0</option>
            <option value="1">1</option>
            <option value="2">2</option>
            <option value="3">3</option>
        </select>
    </div>
    <div class="input">
        <input type="text" id="GolejadorsVisitant" name="blah" />
        <input type="button" value="Submit" />
    </div>
</div>
<div class="input">
    <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
</div>
