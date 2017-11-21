<%@ Page UnobtrusiveValidationMode="None" Title="" Language="C#" MasterPageFile="~/PagMaestra.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="ProyectoMulti.login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div style="text-align: center">

        <asp:Login ID="Login1" runat="server">
            <LayoutTemplate>
                <div class="ib" style="width:124%">
                    <table cellspacing="0" cellpadding="1" style="border-collapse: collapse;">
                        <tr>
                            <td>
                                <table cellpadding="0" style="width: 462px">
                                    <tr>
                                        <td colspan="2">
                                            <h1 style="text-align: left">Inicia Sesión</h1><br />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right">
                                            <asp:Label runat="server" AssociatedControlID="UserName" ID="UserNameLabel">Usuario:</asp:Label></td>
                                        <td>
                                            <asp:TextBox runat="server" CssClass="textBox" ID="UserName"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ControlToValidate="UserName" ErrorMessage="User Name is required." ValidationGroup="Login1" ToolTip="User Name is required." ID="UserNameRequired">*</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right">
                                            <asp:Label runat="server" AssociatedControlID="Password" ID="PasswordLabel">Contraseña:</asp:Label></td>
                                        <td>
                                            <asp:TextBox runat="server" CssClass="textBox" TextMode="Password" ID="Password"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ControlToValidate="Password" ErrorMessage="Password is required." ValidationGroup="Login1" ToolTip="Password is required." ID="PasswordRequired">*</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td colspan="2" style="text-align: center">
                                            <asp:CheckBox runat="server" Text="    Recuerdame la siguiente vez." ID="RememberMe"></asp:CheckBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center" colspan="2" style="color: Red;">
                                            <asp:Literal runat="server" ID="FailureText" EnableViewState="False"></asp:Literal>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center" colspan="2">
                                            <asp:Button runat="server" CssClass="button" CommandName="Login" Text="Log In" ValidationGroup="Login1" ID="LoginButton"></asp:Button>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </div>
            </LayoutTemplate>
        </asp:Login>
        <br /><br /><br /><br />
    </div>

</asp:Content>
