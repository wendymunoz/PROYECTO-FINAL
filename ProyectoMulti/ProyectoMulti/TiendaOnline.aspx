<%@ Page Title="" Language="C#" MasterPageFile="~/PagMaestra.Master" AutoEventWireup="true" CodeBehind="TiendaOnline.aspx.cs" Inherits="ProyectoMulti.TiendaOnline" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <h1 class="titulo"><a href="MostrarProducto.aspx?idC=100">Alimentos</a></h1><br />
    <div class="slider multiple-items">
        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
            <ItemTemplate>
                <div class="cont_ofertas">
                    <img src="Imagenes/<%#Eval("Imagen")%>" width="200" height="200" /><br />
                    <h2 class="nombre"><%#Eval("Nombre") %></h2>
                    <h2 class="nombre">S/.<%#Eval("Precio")%></h2><br /><br /><br />
                </div>
            </ItemTemplate>
        </asp:Repeater>
        <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [Productos] WHERE ([CategoriaId] = @CategoriaId)">
            <SelectParameters>
                <asp:QueryStringParameter QueryStringField="idC" DefaultValue="100" Name="CategoriaId"></asp:QueryStringParameter>
            </SelectParameters>
        </asp:SqlDataSource>
    </div>

    <h1 class="titulo"><a href="MostrarProducto.aspx?idC=101">Vitaminas</a></h1><br />
    <div class="slider multiple-items">
        <asp:Repeater ID="Repeater2" runat="server" DataSourceID="SqlDataSource2">
            <ItemTemplate>
                <div class="cont_ofertas">
                    <img src="Imagenes/<%#Eval("Imagen")%>" width="200" height="200" /><br />
                    <h2 class="nombre"><%#Eval("Nombre") %></h2>
                    <h2 class="nombre">S/.<%#Eval("Precio")%></h2><br /><br /><br />
                </div>
            </ItemTemplate>
        </asp:Repeater>
        <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [Productos] WHERE ([CategoriaId] = @CategoriaId)">
            <SelectParameters>
                <asp:QueryStringParameter QueryStringField="idC" DefaultValue="101" Name="CategoriaId"></asp:QueryStringParameter>
            </SelectParameters>
        </asp:SqlDataSource>
    </div>

    <h1 class="titulo"><a href="MostrarProducto.aspx?idC=102">Bebidas</a></h1><br />
    <div class="slider multiple-items">
        <asp:Repeater ID="Repeater3" runat="server" DataSourceID="SqlDataSource3">
            <ItemTemplate>
                <div class="cont_ofertas">
                    <img src="Imagenes/<%#Eval("Imagen")%>" height="200" /><br />
                    <h2 class="nombre"><%#Eval("Nombre") %></h2>
                    <h2 class="nombre">S/.<%#Eval("Precio")%></h2><br /><br /><br />
                </div>
            </ItemTemplate>
        </asp:Repeater>
        <asp:SqlDataSource runat="server" ID="SqlDataSource3" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [Productos] WHERE ([CategoriaId] = @CategoriaId)">
            <SelectParameters>
                <asp:QueryStringParameter QueryStringField="idC" DefaultValue="102" Name="CategoriaId"></asp:QueryStringParameter>
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
    <h1 class="titulo"><a href="MostrarProducto.aspx?idC=103">Cereales</a></h1><br />
    <div class="slider multiple-items">
        <asp:Repeater ID="Repeater4" runat="server" DataSourceID="SqlDataSource4">
            <ItemTemplate>
                <div class="cont_ofertas">
                    <img src="Imagenes/<%#Eval("Imagen")%>" width="200" height="200" /><br />
                    <h2 class="nombre"><%#Eval("Nombre") %></h2>
                    <h2 class="nombre">S/.<%#Eval("Precio")%></h2><br /><br /><br />
                </div>
            </ItemTemplate>
        </asp:Repeater>
        <asp:SqlDataSource runat="server" ID="SqlDataSource4" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [Productos] WHERE ([CategoriaId] = @CategoriaId)">
            <SelectParameters>
                <asp:QueryStringParameter QueryStringField="idC" DefaultValue="103" Name="CategoriaId"></asp:QueryStringParameter>
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
    <h1 class="titulo"><a href="MostrarProducto.aspx?idC=104">Snacks</a></h1><br />
    <div class="slider multiple-items">
        <asp:Repeater ID="Repeater5" runat="server" DataSourceID="SqlDataSource5">
            <ItemTemplate>
                <div class="cont_ofertas">
                    <img src="Imagenes/<%#Eval("Imagen")%>" width="200" height="200" /><br />
                    <h2 class="nombre"><%#Eval("Nombre") %></h2>
                    <h2 class="nombre">S/.<%#Eval("Precio")%></h2><br /><br /><br />
                </div>
            </ItemTemplate>
        </asp:Repeater>
        <asp:SqlDataSource runat="server" ID="SqlDataSource5" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [Productos] WHERE ([CategoriaId] = @CategoriaId)">
            <SelectParameters>
                <asp:QueryStringParameter QueryStringField="idC" DefaultValue="104" Name="CategoriaId"></asp:QueryStringParameter>
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
    <h1 class="titulo"><a href="MostrarProducto.aspx?idC=105">Comida</a></h1><br />
    <div class="slider multiple-items">
        <asp:Repeater ID="Repeater6" runat="server" DataSourceID="SqlDataSource6">
            <ItemTemplate>
                <div class="cont_ofertas">
                    <img src="Imagenes/<%#Eval("Imagen")%>" width="200" height="200" /><br />
                    <h2 class="nombre"><%#Eval("Nombre") %></h2>
                    <h2 class="nombre">S/.<%#Eval("Precio")%></h2><br /><br /><br />
                </div>
            </ItemTemplate>
        </asp:Repeater>
        <asp:SqlDataSource runat="server" ID="SqlDataSource6" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [Productos] WHERE ([CategoriaId] = @CategoriaId)">
            <SelectParameters>
                <asp:QueryStringParameter QueryStringField="idC" DefaultValue="105" Name="CategoriaId"></asp:QueryStringParameter>
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
    <a href="MostrarProducto.aspx?idC=106"><h1 class="titulo">Repostería</h1></a><br />
    <div class="slider multiple-items">
        <asp:Repeater ID="Repeater7" runat="server" DataSourceID="SqlDataSource7">
            <ItemTemplate>
                <div class="cont_ofertas">
                    <img src="Imagenes/<%#Eval("Imagen")%>" width="200" height="200" /><br />
                    <h2 class="nombre"><%#Eval("Nombre") %></h2>
                    <h2 class="nombre">S/.<%#Eval("Precio")%></h2><br /><br /><br />
                </div>
            </ItemTemplate>
        </asp:Repeater>
        <asp:SqlDataSource runat="server" ID="SqlDataSource7" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [Productos] WHERE ([CategoriaId] = @CategoriaId)">
            <SelectParameters>
                <asp:QueryStringParameter QueryStringField="idC" DefaultValue="106" Name="CategoriaId"></asp:QueryStringParameter>
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
    <script>
        $('.multiple-items').slick({
            infinite: true,
            slidesToShow: 4,
            slidesToScroll: 1,
        });
    </script>
</asp:Content>
