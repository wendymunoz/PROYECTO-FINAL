<%@ Page UnobtrusiveValidationMode="None" Title="" Language="C#" MasterPageFile="~/PagMaestra.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="ProyectoMulti.login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h1>Inicia Sesión</h1>
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label1" runat="server" Text="Label">Correo Electrónico: </asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="EmailTextBox" TextMode="Email" CssClass="textBox" runat="server" Width="246px"></asp:TextBox><br /><br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label2" runat="server" Text="Label">Contraseña: </asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="ContraTextBox" TextMode="Password" CssClass="textBox" runat="server" Width="270px"></asp:TextBox><br /><br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" OnClick="OnClick1_Button" CssClass="button" Text="Iniciar" />
   
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="consulta" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:ControlParameter ControlID="EmailTextBox" PropertyName="Text" Name="correo" Type="String"></asp:ControlParameter>
            <asp:ControlParameter ControlID="ContraTextBox" PropertyName="Text" Name="contra" Type="String"></asp:ControlParameter>
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
