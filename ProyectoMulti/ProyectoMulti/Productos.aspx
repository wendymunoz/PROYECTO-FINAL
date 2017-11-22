<%@ Page Title="" Language="C#" MasterPageFile="~/PagMaestra.Master" AutoEventWireup="true" CodeBehind="Productos.aspx.cs" Inherits="ProyectoMulti.Admin.Productos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h1>Gestion de Productos</h1>

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ProductoId" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <AlternatingRowStyle BackColor="White"></AlternatingRowStyle>
        <Columns>
            <asp:TemplateField ShowHeader="False">
                <EditItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Actualizar"></asp:LinkButton>
                    &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancelar"></asp:LinkButton>
                </EditItemTemplate>
                <ItemTemplate>

                    <a href="EditarProducto.aspx?codigo=<%#Eval("ProductoId")%>">Editar Producto</a>
                    <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Delete" Text="Eliminar"></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="ProductoId" HeaderText="ProductoId" ReadOnly="True" InsertVisible="False" SortExpression="ProductoId"></asp:BoundField>
            <asp:BoundField DataField="CategoriaId" HeaderText="CategoriaId" SortExpression="CategoriaId"></asp:BoundField>
            <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre"></asp:BoundField>
            <asp:BoundField DataField="Stock" HeaderText="Stock" SortExpression="Stock"></asp:BoundField>

            <asp:TemplateField HeaderText="Precio" SortExpression="Precio">
                <EditItemTemplate>
                    <asp:TextBox runat="server" Text='<%# Bind("Precio") %>' ID="TextBox2"></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <span>S/.<%#Eval("Precio")%></span>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Imagen" SortExpression="Imagen" ItemStyle-CssClass="centrado">
                <EditItemTemplate>
                    <asp:TextBox runat="server" Text='<%# Bind("Imagen") %>' ID="TextBox1"></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>

                    <img src="../Imagenes/<%#Eval("Imagen") %>" height="200" width="200" />

                </ItemTemplate>

                <ItemStyle CssClass="centrado"></ItemStyle>
            </asp:TemplateField>
            <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" SortExpression="Descripcion"></asp:BoundField>
        </Columns>
        <FooterStyle BackColor="#CCCC99"></FooterStyle>

        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White"></HeaderStyle>

        <PagerStyle HorizontalAlign="Right" BackColor="#F7F7DE" ForeColor="Black"></PagerStyle>

        <RowStyle BackColor="#F7F7DE"></RowStyle>

        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White"></SelectedRowStyle>

        <SortedAscendingCellStyle BackColor="#FBFBF2"></SortedAscendingCellStyle>

        <SortedAscendingHeaderStyle BackColor="#848384"></SortedAscendingHeaderStyle>

        <SortedDescendingCellStyle BackColor="#EAEAD3"></SortedDescendingCellStyle>

        <SortedDescendingHeaderStyle BackColor="#575357"></SortedDescendingHeaderStyle>
    </asp:GridView>


    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' DeleteCommand="DELETE FROM [Productos] WHERE [ProductoId] = @ProductoId" InsertCommand="INSERT INTO [Productos] ([CategoriaId], [Nombre], [Stock], [Precio], [Imagen], [Descripcion]) VALUES (@CategoriaId, @Nombre, @Stock, @Precio, @Imagen, @Descripcion)" SelectCommand="SELECT * FROM [Productos] ORDER BY [Nombre]" UpdateCommand="UPDATE [Productos] SET [CategoriaId] = @CategoriaId, [Nombre] = @Nombre, [Stock] = @Stock, [Precio] = @Precio, [Imagen] = @Imagen, [Descripcion] = @Descripcion WHERE [ProductoId] = @ProductoId">
        <DeleteParameters>
            <asp:Parameter Name="ProductoId" Type="Int32"></asp:Parameter>
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="CategoriaId" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="Nombre" Type="String"></asp:Parameter>
            <asp:Parameter Name="Stock" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="Precio" Type="Decimal"></asp:Parameter>
            <asp:Parameter Name="Imagen" Type="String"></asp:Parameter>
            <asp:Parameter Name="Descripcion" Type="String"></asp:Parameter>
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="CategoriaId" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="Nombre" Type="String"></asp:Parameter>
            <asp:Parameter Name="Stock" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="Precio" Type="Decimal"></asp:Parameter>
            <asp:Parameter Name="Imagen" Type="String"></asp:Parameter>
            <asp:Parameter Name="Descripcion" Type="String"></asp:Parameter>
            <asp:Parameter Name="ProductoId" Type="Int32"></asp:Parameter>
        </UpdateParameters>
    </asp:SqlDataSource>
    <a href="Administrador.aspx">Regresar a administrador</a>
    <br />
    <a href="RegistrarProducto.aspx">Añadir Nuevo Producto</a>
    <br />

</asp:Content>
