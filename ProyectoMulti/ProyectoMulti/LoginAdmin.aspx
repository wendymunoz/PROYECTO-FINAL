<%@ Page Title="" Language="C#" MasterPageFile="~/PagMaestra.Master" AutoEventWireup="true" CodeBehind="LoginAdmin.aspx.cs" Inherits="ProyectoMulti.LoginAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="ib" style="width:60%">
        <h1>Iniciar Sesion Admin</h1><br />
        <asp:Label ID="Label1" runat="server" Text="Label"> Correo :</asp:Label><asp:TextBox ID="txtCorreo" TextMode="Email" CssClass="textBox" runat="server"></asp:TextBox><br /><br />
        <asp:Label ID="Label2" runat="server" Text="Label">Contraseña :</asp:Label><asp:TextBox ID="txtPass" TextMode="Password" CssClass="textBox" runat="server"></asp:TextBox><br /><br />
        <asp:Button ID="Button1" runat="server" CssClass="button" Text="Iniciar" OnClick="Button1_Click" />
    </div>
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="consulta2" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:ControlParameter ControlID="txtCorreo" PropertyName="Text" Name="usu" Type="String"></asp:ControlParameter>
            <asp:ControlParameter ControlID="txtPass" PropertyName="Text" Name="pass" Type="String"></asp:ControlParameter>
        </SelectParameters>
    </asp:SqlDataSource>

</asp:Content>
