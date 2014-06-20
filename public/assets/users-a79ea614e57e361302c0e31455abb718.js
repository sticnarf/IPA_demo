(function() {
  var show_class;

  this.users_load = function() {
    $('#members').addClass("active-menu").removeAttr("href");
    show_class();
    return $("input:radio").change(function() {
      return show_class();
    });
  };

  show_class = function() {
    if ($("input:radio:checked").val() === "1") {
      return $(".classroom").hide();
    } else {
      return $(".classroom").show();
    }
  };

}).call(this);
