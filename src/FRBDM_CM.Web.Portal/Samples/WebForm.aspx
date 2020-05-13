<%@ Page Title="WebForm樣本" Language="C#" MasterPageFile="~/_Form.master" CodeBehind="WebForm.aspx.cs" Inherits="FRBDM_CM.Web.Portal.Samples.WebForm" %>

<asp:Content ContentPlaceHolderID="head" runat="server">
    <link href="WebForm.min.css" rel="stylesheet" />
</asp:Content>

<asp:Content ContentPlaceHolderID="form" runat="server">
    <asp:ListView runat="server" ID="listView" OnItemDataBound="listView_ItemDataBound">
        <LayoutTemplate>
            <table>
                <tr runat="server" id="itemPlaceholder"></tr>
            </table>
        </LayoutTemplate>
        <ItemTemplate>
            <tr>
                <td>
                    <asp:Label runat="server" Text='<%# Eval("Text") %>' />
                </td>
                <td>
                    <asp:DropDownList runat="server" ID="ddl"></asp:DropDownList>
                </td>
            </tr>
        </ItemTemplate>
    </asp:ListView>
</asp:Content>

<asp:Content ContentPlaceHolderID="scripts" runat="server">
</asp:Content>
