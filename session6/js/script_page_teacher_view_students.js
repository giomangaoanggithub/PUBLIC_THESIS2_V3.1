$("#return-btn").click(function () {
  window.location.href = "page_teacher.php";
});

// CHECK IF IMAGE EXISTS
function checkIfImageExists(url, callback) {
  const img = new Image();
  img.src = url;

  if (img.complete) {
    callback(true);
  } else {
    img.onload = () => {
      callback(true);
    };

    img.onerror = () => {
      callback(false);
    };
  }
}

function load_data() {
  $("#tbody-student-applicants").empty();
  $.get("zerver_page_teacher_view_students_fetch.php", function (data) {
    data = JSON.parse(data);
    table_contents = "";
    for (x = 0; x < data.length; x++) {
      if (data[x]["t_s_connection"] == "0") {
        file_ext = [".jpg", ".png", ".svg", ".webp", ".bmp", ".tif", ".tiff"];
        for (i = 0; i < file_ext.length; i++) {
          checkIfImageExists(
            data[x]["profile_pic_address"] + file_ext[i],
            (exists) => {
              // alert(array[3] + file_ext[i]);
              if (exists) {
                table_contents +=
                  '<tr><td><img src="' +
                  data[x]["profile_pic_address"] +
                  file_ext[i] +
                  '" class="img-fluid"></td><td>';
                i += file_ext.length;
              }
            }
          );
        }
        table_contents +=
          data[x]["username"] +
          "</td><td><button>✔</button><button>✖</button></td></tr>";
      }
    }
    $("#tbody-student-applicants").append(table_contents);
  });

  $("#tbody-classroom").empty();
  $.get("zerver_page_teacher_view_students_fetch.php", function (data) {
    data = JSON.parse(data);
    table_contents = "";
    for (x = 0; x < data.length; x++) {
      if (data[x]["t_s_connection"] == "1") {
        file_ext = [".jpg", ".png", ".svg", ".webp", ".bmp", ".tif", ".tiff"];
        for (i = 0; i < file_ext.length; i++) {
          checkIfImageExists(
            data[x]["profile_pic_address"] + file_ext[i],
            (exists) => {
              // alert(array[3] + file_ext[i]);
              if (exists) {
                table_contents +=
                  '<tr><td><img src="' +
                  data[x]["profile_pic_address"] +
                  file_ext[i] +
                  '" class="img-fluid"></td><td>';
                i += file_ext.length;
              }
            }
          );
        }
        table_contents +=
          data[x]["username"] +
          "</td><td>"+data[x]["email"]+"</td><td><button>VIEW</button></td></tr>";
      }
    }
    $("#tbody-classroom").append(table_contents);
  });
}

$(window).on("load", load_data());
