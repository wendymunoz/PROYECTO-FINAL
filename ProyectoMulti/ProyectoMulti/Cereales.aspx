<%@ Page Title="" Language="C#" MasterPageFile="~/PagMaestra.Master" AutoEventWireup="true" CodeBehind="Cereales.aspx.cs" Inherits="ProyectoMulti.Cereales" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    
    <asp:DataList ID="DataList1" CssClass="grilla" RepeatColumns="3" runat="server" DataKeyField="ProductoId" DataSourceID="SqlDataSource1">
        <ItemTemplate>

            <br />
            <h2><%#Eval("Nombre") %></h2>
            <img src="../Imagenes/<%#Eval("Imagen")%>" width="200" />
            </a>
            <br />
            <span><%#Eval("Precio", "{0:c}")%></span>
            <br />

        </ItemTemplate>
    </asp:DataList>

    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [Productos]"></asp:SqlDataSource>
</asp:Content>
