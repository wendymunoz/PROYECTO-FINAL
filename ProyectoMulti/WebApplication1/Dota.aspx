<%@ Page Title="" Language="C#" MasterPageFile="~/PortalChistes.Master" AutoEventWireup="true" CodeBehind="Dota.aspx.cs" Inherits="WebApplication1.Dota" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h1>Chistes Dota</h1>

    <asp:DataList ID="DataList1" RepeatColumns="2" CssClass="grilla" runat="server" DataSourceID="XmlDataSource1">
        <ItemTemplate>
            <img src="Imagenes/Dota/<%#XPath("Ruta") %>" width="500" />

        </ItemTemplate>
    </asp:DataList>

    <asp:XmlDataSource runat="server" ID="XmlDataSource1" DataFile="~/App_Data/ChistesDota.xml">

    </asp:XmlDataSource>

</asp:Content>
