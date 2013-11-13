/*global google, $, console, alert, MAPRAMBLE */
/*jslint browser:true */

(function () {
    'use strict';
    $(document).bind('pageinit', function () {
        var wayPoints, postData = {};
        $("#sortable").sortable();
        $("#sortable").disableSelection();
        $("#sortable").bind("sortstop", function () {
            wayPoints = $("#sortable").sortable("toArray");
            postData.sort = wayPoints;
            postData['_method'] = 'put';
            $.ajax({
                url: window.location.href,
                type: "POST",
                dataType: "text",
                data: postData
            });
            $("#sortable").listview('refresh');
        });
    });
}());