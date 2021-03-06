﻿<%@ Page Title="" Language="C#" MasterPageFile="~/PagMaestra.Master" AutoEventWireup="true" CodeBehind="EditarProducto.aspx.cs" Inherits="ProyectoMulti.Admin.EditarPlato" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h1>Editar Producto</h1>
    <asp:FormView ID="FormView1" DefaultMode="Edit" runat="server" DataKeyNames="ProductoId" DataSourceID="SqlDataSource1" OnItemUpdated="FormView1_ItemUpdated">
        <EditItemTemplate>
            ProductoId:
            <asp:Label Text='<%# Eval("ProductoId") %>' runat="server" ID="ProductoIdLabel1" /><br />
            CategoriaId:
            <asp:TextBox Text='<%# Bind("CategoriaId") %>' runat="server" ID="CategoriaIdTextBox" /><br />
            Nombre:
            <asp:TextBox Text='<%# Bind("Nombre") %>' runat="server" ID="NombreTextBox" /><br />
            Stock:
            <asp:TextBox Text='<%# Bind("Stock") %>' runat="server" ID="StockTextBox" /><br />
            Precio:
            <asp:TextBox Text='<%# Bind("Precio") %>' runat="server" ID="PrecioTextBox" /><br />
            Imagen:
            <asp:TextBox Text='<%# Bind("Imagen") %>' runat="server" ID="ImagenTextBox" /><br />
            Descripcion:
            <asp:TextBox Text='<%# Bind("Descripcion") %>' runat="server" ID="DescripcionTextBox" /><br />
            <asp:LinkButton runat="server" Text="Actualizar" CommandName="Update" ID="UpdateButton" CausesValidation="True" />&nbsp;<asp:LinkButton runat="server" Text="Cancelar" CommandName="Cancel" ID="UpdateCancelButton" CausesValidation="False" />
        </EditItemTemplate>
        
    </asp:FormView>
    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' DeleteCommand="DELETE FROM [Productos] WHERE [ProductoId] = @ProductoId" InsertCommand="INSERT INTO [Productos] ([CategoriaId], [Nombre], [Stock], [Precio], [Imagen], [Descripcion]) VALUES (@CategoriaId, @Nombre, @Stock, @Precio, @Imagen, @Descripcion)" SelectCommand="SELECT * FROM [Productos] ORDER BY [Nombre]" UpdateCommand="UPDATE [Productos] SET [CategoriaId] = @CategoriaId, [Nombre] = @Nombre, [Stock] = @Stock, [Precio] = @Precio, [Imagen] = @Imagen, [Descripcion] = @Descripcion WHERE [ProductoId] = @ProductoId">
        <DeleteParameters>
            <asp:Parameter Name="ProductoId" Type="Int32"></asp:Parameter>
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="CategoriaId" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="Nombre" Type="String"></asp:Parameter>
            <asp:Parameter Name="Stock" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="Precio" Type="Decimal"></asp:Parameter>
            <asp:Parameter Name="Imagen" Type="String"></asp:Parameter>
            <asp:Parameter Name="Descripcion" Type="String"></asp:Parameter>
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="CategoriaId" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="Nombre" Type="String"></asp:Parameter>
            <asp:Parameter Name="Stock" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="Precio" Type="Decimal"></asp:Parameter>
            <asp:Parameter Name="Imagen" Type="String"></asp:Parameter>
            <asp:Parameter Name="Descripcion" Type="String"></asp:Parameter>
            <asp:Parameter Name="ProductoId" Type="Int32"></asp:Parameter>
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
