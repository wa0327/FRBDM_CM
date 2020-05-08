<%@ Page Title="Angular樣本" Language="C#" MasterPageFile="~/_Form.master" CodeBehind="AngularForm.aspx.cs" Inherits="System.Web.UI.Page" %>

<asp:Content ContentPlaceHolderID="head" runat="server">
    <link href="/jquery-ui-1.12.1/jquery-ui.min.css" rel="stylesheet" />
    <link href="/bootstrap-3.4.1/css/bootstrap.min.css" rel="stylesheet" />
    <link href="/bootstrap-3.4.1/css/bootstrap-theme.min.css" rel="stylesheet" />
    <%--專屬的css可直接寫在這，亦可抽出為獨立css檔。--%>
    <link href="AngularForm.min.css" rel="stylesheet" />
</asp:Content>

<asp:Content ContentPlaceHolderID="form" runat="server">
    <div class="container" ng-app="ViewApp" ng-controller="ViewController">
        <div class="row">
            <div class="col-md-6 col-md-offset-3">
                <div class="panel panel-default">
                    <div class="panel-body">
                        <div>
                            <span class="glyphicon glyphicon-user"></span>
                            {{message}}
                            <div class="glyphicon glyphicon-time"></div>
                        </div>                        
                    </div>
                </div>
                <button type="button" ng-click="showDialog()">Show Dialog</button>
            </div>
        </div>
        <div id="dialog" title="你好" style="display: none;">
            請按「確定」後繼續。
        </div>
    </div>
</asp:Content>

<asp:Content ContentPlaceHolderID="scripts" runat="server">
    <script src="/jquery-ui-1.12.1/jquery-ui.min.js"></script>
    <%--專屬的js可直接寫在這，亦可抽出為獨立js檔。--%>
    <script src="AngularForm.js"></script>
</asp:Content>
