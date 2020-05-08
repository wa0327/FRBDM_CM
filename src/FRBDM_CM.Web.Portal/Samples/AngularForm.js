'use strict';

angular
    .module('ViewApp', ['webapi'])
    .controller('ViewController', function ($scope, $http) {
        $scope.showDialog = function () {
            $('#dialog').dialog({
                modal: true,
                resizable: false,
                buttons: {
                    '確定': function () {
                        $(this).dialog('close');
                    }
                }
            });
        };

        $http.get('/api/hello-world').then(function (res) {
            $scope.message = res.data;
        });
    });
