<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="FormulariJornada.ascx.cs"
    Inherits="albertllonguerasWebsite.usercontrols.FormulariJornada" %>
<div class="input">
    <asp:DropDownList ID="EquipLocal" runat="server" AutoPostBack="True" OnSelectedIndexChanged="EquipLocal_SelectedIndexChanged">
        <asp:ListItem Value="0">Escollir equip</asp:ListItem>
    </asp:DropDownList>
</div>
<div class="input">
    <asp:DropDownList ID="ResultatLocal" Visible="False" runat="server" AutoPostBack="True"
        OnSelectedIndexChanged="ResultatLocal_SelectedIndexChanged">
        <asp:ListItem Value="0">Resultat</asp:ListItem>
        <asp:ListItem>1</asp:ListItem>
        <asp:ListItem>2</asp:ListItem>
    </asp:DropDownList>
</div>
<div class="input">
    <asp:CheckBoxList ID="GolejadorsLocal" Visible="False" runat="server" AutoPostBack="true">
    </asp:CheckBoxList>
</div>
<div class="input">
    <asp:DropDownList ID="EquipVisitant" Visible="True" runat="server" AutoPostBack="true"
        OnSelectedIndexChanged="EquipVisitant_SelectedIndexChanged">
        <asp:ListItem Value="0">Escollir equip</asp:ListItem>
    </asp:DropDownList>
</div>
<div class="input">
    <asp:DropDownList ID="ResultatVisitant" Visible="False" runat="server" AutoPostBack="true"
        OnSelectedIndexChanged="ResultatVisitant_SelectedIndexChanged">
        <asp:ListItem Value="0">Resultat</asp:ListItem>
        <asp:ListItem>1</asp:ListItem>
        <asp:ListItem>2</asp:ListItem>
    </asp:DropDownList>
</div>
<div class="input">
    <asp:CheckBoxList ID="GolejadorsVisitant" Visible="False" runat="server" AutoPostBack="true">
    </asp:CheckBoxList>
</div>
<div class="input">
    <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
</div>

