<%@ Page Title="" Language="C#" MasterPageFile="~/AdminLayout.Master" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="mesajlar.aspx.cs" Inherits="finalprojesi1.mesajlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <table class="nav-justified">
            <tr>
                <td>MESAJLAR</td>
            </tr>
            <tr>
                <td>
                    <asp:DataList ID="DataList1" runat="server">
                        <ItemTemplate>
                            <table class="nav-justified">
                                <tr>
                                    <td>Gönderen kişi:<asp:Label ID="Label1" runat="server" Text='<%# Eval("ContacName") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Gönderen kişinen mail adresi:<asp:Label ID="Label2" runat="server" Text='<%# Eval("ContacMail") %>'></asp:Label>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td>Mesaj:</td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:TextBox ID="tboxMesaj" runat="server" Height="113px" ReadOnly="True" Text='<%# Eval("ContacMessage") %>' TextMode="MultiLine" Width="231px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>
                                 <a href="Mesajsilme.aspx?id=<%# Eval("ContacID") %>"><div class="btn btn-danger">Sil</div></a>
                                        <br />
                                    </td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                </tr>
                            </table>
                        </ItemTemplate>
                    </asp:DataList>
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
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</asp:Content>
