<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Search.aspx.cs" Inherits="Search" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:DataList ID="DataList1" runat="server">
             <ItemTemplate>
        title:       <asp:Label ID="makerLabel" runat="server"
                            Text='<%# Eval("title") %>' /><br />
        author:     <asp:Label ID="modelLabel" runat="server"
                            Text='<%# Eval("author") %>' /><br />
        price:      <asp:Label ID="cityLabel" runat="server"
                            Text='<%# Eval("price") %>' /><br />
        Image:      <asp:Label ID="ImageLabel" runat="server"
                            Text='<%# Eval("Image") %>'/><br />
        description: <asp:Label ID="descriptionLabel" runat="server"
                            Text='<%# Eval("description") %>' /><br />

             
                   <br />
    </ItemTemplate>
        </asp:DataList>
        <div>
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>Choose Area</asp:ListItem>
            <asp:ListItem>Western Suburbs</asp:ListItem>
            <asp:ListItem>Central Suburbs</asp:ListItem>
            <asp:ListItem>South Mumbai</asp:ListItem>
            <asp:ListItem>Thane</asp:ListItem>
            <asp:ListItem>Navi Mumbai</asp:ListItem>
            </asp:DropDownList></div>
        <div>
        <asp:DropDownList ID="DropDownList2" runat="server">
            <asp:ListItem>Choose Category</asp:ListItem>
            <asp:ListItem>Fiction</asp:ListItem>
            <asp:ListItem>Educational</asp:ListItem>
            <asp:ListItem>Children</asp:ListItem>
            <asp:ListItem>Philosophy</asp:ListItem>
            <asp:ListItem>Business & Management</asp:ListItem>
            </asp:DropDownList></div>
        
        <div>
        <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" /></div>
    </div>
    </form>
</body>
</html>
