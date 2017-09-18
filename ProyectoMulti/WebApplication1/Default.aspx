<%@ Page Title="" Language="C#" MasterPageFile="~/PortalChistes.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication1.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h1>Chistes Informáticos</h1>

    <asp:DataList ID="DataList1" RepeatColumns="3" CssClass="grilla" runat="server" DataSourceID="XmlDataSource1">
        <ItemTemplate>
            <img src="Imagenes/Chistes/<%#XPath("Ruta") %>" width="300" />

        </ItemTemplate>
    </asp:DataList>

    <asp:XmlDataSource runat="server" ID="XmlDataSource1" DataFile="~/App_Data/ChistesInformaticos.xml">

    </asp:XmlDataSource>
</asp:Content>
