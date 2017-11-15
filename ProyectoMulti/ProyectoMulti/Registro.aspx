<%@ Page UnobtrusiveValidationMode ="None" Title="" Language="C#" MasterPageFile="~/PagMaestra.Master" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="ProyectoMulti.Registro" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="registrar">
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="DNI" DataSourceID="SqlDataSource1" DefaultMode="Insert" >
        <InsertItemTemplate>
            DNI:
            <asp:TextBox Text='<%# Bind("DNI") %>' runat="server" ID="DNITextBox" /><br />
            Nombre:
            <asp:TextBox Text='<%# Bind("Nombre") %>' runat="server" ID="NombreTextBox" /><br />
            Apellido:
            <asp:TextBox Text='<%# Bind("Apellido") %>' runat="server" ID="ApellidoTextBox" /><br />
            Correo:
            <asp:TextBox Text='<%# Bind("Correo") %>' runat="server" ID="CorreoTextBox" /><br />
            Contrasena:
            <asp:TextBox Text='<%# Bind("Contrasena") %>' runat="server" ID="ContrasenaTextBox" /><br />
            Direccion:
            <asp:TextBox Text='<%# Bind("Direccion") %>' runat="server" ID="DireccionTextBox" /><br />
            Telefono:
            <asp:TextBox Text='<%# Bind("Telefono") %>' runat="server" ID="TelefonoTextBox" /><br />
            <br />
            <asp:Button runat="server" Text="Registar" CommandName="Insert" ID="InsertButton" CausesValidation="True" />
            <br />
        </InsertItemTemplate>
    
        </asp:FormView>
        </div>
    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' InsertCommand="INSERT INTO Usuarios(DNI, Nombre, Apellido, Correo, Contrasena, Direccion, Telefono) VALUES (@dni, @nombre, @apellido, @correo, @contrasena, @direccion, @telefono)" SelectCommand="SELECT DNI, Nombre, Apellido, Correo, Contrasena, Direccion, Telefono FROM Usuarios">
        <InsertParameters>
            <asp:Parameter Name="dni"></asp:Parameter>
            <asp:Parameter Name="Nombre"></asp:Parameter>
            <asp:Parameter Name="Apellido"></asp:Parameter>
            <asp:Parameter Name="correo"></asp:Parameter>
            <asp:Parameter Name="contrasena"></asp:Parameter>
            <asp:Parameter Name="direccion"></asp:Parameter>
            <asp:Parameter Name="telefono"></asp:Parameter>
        </InsertParameters>
    </asp:SqlDataSource>
</asp:Content>
