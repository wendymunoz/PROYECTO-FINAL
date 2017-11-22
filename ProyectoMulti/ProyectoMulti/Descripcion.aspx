<%@ Page Title="" Language="C#" MasterPageFile="~/PagMaestra.Master" AutoEventWireup="true" CodeBehind="Descripcion.aspx.cs" Inherits="ProyectoMulti.Descripcion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="contento">
        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
            <ItemTemplate>
                <h1>Descripción de <%#Eval("Nombre") %></h1>
                <div id="imag">
                    <img src="Imagenes/<%# Eval("Imagen") %>" width="300" />
                </div>
                <div id="desc-p">
                    <h3>Codigo:</h3>
                    <asp:Label ID="ProductoId" runat="server" Text='<%# Eval("ProductoId") %>' />
                    <br />
                    <br />
                    <h3>Nombre:</h3>
                    <asp:Label ID="NombreLabel" runat="server" Text='<%# Eval("Nombre") %>' />
                    <br />
                    <br />
                    <h3>Stock:</h3>
                    <asp:Label ID="StockLabel" runat="server" Text='<%# Eval("Stock") %>' />
                    <br />
                    <br />
                    <h3>Precio:</h3>
                    <span>s/. </span>
                    <asp:Label ID="PrecioLabel" runat="server" Text='<%# Eval("Precio") %>' />
                    <br />
                    <br />
                    <h3>Descripcion:</h3>
                    <asp:Label ID="DescripcionLabel" runat="server" Text='<%# Eval("Descripcion") %>' /><br />
                    <br />
                    
                </div>
            </ItemTemplate>
        </asp:Repeater>
        <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [Productos] WHERE ([ProductoId] = @ProductoId)">
            <SelectParameters>
                <asp:QueryStringParameter QueryStringField="pId" Name="ProductoId" Type="Int32"></asp:QueryStringParameter>
            </SelectParameters>
        </asp:SqlDataSource>


        <h1>Ingresa tu comentario:</h1>
        <div class="mensaje">
            <asp:FormView ID="FormView1" DefaultMode="Insert" runat="server" DataSourceID="SqlDataSource3" OnItemInserting="FormView2_ItemInserting">

                <InsertItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text="Label">  Comentario:</asp:Label>
                    <asp:TextBox TextMode="MultiLine" CssClass="textBox" Width="100%" Height="50px" Text='<%# Bind("Comentario") %>' runat="server" ID="ComentarioTextBox" /><br />
                    <br />
                    <asp:Button runat="server" CssClass="button" Text="Guardar Comentario" CommandName="Insert" ID="InsertButton" CausesValidation="True" />
                </InsertItemTemplate>
            </asp:FormView>
        </div>


        <h1>Comentarios actuales</h1><br />
        <asp:Repeater ID="Repeater2" runat="server" DataSourceID="SqlDataSource3">
            <ItemTemplate>
                <blockquote>
                    <h4><%#Eval("Usuario") %> escribió en <%#Eval("FechaCreacion") %>:</h4>
                    <h4><%#Eval("Comentario") %></h4><br /><br />
                </blockquote>
            </ItemTemplate>
        </asp:Repeater>
        <asp:SqlDataSource runat="server" ID="SqlDataSource3" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' DeleteCommand="DELETE FROM [Comentarios] WHERE [ProductoId] = @ProductoId" InsertCommand="INSERT INTO [Comentarios] ([Usuario], [Comentario], [FechaCreacion], [ProductoId]) VALUES (@Usuario, @Comentario, @FechaCreacion, @ProductoId)" SelectCommand="SELECT * FROM [Comentarios] WHERE ([ProductoId] = @ProductoId) ORDER BY [FechaCreacion] DESC" UpdateCommand="UPDATE [Comentarios] SET [Usuario] = @Usuario, [Comentario] = @Comentario, [FechaCreacion] = @FechaCreacion, [ProductoId] = @ProductoId WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32"></asp:Parameter>
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Usuario" Type="String"></asp:Parameter>
                <asp:Parameter Name="Comentario" Type="String"></asp:Parameter>
                <asp:Parameter Name="FechaCreacion" Type="DateTime"></asp:Parameter>
                <asp:Parameter Name="ProductoId" Type="Int32"></asp:Parameter>
            </InsertParameters>
            <SelectParameters>
                <asp:QueryStringParameter QueryStringField="pId" Name="ProductoId" Type="Int32"></asp:QueryStringParameter>
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="Usuario" Type="String"></asp:Parameter>
                <asp:Parameter Name="Comentario" Type="String"></asp:Parameter>
                <asp:Parameter Name="FechaCreacion" Type="DateTime"></asp:Parameter>
                <asp:Parameter Name="ProductoId" Type="Int32"></asp:Parameter>
                <asp:Parameter Name="Id" Type="Int32"></asp:Parameter>
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>
