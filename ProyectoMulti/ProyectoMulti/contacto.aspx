<%@ Page UnobtrusiveValidationMode="None" Title="" Language="C#" MasterPageFile="~/PagMaestra.Master" AutoEventWireup="true" CodeBehind="contacto.aspx.cs" Inherits="ProyectoMulti.WebForm1" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<h2>Contáctenos</h2>
<p>
    Nombres:
    <asp:TextBox ID="NombreTxt" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Completar este campo" ControlToValidate="NombreTxt" CssClass="alerta" Display="Dynamic">Completar este campo</asp:RequiredFieldValidator>
</p>
<p>
    Apellidos:
    <asp:TextBox ID="ApellidosTxt" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="ApellidosTxt" CssClass="alerta" Display="Dynamic" ErrorMessage="Completar este campo">Completar este campo</asp:RequiredFieldValidator>
</p>
<p>
    Teléfono:
    <asp:TextBox ID="TelfTxt" runat="server" TextMode="Number"></asp:TextBox>
    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="TelfTxt" CssClass="alerta" ErrorMessage="Número de 7 dígitos" Operator="LessThanEqual" Type="Integer" ValueToCompare="9999999" Display="Dynamic">Número de 7 dígitos</asp:CompareValidator>
    <asp:CompareValidator ID="CompareValidator4" runat="server" ControlToValidate="TelfTxt" CssClass="alerta" ErrorMessage="Número de 7 dígitos" Operator="GreaterThanEqual" Type="Integer" ValueToCompare="1000000" Display="Dynamic">Número de 7 dígitos</asp:CompareValidator>
</p>
<p>
    Celular:
    <asp:TextBox ID="CelTxt" runat="server" TextMode="Number"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="CelTxt" CssClass="alerta" Display="Dynamic" ErrorMessage="Complete este campo">Complete este campo</asp:RequiredFieldValidator>
    <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="CelTxt" CssClass="alerta" ErrorMessage="Número de 9 dígitos" Operator="GreaterThanEqual" Type="Integer" ValueToCompare="100000000" Display="Dynamic">Número de 9 dígitos</asp:CompareValidator>
    <asp:CompareValidator ID="CompareValidator3" runat="server" ControlToValidate="CelTxt" CssClass="alerta" ErrorMessage="Número de 9 dígitos" Operator="LessThanEqual" Type="Integer" ValueToCompare="999999999" Display="Dynamic">Número de 9 dígitos</asp:CompareValidator>
</p>
<p>
    Correo:
    <asp:TextBox ID="CorreoTxt" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="CorreoTxt" CssClass="alerta" Display="Dynamic" ErrorMessage="Completar este campo">Completar este campo</asp:RequiredFieldValidator>
</p>
<p>
    Asunto:
    <asp:TextBox ID="AsuntoTxt" runat="server"></asp:TextBox>
</p>
<p>
    Mensaje:</p>
<p>
    <asp:TextBox ID="MensajeTxt" runat="server" Height="74px" Width="348px" CssClass="alerta" OnTextChanged="MensajeTxt_TextChanged"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="MensajeTxt" CssClass="alerta" Display="Dynamic" ErrorMessage="Completar este campo">Completar este campo</asp:RequiredFieldValidator>
</p>
<p>
    <asp:Button ID="EnviarBtt" runat="server" Text="Enviar" />
</p>
</asp:Content>


