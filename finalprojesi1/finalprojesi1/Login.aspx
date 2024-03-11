<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="finalprojesi1.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        Mail adresi:<asp:TextBox ID="tboxMail" runat="server" TextMode="Email" Width="184px"></asp:TextBox>
    <br />
    <br />
        Şifre:<asp:TextBox ID="tboxPassword" runat="server" TextMode="Password" Width="181px"></asp:TextBox>
    <br />
    <br />
    <br />
    <asp:Button ID="btnLogin" runat="server" Height="50px" Text="Giriş Yap" Width="127px" OnClick="btnLogin_Click" />
</form>
</asp:Content>
