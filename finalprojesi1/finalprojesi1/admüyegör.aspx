<%@ Page Title="" Language="C#" MasterPageFile="~/AdminLayout.Master" AutoEventWireup="true" CodeBehind="admüyegör.aspx.cs" Inherits="finalprojesi1.admüyegör" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <asp:DataList ID="DataList1" runat="server">
        <ItemTemplate>
            <table class="nav-justified">
                <tr>
                    <td style="width: 150px">Üye E-posta:</td>
                    <td>
                        <asp:TextBox ID="TextBoxEposta" runat="server" ReadOnly="True" Text='<%# Eval("UserMail") %>'></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 150px">Üye Şifresi:</td>
                    <td>
                        <asp:TextBox ID="TextBoxSifre" runat="server" ReadOnly="True" Text='<%# Eval("UserPassword") %>'></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 150px">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 150px">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</form>
</asp:Content>
