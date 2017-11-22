<%@ Page UnobtrusiveValidationMode="None" Title="" Language="C#" MasterPageFile="~/PagMaestra.Master" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="ProyectoMulti.Registro" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Regístrate</h1>
    <asp:FormView ID="FormView1" runat="server" DefaultMode="Insert" DataKeyNames="DNI" DataSourceID="SqlDataSource1">
        <InsertItemTemplate>
            <div class="ib">
                <asp:Label ID="Label2" runat="server" Text="Label">Nombre:</asp:Label>
                <asp:TextBox Text='<%# Bind("Nombre") %>' CssClass="textBox" runat="server" ID="NombreTextBox" /><br /><br />
                <asp:Label ID="Label1" runat="server" Text="Label">DNI:</asp:Label>
                <asp:TextBox Text='<%# Bind("DNI") %>' CssClass="textBox" TextMode="Number" runat="server" ID="DNITextBox" /><br /><br />
                <asp:Label ID="Label7" runat="server" Text="Label">Telefono:</asp:Label>
                <asp:TextBox Text='<%# Bind("Telefono") %>' CssClass="textBox" TextMode="Number" runat="server" ID="TelefonoTextBox" /><br /><br />
                <asp:Label ID="Label4" runat="server" Text="Label">Correo:</asp:Label>
                <asp:TextBox Text='<%# Bind("Correo") %>' CssClass="textBox" TextMode="Email" runat="server" ID="CorreoTextBox" /><br /><br />
            </div>
            <div class="ib">
                <asp:Label ID="Label3" runat="server" Text="Label">Apellido:</asp:Label>
                <asp:TextBox Text='<%# Bind("Apellido") %>' CssClass="textBox" runat="server" ID="ApellidoTextBox" /><br /><br />
                <asp:Label ID="Label6" runat="server" Text="Label">Direccion:</asp:Label>
                <asp:TextBox Text='<%# Bind("Direccion") %>' CssClass="textBox" runat="server" ID="DireccionTextBox" /><br /><br />
                <asp:Label ID="Label8" runat="server" Text="Label">Celular:</asp:Label>
                <asp:TextBox Text='<%# Bind("Celular") %>' CssClass="textBox" TextMode="Number" runat="server" ID="CelularTextBox" /><br /><br />
                <asp:Label ID="Label5" runat="server" Text="Label">Contraseña:</asp:Label>
                <asp:TextBox Text='<%# Bind("Contrasena") %>' CssClass="textBox" TextMode="Password" runat="server" ID="ContrasenaTextBox" /><br /><br />
            </div>
            <div style="padding-left:28%">
                <asp:LinkButton runat="server" Text="Guardar" CssClass="button" CommandName="Insert" ID="InsertButton" CausesValidation="True" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:LinkButton runat="server" Text="Cancel" CssClass="button" CommandName="Cancel" ID="InsertCancelButton" CausesValidation="False" /><br /><br />
            </div>
        </InsertItemTemplate>
    </asp:FormView>

    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' DeleteCommand="DELETE FROM [Usuarios] WHERE [DNI] = @DNI" InsertCommand="INSERT INTO [Usuarios] ([DNI], [Nombre], [Apellido], [Correo], [Contrasena], [Direccion], [Telefono]) VALUES (@DNI, @Nombre, @Apellido, @Correo, @Contrasena, @Direccion, @Telefono)" SelectCommand="SELECT * FROM [Usuarios]" UpdateCommand="UPDATE [Usuarios] SET [Nombre] = @Nombre, [Apellido] = @Apellido, [Correo] = @Correo, [Contrasena] = @Contrasena, [Direccion] = @Direccion, [Telefono] = @Telefono WHERE [DNI] = @DNI">
        <DeleteParameters>
            <asp:Parameter Name="DNI" Type="String"></asp:Parameter>
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="DNI" Type="String"></asp:Parameter>
            <asp:Parameter Name="Nombre" Type="String"></asp:Parameter>
            <asp:Parameter Name="Apellido" Type="String"></asp:Parameter>
            <asp:Parameter Name="Correo" Type="String"></asp:Parameter>
            <asp:Parameter Name="Contrasena" Type="String"></asp:Parameter>
            <asp:Parameter Name="Direccion" Type="String"></asp:Parameter>
            <asp:Parameter Name="Telefono" Type="String"></asp:Parameter>
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Nombre" Type="String"></asp:Parameter>
            <asp:Parameter Name="Apellido" Type="String"></asp:Parameter>
            <asp:Parameter Name="Correo" Type="String"></asp:Parameter>
            <asp:Parameter Name="Contrasena" Type="String"></asp:Parameter>
            <asp:Parameter Name="Direccion" Type="String"></asp:Parameter>
            <asp:Parameter Name="Telefono" Type="String"></asp:Parameter>
            <asp:Parameter Name="DNI" Type="String"></asp:Parameter>
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
