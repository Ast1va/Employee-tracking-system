<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="ListPersonel.aspx.cs" Inherits="finalprojesi1.ListPersonel" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <asp:DataList ID="DataList1" runat="server">
            <ItemTemplate>
                <table class="nav-justified">
                    <tr>
                        <td>Çalışan adı:<asp:Label ID="Label1" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>Başlangıç saati:<asp:Label ID="Label2" runat="server" Text='<%# Eval("StartTime") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="height: 19px">Bitiş Saati:<asp:Label ID="Label3" runat="server" Text='<%# Eval("FinishTime") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>Tarih:<asp:Label ID="Label4" runat="server" Text='<%# Eval("Date") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>Yapılan iş:<asp:Label ID="Label5" runat="server" Text='<%# Eval("Task") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </form>
</asp:Content>
