// page_teacher.php

$("#account_settings").click(function () {
  window.location.href = "page_account_settings.php";
});

$("#classroom-students").click(function(){
  window.location.href = "page_teacher_view_students.php";
});

$("#create-room-btn").click(
  function(){
    $.post(
      "zerver_page_create_change_room_param.php",
      {
        outcome: 0
      },
      function(){
        window.location.href = "page_create_change_room.php";
      }
    );
  }
);

$("#change-room-btn").click(
  function(){
    $.post(
      "zerver_page_create_change_room_param.php",
      {
        outcome: 1
      },
      function(){
        window.location.href = "page_create_change_room.php";
      }
    );
  }
);

$("#logout-btn").click(
  function(){
    window.location.href = "index.php";
  }
);

function page_start() {
  $.get("zerver_in_no_company.php", function (data) {
    if (data == "0") {
      window.location.href = "page_teacher_company.php";
    }
  });
}
page_start();
