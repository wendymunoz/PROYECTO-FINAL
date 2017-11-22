<%@ Page Title="" Language="C#" MasterPageFile="~/PagMaestra.Master" AutoEventWireup="true" CodeBehind="Carrito.aspx.cs" Inherits="ProyectoMulti.Carrito" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <br />
        IGV:
    <br />
        <asp:TextBox runat="server"></asp:TextBox>
    <br />
        Subtotal:
    <br />
        <asp:TextBox runat="server"></asp:TextBox>
    <br />
        Total:
    <br />
        <asp:TextBox runat="server"></asp:TextBox>
    <br />
    
    <asp:Button ID="Button1" runat="server" Text="Pagar" />
    <br />
</asp:Content>
