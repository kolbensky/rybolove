//autoBatman
$(document).ready(function(){
  $("#logo").click(function () {
  			$('#batman').css("display","block");
          	$(this).show("slide", { direction: "left" }, 1000);
    });
});