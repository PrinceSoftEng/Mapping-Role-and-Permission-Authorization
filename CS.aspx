<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CS.aspx.cs" Inherits="Mapping_Role_Authorization.CS" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">        
        table {
            border-collapse: collapse;
        }
        table, th, td {
            border: 1px solid black;
            padding: 5px
        }
        tr:nth-child(even) {
            background-color: #f2f2f2
        }

        tr:hover {
            background-color: #d0dd7a
        }

        table th {
            background-color: #b6ff00;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="lblRoles" runat="server">Select Roles:</asp:Label>
        <asp:DropDownList ID="ddlRoles" runat="server" Style="margin: 8px; padding: 5px;" AutoPostBack="true" class="btn btn-primary dropdown-toggle" OnSelectedIndexChanged="ddlRole_OnSelectedIndexChanged">
        </asp:DropDownList>
        <br />
        <hr />
        <asp:GridView ID="gvPermissions" CssClass="myGridStyle" runat="server" AutoGenerateColumns="False" Width="50%">
            <Columns>
                <asp:BoundField DataField="programList" HeaderText="ProgramList" />
                <asp:TemplateField HeaderText="ProgramList" Visible="false">
                    <ItemTemplate>
                        <asp:Label ID="lblProgramList" runat="server" Text='<%# Eval("programId") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Read" ItemStyle-HorizontalAlign="Center">
                    <ItemTemplate>
                        <asp:CheckBox ID="chkRead" runat="server" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Add" ItemStyle-HorizontalAlign="Center">
                    <ItemTemplate>
                        <asp:CheckBox ID="chkAdd" runat="server" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Update" ItemStyle-HorizontalAlign="Center">
                    <ItemTemplate>
                        <asp:CheckBox ID="chkUpdate" runat="server" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Delete" ItemStyle-HorizontalAlign="Center">
                    <ItemTemplate>
                        <asp:CheckBox ID="chkDelete" runat="server" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Export" ItemStyle-HorizontalAlign="Center">
                    <ItemTemplate>
                        <asp:CheckBox ID="chkExport" runat="server" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <br />
        <asp:Button ID="btnUpdate" runat="server" Text="Submit" class="btn btn-primary" OnClick="btnSubmit_Click" />
    </form>
</body>
</html>
