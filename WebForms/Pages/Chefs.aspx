<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Chefs.aspx.cs" Inherits="WebForms.Pages.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h1>Chefs de la casa</h1>
    <asp:ListView runat="server" ID="myTable" DataSourceID="ListChef">
        <AlternatingItemTemplate>
            <tr style="background-color: #FAFAD2;color: #284775;">
                <td>
                    <asp:Label ID="ApellidoLabel" runat="server" Text='<%# Eval("Apellido") %>' />
                </td>
                <td>
                    <asp:Label ID="NombreLabel" runat="server" Text='<%# Eval("Nombre") %>' />
                </td>
                <td>
                    <asp:Label ID="TelefonoLabel" runat="server" Text='<%# Eval("Telefono") %>' />
                </td>
                <td>
                    <asp:Label ID="EspecialidadLabel" runat="server" Text='<%# Eval("Especialidad") %>' />
                </td>
            </tr>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <tr style="background-color: #FFCC66;color: #000080;">
                <td>
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Actualizar" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancelar" />
                </td>
                <td>
                    <asp:TextBox ID="ApellidoTextBox" runat="server" Text='<%# Bind("Apellido") %>' />
                </td>
                <td>
                    <asp:TextBox ID="NombreTextBox" runat="server" Text='<%# Bind("Nombre") %>' />
                </td>
                <td>
                    <asp:TextBox ID="TelefonoTextBox" runat="server" Text='<%# Bind("Telefono") %>' />
                </td>
                <td>
                    <asp:TextBox ID="EspecialidadTextBox" runat="server" Text='<%# Bind("Especialidad") %>' />
                </td>
            </tr>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                <tr>
                    <td>No se han devuelto datos.</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <tr style="">
                <td>
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insertar" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Borrar" />
                </td>
                <td>
                    <asp:TextBox ID="ApellidoTextBox" runat="server" Text='<%# Bind("Apellido") %>' />
                </td>
                <td>
                    <asp:TextBox ID="NombreTextBox" runat="server" Text='<%# Bind("Nombre") %>' />
                </td>
                <td>
                    <asp:TextBox ID="TelefonoTextBox" runat="server" Text='<%# Bind("Telefono") %>' />
                </td>
                <td>
                    <asp:TextBox ID="EspecialidadTextBox" runat="server" Text='<%# Bind("Especialidad") %>' />
                </td>
            </tr>
        </InsertItemTemplate>
        <ItemTemplate>
            <tr style="background-color: #FFFBD6;color: #333333;">
                <td>
                    <asp:Label ID="ApellidoLabel" runat="server" Text='<%# Eval("Apellido") %>' />
                </td>
                <td>
                    <asp:Label ID="NombreLabel" runat="server" Text='<%# Eval("Nombre") %>' />
                </td>
                <td>
                    <asp:Label ID="TelefonoLabel" runat="server" Text='<%# Eval("Telefono") %>' />
                </td>
                <td>
                    <asp:Label ID="EspecialidadLabel" runat="server" Text='<%# Eval("Especialidad") %>' />
                </td>
            </tr>
        </ItemTemplate>
        <LayoutTemplate>
            <table runat="server" id="myTable">
                <tr runat="server">
                    <td runat="server">
                        <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                            <tr runat="server" style="background-color: #FFFBD6;color: #333333;">
                                <th runat="server">Apellido</th>
                                <th runat="server">Nombre</th>
                                <th runat="server">Telefono</th>
                                <th runat="server">Especialidad</th>
                            </tr>
                            <tr id="itemPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" style="text-align: center;background-color: #FFCC66;font-family: Verdana, Arial, Helvetica, sans-serif;color: #333333;"></td>
                </tr>
            </table>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <tr style="background-color: #FFCC66;font-weight: bold;color: #000080;">
                <td>
                    <asp:Label ID="ApellidoLabel" runat="server" Text='<%# Eval("Apellido") %>' />
                </td>
                <td>
                    <asp:Label ID="NombreLabel" runat="server" Text='<%# Eval("Nombre") %>' />
                </td>
                <td>
                    <asp:Label ID="TelefonoLabel" runat="server" Text='<%# Eval("Telefono") %>' />
                </td>
                <td>
                    <asp:Label ID="EspecialidadLabel" runat="server" Text='<%# Eval("Especialidad") %>' />
                </td>
            </tr>
        </SelectedItemTemplate>

    </asp:ListView>

    <asp:ObjectDataSource ID="ListChef" runat="server" InsertMethod="InsertCheff" SelectMethod="listCheff" TypeName="BBL.ComaEnJoeBLL">
        <InsertParameters>
            <asp:Parameter Name="id" Type="Int32" />
            <asp:Parameter Name="apellido" Type="String" />
            <asp:Parameter Name="nombre" Type="String" />
            <asp:Parameter Name="tel" Type="String" />
            <asp:Parameter Name="especialidad" Type="String" />
            <asp:Parameter Name="platos" Type="Object" />
        </InsertParameters>
    </asp:ObjectDataSource>

</asp:Content>