<%@ Page UnobtrusiveValidationMode ="None" Title="" Language="C#" MasterPageFile="~/PagMaestra.Master" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="ProyectoMulti.Registro" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource1" DataKeyNames="DNI">
        <ItemTemplate>
            DNI:
            <asp:Label Text='<%# Eval("DNI") %>' runat="server" ID="DNILabel" /><br />
            Nombre:
            <asp:Label Text='<%# Bind("Nombre") %>' runat="server" ID="NombreLabel" /><br />
            Apellido:
            <asp:Label Text='<%# Bind("Apellido") %>' runat="server" ID="ApellidoLabel" /><br />
            Correo:
            <asp:Label Text='<%# Bind("Correo") %>' runat="server" ID="CorreoLabel" /><br />
            Contrasena:
            <asp:Label Text='<%# Bind("Contrasena") %>' runat="server" ID="ContrasenaLabel" /><br />
            Direccion:
            <asp:Label Text='<%# Bind("Direccion") %>' runat="server" ID="DireccionLabel" /><br />
            Telefono:
            <asp:Label Text='<%# Bind("Telefono") %>' runat="server" ID="TelefonoLabel" /><br />
            <asp:LinkButton runat="server" Text="Editar" CommandName="Edit" ID="EditButton" CausesValidation="False" />&nbsp;<asp:LinkButton runat="server" Text="Eliminar" CommandName="Delete" ID="DeleteButton" CausesValidation="False" />&nbsp;<asp:LinkButton runat="server" Text="Nuevo" CommandName="New" ID="NewButton" CausesValidation="False" />
        </ItemTemplate>
    </asp:FormView>

    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' DeleteCommand="DELETE FROM [Usuarios] WHERE [DNI] = @DNI" InsertCommand="INSERT INTO [Usuarios] ([DNI], [Nombre], [Apellido], [Correo], [Contrasena], [Direccion], [Telefono]) VALUES (@DNI, @Nombre, @Apellido, @Correo, @Contrasena, @Direccion, @Telefono)" SelectCommand="SELECT * FROM [Usuarios]" UpdateCommand="UPDATE [Usuarios] SET [Nombre] = @Nombre, [Apellido] = @Apellido, [Correo] = @Correo, [Contrasena] = @Contrasena, [Direccion] = @Direccion, [Telefono] = @Telefono WHERE [DNI] = @DNI">
       
        <InsertParameters>
            <asp:Parameter Name="DNI" Type="String"></asp:Parameter>
            <asp:Parameter Name="Nombre" Type="String"></asp:Parameter>
            <asp:Parameter Name="Apellido" Type="String"></asp:Parameter>
            <asp:Parameter Name="Correo" Type="String"></asp:Parameter>
            <asp:Parameter Name="Contrasena" Type="String"></asp:Parameter>
            <asp:Parameter Name="Direccion" Type="String"></asp:Parameter>
            <asp:Parameter Name="Telefono" Type="String"></asp:Parameter>
        </InsertParameters>
    </asp:SqlDataSource>
</asp:Content>
