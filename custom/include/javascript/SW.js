//SW class contains the custom functions of Soulware customization.

function SW() {
    this.mouseenter_refresh_dashlet_session_vars = function (id) {
        $.ajax({
            type: 'get',
            url: 'index.php',
            async: false,
            data: {
                module: 'Home',
                action: 'DynamicAction',
                DynamicAction: 'displayDashlet',
                session_commit: 1,
                to_pdf: 1,
                id: id
            },
            success: function (answer) {
            },
            error: function (request, status, error) {
            }
        });
    };

    this.mouseenter_refresh_dashlet = function (id) {
        //Set needed global variable to enable/disable this feature.
        if (typeof (window.mouseenter_can_refresh_dashlet) == 'undefined') {
            window.mouseenter_can_refresh_dashlet = true;
        }

        //Bind mouseenter.
        $("#dashlet_entire_" + id).unbind();
        $("#dashlet_entire_" + id).mouseenter(function () {
            if (typeof (window.mouseenter_can_refresh_dashlet) !== 'undefined' &&
                    window.mouseenter_can_refresh_dashlet == false) {
                return;
            }

            window.SW.mouseenter_refresh_dashlet_session_vars(id);
        });

        //Disable this feature if an item of the dashlet list has just clicked.
        $("#dashlet_entire_" + id + " .list.view tr td a").unbind();
        $("#dashlet_entire_" + id + " .list.view tr td a").click(function () {
            window.mouseenter_can_refresh_dashlet = false;
        });

        //Reinit this feature if a pagination button of the dashlet has just clicked.
        $("#dashlet_entire_" + id + " .pagination button").unbind();
        $("#dashlet_entire_" + id + " .pagination button").click(function () {
            setTimeout('window.SW.mouseenter_refresh_dashlet("' + id + '")', 800); //Need a delay, because an ajax request refreshes the list of the dashlet.
        });

        //Reinit this feature if the refresh button of the dashlet has just clicked.
        $("#dashlet_entire_" + id + " .dashletToolSet a:eq(1)").unbind();
        $("#dashlet_entire_" + id + " .dashletToolSet a:eq(1)").click(function () {
            setTimeout('window.SW.mouseenter_refresh_dashlet("' + id + '")', 800); //Need a delay, because an ajax request refreshes the list of the dashlet.
        });
    };
}
