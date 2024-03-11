<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="personeldeneme.aspx.cs" Inherits="finalprojesi1.personeldeneme" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <table class="nav-justified">
    <tr>
        <td style="width: 304px">Adınızı yazınız:</td>
        <td>
            <asp:TextBox ID="TboxIsim" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="width: 304px">Başlangıç saatiniz:</td>
        <td>
            <asp:TextBox ID="TboxBaslangic" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="width: 304px">Bitiş Saatiniz:</td>
        <td>
            <asp:TextBox ID="TboxBitis" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="width: 304px">Tarih:</td>
        <td>
            <asp:TextBox ID="TboxTarih" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="width: 304px">Yaptığınız iş:</td>
        <td>
            <asp:TextBox ID="TboxGorev" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="width: 304px">&nbsp;</td>
        <td>
            <asp:Button ID="BtnSave" runat="server" Height="76px" Text="Kaydet" Width="126px" OnClick="BtnSave_Click" />
        </td>
    </tr>
</table>
    </form>
</asp:Content>
