<%@ Page UnobtrusiveValidationMode="None" Title="" Language="C#" MasterPageFile="~/PagMaestra.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="ProyectoMulti.login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:Login ID="Login1" runat="server">
        <LayoutTemplate>
            <div class="ib" style="width:60%">
                <h1>Iniciar sesión</h1><br />
                <asp:Label runat="server" AssociatedControlID="UserName" ID="UserNameLabel">Nombre de usuario:</asp:Label>
                <asp:TextBox runat="server" CssClass="textBox" Height="20px" ID="UserName"></asp:TextBox><br /><br />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="UserName" ErrorMessage="El nombre de usuario es obligatorio." ValidationGroup="Login1" ToolTip="El nombre de usuario es obligatorio." ID="UserNameRequired">*</asp:RequiredFieldValidator>
                <asp:Label runat="server" AssociatedControlID="Password" ID="PasswordLabel">Contraseña:</asp:Label>
                <asp:TextBox runat="server" CssClass="textBox" Height="20px" TextMode="Password" ID="Password"></asp:TextBox><br /><br />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Password" ErrorMessage="La contrase&#241;a es obligatoria." ValidationGroup="Login1" ToolTip="La contrase&#241;a es obligatoria." ID="PasswordRequired">*</asp:RequiredFieldValidator>
                <asp:CheckBox runat="server" Text="Record&#225;rmelo la pr&#243;xima vez." ID="RememberMe"></asp:CheckBox>
                <asp:Literal runat="server" ID="FailureText" EnableViewState="False"></asp:Literal><br />
                <asp:Button CssClass="button" runat="server" CommandName="Login" Text="Inicio de sesi&#243;n" ValidationGroup="Login1" ID="LoginButton"></asp:Button>
            </div>
            <div class="clear"></div>
        </LayoutTemplate>
    </asp:Login>
</asp:Content>
