<%@ Page Title="" Language="C#" MasterPageFile="~/PortalChistes.Master" AutoEventWireup="true" CodeBehind="Aleatorio.aspx.cs" Inherits="WebApplication1.Aleatorio" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h1>Chiste Aleatorio</h1>

    <div style="text-align:center;">
    <asp:AdRotator ID="AdRotator1" runat="server" DataSourceID="XmlDataSource1" />
    </div>
    
    <asp:XmlDataSource runat="server" ID="XmlDataSource1" DataFile="~/App_Data/ChisteAleatorio.xml"></asp:XmlDataSource>
</asp:Content>
