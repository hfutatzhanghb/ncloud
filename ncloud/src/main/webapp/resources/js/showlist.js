// JavaScript Document
function navList(id) {
    var $obj = $("#J_navlist"), $item = $("#J_nav_" + id);
    $item.addClass("on").parent().removeClass("none").parent().addClass("selected");
    $obj.find("i").hover(function () {
        $(this).addClass("hover");
    }, function () {
        $(this).removeClass("hover");
    });
    $obj.find("p").hover(function () {
        if ($(this).hasClass("on")) { return; }
        $(this).addClass("hover");
    }, function () {
        if ($(this).hasClass("on")) { return; }
        $(this).removeClass("hover");
    });
    $obj.find("i").click(function () {
        var $div = $(this).parent().siblings(".list-item");
        if ($(this).parent().parent().hasClass("selected")) {
            $div.slideUp(600);
            $(this).parent().parent().removeClass("selected");
        }
        if ($div.is(":hidden")) {
            $("#J_navlist li").find(".list-item").slideUp(600);
            $("#J_navlist li").removeClass("selected");
            $(this).parent().parent().addClass("selected");
            $div.slideDown(600);

        } else {
            $div.slideUp(600);
        }
    });
}