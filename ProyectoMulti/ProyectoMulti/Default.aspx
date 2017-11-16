<%@ Page Title="" Language="C#" MasterPageFile="~/PagMaestra.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ProyectoMulti.Default" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <img class="delivery" src="Imagenes/delivery.JPG" />
    </div>  

     <div id="correo">
                <p>
                    <span class="oferta">% Recibe ofertas en tu correo!</span>
                    <span class="txtCorreo">
                        <asp:TextBox ID="txtCorreo" CssClass="txtCorreo" runat="server" TextMode="Email"></asp:TextBox></span>
                    <span class="txtEnviar">
                        <asp:Button ID="Button1" CssClass="txtEnviar" runat="server" Text="Enviar" /></span>
                </p>
            </div>

</asp:Content>
    