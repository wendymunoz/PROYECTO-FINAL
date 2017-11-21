<%@ Page UnobtrusiveValidationMode="None" Title="" Language="C#" MasterPageFile="~/PagMaestra.Master" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="ProyectoMulti.Registro" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Regístrate</h1>

    <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" Width="707px">
        <WizardSteps>
            <asp:CreateUserWizardStep ID="CreateUserWizardStep1" runat="server">
                <ContentTemplate>
                    <div class="ib" style="width: 104%">
                        <table style="width: 574px">
                            <tr>
                                <td align="left" colspan="2">¡Ingresa tus datos para que empieces a comprar!</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td align="right" style="text-align: left; width: 204px">
                                    <asp:Label runat="server" AssociatedControlID="UserName" ID="UserNameLabel">Nombre de Usuario:</asp:Label></td>
                                <td style="width: 279px">
                                    <asp:TextBox runat="server" CssClass="textBox" ID="UserName" Width="244px"></asp:TextBox>
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="UserName" ErrorMessage="User Name is required." ValidationGroup="CreateUserWizard1" ToolTip="User Name is required." ID="UserNameRequired">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="right" style="text-align: left; width: 204px">
                                    <asp:Label runat="server" AssociatedControlID="Password" ID="PasswordLabel">Contraseña:</asp:Label></td>
                                <td style="width: 279px">
                                    <asp:TextBox runat="server" CssClass="textBox" TextMode="Password" ID="Password" Width="244px"></asp:TextBox>
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Password" ErrorMessage="Password is required." ValidationGroup="CreateUserWizard1" ToolTip="Password is required." ID="PasswordRequired">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="right" style="text-align: left; width: 204px;">
                                    <asp:Label runat="server" AssociatedControlID="ConfirmPassword" ID="ConfirmPasswordLabel">Confirma Contraseña:</asp:Label></td>
                                <td style="width: 279px">
                                    <asp:TextBox runat="server" CssClass="textBox" TextMode="Password" ID="ConfirmPassword" Width="244px"></asp:TextBox>
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmPassword" ErrorMessage="Confirm Password is required." ValidationGroup="CreateUserWizard1" ToolTip="Confirm Password is required." ID="ConfirmPasswordRequired">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="right" style="text-align: left; width: 204px">
                                    <asp:Label runat="server" AssociatedControlID="Email" ID="EmailLabel">E-mail:</asp:Label></td>
                                <td style="width: 279px">
                                    <asp:TextBox runat="server" CssClass="textBox" ID="Email" Width="244px"></asp:TextBox>
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Email" ErrorMessage="E-mail is required." ValidationGroup="CreateUserWizard1" ToolTip="E-mail is required." ID="EmailRequired">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="right" style="text-align: left; width: 204px">
                                    <asp:Label runat="server" AssociatedControlID="Question" ID="QuestionLabel">Pregunta de Seguridad:</asp:Label></td>
                                <td style="width: 279px">
                                    <asp:TextBox runat="server" CssClass="textBox" ID="Question" Width="244px"></asp:TextBox>
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Question" ErrorMessage="Security question is required." ValidationGroup="CreateUserWizard1" ToolTip="Security question is required." ID="QuestionRequired">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="right" style="text-align: left; width: 204px">
                                    <asp:Label runat="server" AssociatedControlID="Answer" ID="AnswerLabel">Respuesta de Seguridad:</asp:Label></td>
                                <td style="width: 279px">
                                    <asp:TextBox runat="server" CssClass="textBox" ID="Answer" Width="244px"></asp:TextBox>
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Answer" ErrorMessage="Security answer is required." ValidationGroup="CreateUserWizard1" ToolTip="Security answer is required." ID="AnswerRequired">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="center" colspan="2">
                                    <asp:CompareValidator runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword" ErrorMessage="The Password and Confirmation Password must match." Display="Dynamic" ValidationGroup="CreateUserWizard1" ID="PasswordCompare"></asp:CompareValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="center" colspan="2" style="color: Red;">
                                    <asp:Literal runat="server" ID="ErrorMessage" EnableViewState="False"></asp:Literal>
                                </td>
                            </tr>
                        </table>
                    </div>
                </ContentTemplate>
            </asp:CreateUserWizardStep>
            <asp:CompleteWizardStep ID="CompleteWizardStep1" runat="server">
            </asp:CompleteWizardStep>
        </WizardSteps>
    </asp:CreateUserWizard>
</asp:Content>
