<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="finalprojesi1.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        Mail adresiniz:<asp:TextBox ID="tboxMail" runat="server" TextMode="Email" Width="184px"></asp:TextBox>
    <br />
    <br />
        Şifre belirleyiniz:<asp:TextBox ID="tboxPassword" runat="server" TextMode="Password" Width="181px"></asp:TextBox>
    <br />
    <br />
    <br />
    <asp:Button ID="btnRegister" runat="server" Height="50px" OnClick="btnRegister_Click" Text="Kayıt ol" Width="127px" />
</form>
</asp:Content>
