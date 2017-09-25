<%@ Page Title="" Language="C#" MasterPageFile="~/PagMaestra.Master" AutoEventWireup="true" CodeBehind="contacto.aspx.cs" Inherits="ProyectoMulti.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    Contáctenos</p>
<p>
    Nombres:
    <asp:TextBox ID="NombreTxt" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Completar este campo" CssClass="alerta" Display="Dynamic"></asp:RequiredFieldValidator>
</p>
<p>
    Apellidos:
    <asp:TextBox ID="ApellidosTxt" runat="server"></asp:TextBox>
</p>
<p>
    Correo:
    <asp:TextBox ID="CorreoTxt" runat="server" OnTextChanged="TextBox4_TextChanged"></asp:TextBox>
</p>
<p>
    Mensaje:</p>
<p>
    <asp:TextBox ID="MensajeTxt" runat="server" Height="74px" Width="180px" OnTextChanged="TextBox3_TextChanged"></asp:TextBox>
</p>
<p>
    <asp:Button ID="Enviarutin" runat="server" Text="Button" />
</p>
</asp:Content>


