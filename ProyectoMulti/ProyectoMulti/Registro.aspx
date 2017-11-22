<%@ Page UnobtrusiveValidationMode="None" Title="" Language="C#" MasterPageFile="~/PagMaestra.Master" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="ProyectoMulti.Registro" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:CreateUserWizard ID="CreateUserWizard1" runat="server">
        <WizardSteps>
            <asp:CreateUserWizardStep ID="CreateUserWizardStep1" runat="server">
                <ContentTemplate>
                    <h1>Regístrese para obtener una nueva cuenta</h1>
                    <div class="ib">
                        
                        <asp:Label runat="server" AssociatedControlID="UserName" ID="UserNameLabel">Nombre de usuario:</asp:Label>
                        <asp:TextBox runat="server" CssClass="textBox" ID="UserName"></asp:TextBox><br /><br />
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="UserName" ErrorMessage="El nombre de usuario es obligatorio." ValidationGroup="CreateUserWizard1" ToolTip="El nombre de usuario es obligatorio." ID="RequiredFieldValidator1">*</asp:RequiredFieldValidator>

                        <asp:Label runat="server" AssociatedControlID="Password" ID="PasswordLabel">Contraseña:</asp:Label>
                        <asp:TextBox runat="server" CssClass="textBox" TextMode="Password" ID="Password"></asp:TextBox><br /><br />
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="Password" ErrorMessage="La contrase&#241;a es obligatoria." ValidationGroup="CreateUserWizard1" ToolTip="La contrase&#241;a es obligatoria." ID="RequiredFieldValidator2">*</asp:RequiredFieldValidator>

                        <asp:Label runat="server" AssociatedControlID="Question" ID="QuestionLabel">Pregunta de seguridad:</asp:Label>
                        <asp:TextBox runat="server" CssClass="textBox" ID="Question"></asp:TextBox><br /><br />
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="Question" ErrorMessage="La pregunta de seguridad es obligatoria." ValidationGroup="CreateUserWizard1" ToolTip="La pregunta de seguridad es obligatoria." ID="QuestionRequired">*</asp:RequiredFieldValidator>
                    </div>
                    <div class="ib">
                        <asp:Label runat="server" AssociatedControlID="Email" ID="EmailLabel">Correo electrónico:</asp:Label>
                        <asp:TextBox runat="server" CssClass="textBox" ID="Email"></asp:TextBox><br /><br />
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="Email" ErrorMessage="El correo electr&#243;nico es obligatorio." ValidationGroup="CreateUserWizard1" ToolTip="El correo electr&#243;nico es obligatorio." ID="EmailRequired">*</asp:RequiredFieldValidator>

                        <asp:Label runat="server" AssociatedControlID="ConfirmPassword" ID="Label3">Confirmar contraseña:</asp:Label>
                        <asp:TextBox runat="server" CssClass="textBox" TextMode="Password" ID="ConfirmPassword"></asp:TextBox><br /><br />
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmPassword" ErrorMessage="Confirmar contrase&#241;a es obligatorio." ValidationGroup="CreateUserWizard1" ToolTip="Confirmar contrase&#241;a es obligatorio." ID="RequiredFieldValidator3">*</asp:RequiredFieldValidator>

                        <asp:Label runat="server" AssociatedControlID="Answer" ID="AnswerLabel">Respuesta de seguridad:</asp:Label>
                        <asp:TextBox runat="server" CssClass="textBox" ID="Answer"></asp:TextBox><br /><br />
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="Answer" ErrorMessage="La respuesta de seguridad es obligatoria." ValidationGroup="CreateUserWizard1" ToolTip="La respuesta de seguridad es obligatoria." ID="AnswerRequired">*</asp:RequiredFieldValidator>

                        <asp:CompareValidator runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword" ErrorMessage="Contrase&#241;a y Confirmar contrase&#241;a deben coincidir." Display="Dynamic" ValidationGroup="CreateUserWizard1" ID="PasswordCompare"></asp:CompareValidator>
                        <asp:Literal runat="server" ID="ErrorMessage" EnableViewState="False"></asp:Literal>
                    </div>

                 </ContentTemplate>
                <CustomNavigationTemplate>
                    <div class="mensaje">
                        <asp:Button runat="server" CssClass="button" CommandName="MoveNext" Text="Crear usuario" ValidationGroup="CreateUserWizard1" ID="StepNextButton"></asp:Button>    
                    </div>
                    
                </CustomNavigationTemplate>
            </asp:CreateUserWizardStep>
            <asp:CompleteWizardStep ID="CompleteWizardStep1" runat="server">
            </asp:CompleteWizardStep>
</WizardSteps>
    </asp:CreateUserWizard>
</asp:Content>
