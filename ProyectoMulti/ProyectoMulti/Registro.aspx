<%@ Page UnobtrusiveValidationMode ="None" Title="" Language="C#" MasterPageFile="~/PagMaestra.Master" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="ProyectoMulti.Registro" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Regístrate</h1>
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="DNI" DataSourceID="SqlDataSource1" DefaultMode="Insert" Width="1270px" >
        <InsertItemTemplate>
            <div class="ib">
                <p>
                    Nombre:
                    <asp:TextBox Text='<%# Bind("Nombre") %>' CssClass="textBox" runat="server" ID="NombreTextBox" /><br />
                </p>
                <p>
                    DNI:
                    <asp:TextBox Text='<%# Bind("DNI") %>' CssClass="textBox" runat="server" ID="DNITextBox" /><br />
                </p>
                <p>
                    Telefono:
                    <asp:TextBox Text='<%# Bind("Telefono") %>' CssClass="textBox" runat="server" ID="TelefonoTextBox" /><br />
                </p>
                <p>
                    Correo:
                    <asp:TextBox Text='<%# Bind("Correo") %>' CssClass="textBox" runat="server" ID="CorreoTextBox" /><br />
                </p>
            </div>
            <div class="ib">
                <p>
                    Apellido:
                    <asp:TextBox Text='<%# Bind("Apellido") %>' CssClass="textBox" runat="server" ID="ApellidoTextBox" /><br />
                </p>
                <p>
                    Direccion:
                    <asp:TextBox Text='<%# Bind("Direccion") %>' CssClass="textBox" runat="server" ID="DireccionTextBox" /><br />
                </p>
                <p>
                    Celular:
                    <asp:TextBox Text='<%# Bind("Celular") %>' CssClass="textBox" runat="server" ID="CelularTextBox" /><br />
                </p>
                <p>
                    Contrasena:
                    <asp:TextBox Text='<%# Bind("Contrasena") %>' CssClass="textBox" runat="server" ID="ContrasenaTextBox" /><br />
                </p>
            </div>
            <div class="mensaje">
                <p style="text-align: center">
                <asp:Button runat="server" Text="Registrar" CssClass="button" CommandName="Insert" ID="InsertButton" CausesValidation="True" />
                </p>
            </div>
        </InsertItemTemplate>
    </asp:FormView>
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
