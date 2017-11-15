<%@ Page Title="" Language="C#" MasterPageFile="~/PagMaestra.Master" AutoEventWireup="true" CodeBehind="Cereales.aspx.cs" Inherits="ProyectoMulti.Cereales" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="contento">
    <asp:DataList ID="DataList1" CssClass="grilla" RepeatColumns="3" runat="server" DataKeyField="ProductoId" DataSourceID="SqlDataSource1">
        <ItemTemplate>
            <div class="fondo">
            <br />
            <img src="../Imagenes/<%#Eval("Imagen")%>" width="200" height="200" />
             <h2><%#Eval("Nombre") %></h2>
            <br />
            <span>S/.<%#Eval("Precio")%></span>
            <br />      
      <asp:Button ID="Button1"  CssClass="button"  runat="server" Text="Ver mas..." />
               </div>
        </ItemTemplate>
    </asp:DataList>

   </div>
    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [Productos] WHERE ([CategoriaId] = @CategoriaId)">
        <SelectParameters>
            <asp:QueryStringParameter QueryStringField="idC" Name="CategoriaId" Type="Int32"></asp:QueryStringParameter>
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
