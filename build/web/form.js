$(".submit").on("click", function () {
    var fname = $(".fname").val().trim();
    var lname = $(".lname").val().trim();
    var id = $(".id").val().trim();
    if (fname.length > 0 && lname.length > 0 && id.length > 0) {
        $.ajax({
            method: 'POST',
            url: 'SaveStudent.jsp',
            data: {
                fname: fname,
                lname: lname,
                id: id
            },
            success: function (data) {
                alert(data);
                $.get("showusers.jsp", function (d) {
                    $(".tbl").html(d);
                });
                clear();
            }
        });
    } else {
        alert("Please fill all the fields");
        clear();
    }
});

$('.phone').popup({
    inline     : true,
    hoverable  : true,
    delay: {
      show: 300,
      hide: 800
    }
  });

$(".update").on("click", function () {
    var fname = $(".fname").val().trim();
    var lname = $(".lname").val().trim();
    var id = $(".id").val().trim();
    if (fname.length > 0 && lname.length > 0 && id.length > 0) {
        $.ajax({
            method: 'POST',
            url: 'updatestudent.jsp',
            data: {
                fname: fname,
                lname: lname,
                id: id
            },
            success: function (data) {
                alert(data);
                $.get("showusers.jsp", function (d) {
                    $(".tbl").html(d);
                });
                clear();
            }
        });
    } else {
        alert("Please fill all the fields");
        clear();
    }
});
$(document).on("click", ".delete", function () {

    var id = $(this).parent().prev().text();
    $('.ui.mini.modal').modal({
        centered: false,
        closable: false,
        onApprove: function () {
            $.ajax({
                method: 'POST',
                url: 'deletestudent.jsp',
                data: {
                    id: id
                },
                success: function (data) {
                    alert(data);
                    $.get("showusers.jsp", function (d) {
                        $(".tbl").html(d);
                    });
                    clear();
                }
            });
        }
    }).modal('show');

});
$(document).on("click", "tr", function () {
    var details = [];
    $(this).children().each(function () {
        details.push($(this).text());
    });
    $(".fname").val(details[0]);
    $(".lname").val(details[1]);
    $(".id").val(details[2]);
});

$(".ui.form").on("submit", function (event) {
    event.preventDefault();
});

if($('tr').length === 1){
//    $('.tbody').append("<tr><td></td><td>No Records Here</td><td></td><td></td></tr>");
}

function clear() {
    $(".fname").val("");
    $(".lname").val("");
    $(".id").val("");
}