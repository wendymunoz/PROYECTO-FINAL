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
                    <asp:Button ID="Button1" CssClass="button" runat="server" Text="Agregar a Carrito" OnClick="Button1_Click" />
                </div>
            </ItemTemplate>
        </asp:Repeater>
        <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [Productos] WHERE ([ProductoId] = @ProductoId)">
            <SelectParameters>
                <asp:QueryStringParameter QueryStringField="pId" Name="ProductoId" Type="Int32"></asp:QueryStringParameter>
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
    <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [Productos] WHERE ([CategoriaId] = @CategoriaId)">
        <SelectParameters>
            <asp:QueryStringParameter QueryStringField="idC" Name="CategoriaId" Type="Int32"></asp:QueryStringParameter>
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' 
        InsertCommand="INSERT INTO [Carrito] ( [Fecha], [Subtotal], [IGV], [Total], [DNIcliente]) VALUES ( @Fecha, @Subtotal, @IGV, @Total, @DNIcliente)">
        
        <InsertParameters>
         
            <asp:Parameter Name="Fecha" Type="DateTime"></asp:Parameter>
            <asp:Parameter Name="Subtotal" Type="Decimal"></asp:Parameter>
            <asp:Parameter Name="IGV" Type="Decimal"></asp:Parameter>
            <asp:Parameter Name="Total" Type="Decimal"></asp:Parameter>
            <asp:Parameter Name="DNIcliente" Type="String"></asp:Parameter>
        </InsertParameters>
        
    </asp:SqlDataSource>
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
</asp:Content>
