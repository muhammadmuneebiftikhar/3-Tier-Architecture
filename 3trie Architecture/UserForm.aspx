<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserForm.aspx.cs" Inherits="_3trie_Architecture.UserForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <table class="table  text-center">
            <tr>
                <th>
                    <label class="form-control text-right">ID</label>
                </th>
                <td>
                    <asp:TextBox ID="TxtID" runat="server" CssClass="form-control"></asp:TextBox>

                </td>
                <td>
                    <asp:Button ID="btnSearch" runat="server" Text="Search" CssClass="btn btn-default text-center" OnClick="btnSearch_Click" />
                </td>
            </tr>
            <tr>
                <th>
                    <label class="form-control text-right">Name</label>
                </th>
                <td colspan="2">
                    <asp:TextBox ID="txtName" runat="server" class="form-control"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <th>
                    <label class="form-control text-right">Email</label>
                </th>
                <td colspan="2">
                    <asp:TextBox ID="txtEmail" runat="server" class="form-control"></asp:TextBox>
                </td>
            </tr>
            <tr class="text-center">
                <td>
                    <asp:Button ID="btnSave" runat="server" Text="ADD" OnClick="btnSave_Click" CssClass="btn btn-primary text-center"/>
                </td>
                <td>
                    <asp:Button ID="btnDelete" runat="server" Text="Delete" OnClick="btnDelete_Click" CssClass="btn btn-danger text-center"/>
                </td>
                <td>
                    <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" CssClass="btn btn-info text-center"/>
                </td>
            </tr>
        </table>
        <div style="padding-top:50px">
            <asp:GridView ID="GridView1" runat="server" CssClass="text-center" Width="100%">
            </asp:GridView>
        </div>
    </form>

    <script src="Scripts/jquery-3.4.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
</body>
</html>
