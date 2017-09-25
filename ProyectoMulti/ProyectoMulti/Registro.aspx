<%@ Page UnobtrusiveValidationMode ="None" Title="" Language="C#" MasterPageFile="~/PagMaestra.Master" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="ProyectoMulti.Registro" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p style="height: 26px">
        Mis Datos personales</p>
    <p>Email</p>
    <asp:TextBox ID="email" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="email" CssClass="alerta" ErrorMessage="Completar este campo">Completar este campo</asp:RequiredFieldValidator>
    <p>Tipo de Cliente</p>
    <p>
  <input type="radio" name="TipoCli" value="empresa"> Empresa<br>
  <input type="radio" name="TipoCli" value="particular"> Particular<br>
  
    </p>
    Nombre&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Apellido<br />
    <asp:TextBox ID="Nombre" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="Apellido" runat="server"></asp:TextBox>
    <br />
    <br />
    Direccion de envio<br />
    <asp:TextBox ID="Direccion" runat="server" Width="277px"></asp:TextBox>
    <br />
    <br />
    Telefono de contacto<br />
    <asp:TextBox ID="Telefono" runat="server" Width="143px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="Telefono" CssClass="alerta" ErrorMessage="Completar este campo">Completar este campo</asp:RequiredFieldValidator>
    <br />
    <br />
    Nueva cuenta<br />
    <br />
    Contraseña&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />
    <asp:TextBox ID="pass" runat="server" Width="138px" TextMode="Password"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="pass" CssClass="alerta" ErrorMessage="Completar este campo">Completar este campo</asp:RequiredFieldValidator>
    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="confirmarpass" ControlToValidate="pass" CssClass="alerta" Display="Dynamic" ErrorMessage="Contraseña no coincide" Operator="GreaterThanEqual">Contraseña no coincide</asp:CompareValidator>
    <br />
    <br />
    Confirmar contraseña<br />
    <asp:TextBox ID="confirmarpass" runat="server" TextMode="Password" Width="140px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="confirmarpass" CssClass="alerta" ErrorMessage="Completar este campo">Completar este campo</asp:RequiredFieldValidator>
    <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToCompare="pass" ControlToValidate="confirmarpass" CssClass="alerta" Display="Dynamic" ErrorMessage="Contraseña no coincide" Operator="GreaterThanEqual">Contraseña no coincide</asp:CompareValidator>
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" Text="Registrarse" Height="34px" Width="114px" />
    <br />
    <br />
    <br />

</asp:Content>
