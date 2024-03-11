<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="İletişimsayfası.aspx.cs" Inherits="finalprojesi1.İletişimsayfası" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        Adınız:<asp:TextBox ID="tboxName" runat="server" ToolTip="İsminizi giriniz"></asp:TextBox>
    <br />
    <br />
        Mail adresiniz:<asp:TextBox ID="tboxMail" runat="server" ToolTip="Mail adresinizi giriniz"></asp:TextBox>
    <br />
        <br />
        Mesajınızı aşağı yazınız:<br />
    <asp:TextBox ID="tboxMessage" runat="server" Height="298px" TextMode="MultiLine" ToolTip="Mesajını yazınız" Width="565px"></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="btnSend" runat="server" Height="55px" Text="Mesajı yolla" Width="198px" OnClick="btnSend_Click" />
</form>
</asp:Content>
