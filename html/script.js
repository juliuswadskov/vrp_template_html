$(function() {
    function display(bool) {
        if (bool) {
            $("#container").show();
        } else {
            $("#container").hide();
        }
    }

    display(false)

    document.onkeyup = function (data) {
        if (data.which == 27) {
            $.post('http://vrp_template/exit', JSON.stringify({}));
            return
        }
    };

    $("#close").click(function () {
        $.post('http://vrp_template/exit', JSON.stringify({}));
        return
    });
});