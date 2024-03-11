<%@ Page Title="" Language="C#" MasterPageFile="~/AdminLayout.Master" AutoEventWireup="true" CodeBehind="admüyedüzenle2.aspx.cs" Inherits="finalprojesi1.admüyedüzenle2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<!DOCTYPE html>

<html>
<head>
    <title>Admin Üye Görüntüleme ve Düzenleme</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="UserMail" OnRowUpdating="GridView1_RowUpdating">
                <Columns>
                    <asp:BoundField DataField="UserMail" HeaderText="Kullanıcı Mail" SortExpression="UserMail" ReadOnly="True" />
                    <asp:TemplateField HeaderText="Kullanıcı şifresi">
                        <ItemTemplate>
                            <asp:TextBox ID="txtUserPassword" runat="server" Text='<%# Eval("UserPassword") %>'></asp:TextBox>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Güncelle">
                        <ItemTemplate>
                            <asp:Button ID="btnUpdate" runat="server" Text="Güncelle" CommandName="Update" OnClientClick="return confirm('Şifreyi değiştirmek istediğinize emin misiniz?');" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
</asp:Content>