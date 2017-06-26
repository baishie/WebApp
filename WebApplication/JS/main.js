$(document).ready(function () {
    file_style();
    $('form').bind("submit", function (e) {
        e.preventDefault();
    });
    $(".contact input").keyup(function () {
        var value = $(this).val();
        var reg = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;

        if ($(this).parent().hasClass("email")) {
            if (!reg.test($(this).val())) {
                validate_animation($(this), "error");
                error_message($(this), "error");
            }
            else {
                validate_animation($(this), "success");
                error_message($(this), "success");
            }
            exit;
        }
        if (value.length > 0) {
            validate_animation($(this), "success");
            error_message($(this), "success");
        }
        else if (value.length == 0) {
            validate_animation($(this), "blank");
            error_message($(this), "blank");
        }
        else {
            validate_animation($(this), "error");
            error_message($(this), "error");
        }
    });

    $(".contact input").blur(function () {
        error_message($(this), "blank");
    });
});

function validate_animation(elem, is_valid) {
    if (is_valid != "blank") {
        var elem_class = elem.attr("class").split("-");
        elem.attr("class", elem_class[0] + "-to-" + is_valid);
    }
    else {
        elem.attr("class", "default");
    }
}
//error messages
function error_message(elem, is_valid) {
    if (is_valid == "error") {
        var msg = elem.attr("msg");
        elem.next().text(msg).show();
    }
    else {
        elem.next().hide();
    }
}
