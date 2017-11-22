<%@ Page UnobtrusiveValidationMode="None" Title="" Language="C#" MasterPageFile="~/PagMaestra.Master" AutoEventWireup="true" CodeBehind="contacto.aspx.cs" Inherits="ProyectoMulti.WebForm1" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Contáctenos</h1>
        <div class="ib">
        <p>
            Nombres:
            <asp:TextBox ID="NombreTxt" CssClass="textBox" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Completar este campo" ControlToValidate="NombreTxt" CssClass="alerta" Display="Dynamic">Completar este campo</asp:RequiredFieldValidator>
        </p>
       <p>
            Teléfono:
            <asp:TextBox ID="TelfTxt" CssClass="textBox" runat="server" TextMode="Number"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="TelfTxt" CssClass="alerta" ErrorMessage="Número de 7 dígitos" Operator="LessThanEqual" Type="Integer" ValueToCompare="9999999" Display="Dynamic">Número de 7 dígitos</asp:CompareValidator>
            <asp:CompareValidator ID="CompareValidator4" runat="server" ControlToValidate="TelfTxt" CssClass="alerta" ErrorMessage="Número de 7 dígitos" Operator="GreaterThanEqual" Type="Integer" ValueToCompare="1000000" Display="Dynamic">Número de 7 dígitos</asp:CompareValidator>
        </p>
        <p>
            Correo:
            <asp:TextBox ID="CorreoTxt" CssClass="textBox" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="CorreoTxt" CssClass="alerta" Display="Dynamic" ErrorMessage="Completar este campo">Completar este campo</asp:RequiredFieldValidator>
        </p>
        
        
    </div>
    <div class="ib">
         <p>
            Apellidos:
            <asp:TextBox ID="ApellidosTxt" CssClass="textBox" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="ApellidosTxt" CssClass="alerta" Display="Dynamic" ErrorMessage="Completar este campo">Completar este campo</asp:RequiredFieldValidator>
        </p>
        <p>
            Celular:
            <asp:TextBox ID="CelTxt" CssClass="textBox" runat="server" TextMode="Number"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="CelTxt" CssClass="alerta" Display="Dynamic" ErrorMessage="Complete este campo">Complete este campo</asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="CelTxt" CssClass="alerta" ErrorMessage="Número de 9 dígitos" Operator="GreaterThanEqual" Type="Integer" ValueToCompare="100000000" Display="Dynamic">Número de 9 dígitos</asp:CompareValidator>
            <asp:CompareValidator ID="CompareValidator3" runat="server" ControlToValidate="CelTxt" CssClass="alerta" ErrorMessage="Número de 9 dígitos" Operator="LessThanEqual" Type="Integer" ValueToCompare="999999999" Display="Dynamic">Número de 9 dígitos</asp:CompareValidator>
        </p>
        <p>
            País:
            <asp:TextBox ID="Pais" CssClass="textBox" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="Pais" CssClass="alerta" Display="Dynamic" ErrorMessage="Completar este campo">Completar este campo</asp:RequiredFieldValidator>
        </p>
    </div>
    <div class="ib-ib" style="text-align: left">
        <img src="Imagenes/email.png" style="float: left; width:257px; height: 183px;" />
    </div>
    <div class="mensaje">
        <p>
            Asunto:
            <asp:TextBox ID="AsuntoTxt" CssClass="textBox" runat="server" Width="671px"></asp:TextBox>
        </p>
        <p>
            <span style="vertical-align:top">Mensaje:</span>
            <asp:TextBox ID="MensajeTxt" runat="server" CssClass="textBox" Height="150px" TextMode="MultiLine" OnTextChanged="MensajeTxt_TextChanged" Width="671px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="MensajeTxt" CssClass="alerta" Display="Dynamic" ErrorMessage="Completar este campo">Completar este campo</asp:RequiredFieldValidator>
        </p>
        <p style="text-align: center">
            <asp:Button ID="EnviarBtt" CssClass="button" runat="server" Text="Enviar" OnClick="EnviarBtt_Click" />
        </p>
    </div>
</asp:Content>


