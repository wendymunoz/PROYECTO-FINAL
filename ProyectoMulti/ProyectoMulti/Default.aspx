<%@ Page Title="" Language="C#" MasterPageFile="~/PagMaestra.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ProyectoMulti.Default" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <img class="delivery" width="1262" src="Imagenes/delivery.JPG" />
    </div>

    <h1 class="titulo">¡Últimos productos!</h1><br />
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
    </div>
    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [Productos] WHERE ([CategoriaId] = @CategoriaId)">
        <SelectParameters>
            <asp:QueryStringParameter QueryStringField="idC" DefaultValue="101" Name="CategoriaId"></asp:QueryStringParameter>
        </SelectParameters>
    </asp:SqlDataSource>

    <div id="publicidad">
        <asp:AdRotator ID="AdRotator1" runat="server" DataSourceID="XmlDataSource1" />
        <asp:XmlDataSource runat="server" ID="XmlDataSource1" DataFile="~/App_Data/Publicidad.xml"></asp:XmlDataSource>
    </div>
    <div id="correo">
        <p>
            <span class="oferta">% Recibe ofertas en tu correo!</span>
            <span class="txtCorreo">
                <asp:TextBox ID="txtCorreo" CssClass="txtCorreo" runat="server" TextMode="Email"></asp:TextBox>
            </span>
            <span class="txtEnviar">
                <asp:Button ID="Button1" CssClass="button" runat="server" Text="Enviar" OnClick="Button1_Click1" />
            </span> 
        </p>
    </div>
    <script>
        $('.multiple-items').slick({
            infinite: true,
            slidesToShow: 5,
            slidesToScroll: 1,
        });
    </script>
</asp:Content>
