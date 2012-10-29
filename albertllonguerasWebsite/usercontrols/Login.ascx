<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Login.ascx.cs" Inherits="albertllonguerasWebsite.usercontrols.Login" %>
<fieldset>
        <div class="editor-label">
            <asp:Label ID="Label1" AssociatedControlID="tb_email" runat="server">Email</asp:Label>
        </div>
        <div class="editor-field">
           <asp:TextBox ID="tb_email" runat="server" CssClass="span6 input-xlarge" />
        </div>

        <div class="editor-label">
            <asp:Label ID="Label2" AssociatedControlID="tb_password" runat="server">Password</asp:Label>
        </div>
        <div class="editor-field">
           <asp:TextBox ID="tb_password" TextMode="Password" runat="server" CssClass="span6 input-xlarge" />
        </div>

        <p>
            <asp:Button ID="Button1" OnClick="login" runat="server" Text="Login" CssClass="btn" />
        </p>
</fieldset>

