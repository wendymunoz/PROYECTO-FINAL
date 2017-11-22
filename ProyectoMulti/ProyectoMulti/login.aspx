<%@ Page UnobtrusiveValidationMode="None" Title="" Language="C#" MasterPageFile="~/PagMaestra.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="ProyectoMulti.login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h1>Inicia Sesión</h1>
    <asp:Label ID="Label1" runat="server" Text="Label">Correo Electrónico: </asp:Label><asp:TextBox ID="EmailTextBox" CssClass="textBox" runat="server"></asp:TextBox><br /><br />
    <asp:Label ID="Label2" runat="server" Text="Label">Contraseña: </asp:Label><asp:TextBox ID="ContraTextBox" TextMode="Password" CssClass="textBox" runat="server"></asp:TextBox><br /><br />
    <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
    <asp:Button ID="Button1" runat="server" OnClick="OnClick1_Button" CssClass="button" Text="Iniciar" />

    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="consulta" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:ControlParameter ControlID="EmailTextBox" PropertyName="Text" Name="usu" Type="String"></asp:ControlParameter>
            <asp:ControlParameter ControlID="ContraTextBox" PropertyName="Text" Name="pas" Type="String"></asp:ControlParameter>
        </SelectParameters>
    </asp:SqlDataSource>

</asp:Content>
