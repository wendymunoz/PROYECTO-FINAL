<%@ Page Title="" Language="C#" MasterPageFile="~/PagMaestra.Master" AutoEventWireup="true" CodeBehind="Descripcion.aspx.cs" Inherits="ProyectoMulti.Descripcion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="contento">
        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
            <ItemTemplate>
                <h1>Descripción de <%#Eval("Nombre") %></h1>
                <div id="imag">
                    <img src="Imagenes/<%# Eval("Imagen") %>" width="300" />
                </div>
                <div id="desc-p">
                    <h3>Nombre:</h3>
                    <asp:Label ID="NombreLabel" runat="server" Text='<%# Eval("Nombre") %>' />
                    <br /><br />
                    <h3>Stock:</h3>
                    <asp:Label ID="StockLabel" runat="server" Text='<%# Eval("Stock") %>' />
                    <br /><br />
                    <h3>Precio:</h3>
                    <span>s/. </span><asp:Label ID="PrecioLabel" runat="server" Text='<%# Eval("Precio") %>' />
                    <br /><br />
                    <h3>Descripcion:</h3>
                    <asp:Label ID="DescripcionLabel" runat="server" Text='<%# Eval("Descripcion") %>' /><br /><br />
                    <asp:Button ID="Button1" CssClass="button" runat="server" Text="Agregar a Carrito" />
                </div>
            </ItemTemplate>
        </asp:Repeater>
        <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [Productos] WHERE ([ProductoId] = @ProductoId)">
            <SelectParameters>
                <asp:QueryStringParameter QueryStringField="pId" Name="ProductoId" Type="Int32"></asp:QueryStringParameter>
            </SelectParameters>
        </asp:SqlDataSource>
    </div>

</asp:Content>
