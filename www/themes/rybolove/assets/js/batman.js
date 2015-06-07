//autoBatman
$(document).ready(function(){
  $(".logo").click(function () {
          $("#batman").toggle("slide", { direction: "left" }, 1000);
    });
});