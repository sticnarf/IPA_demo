(function() {
  this.welcome_load = function() {
    $('.flexslider').flexslider({
      animation: "slide"
    });
    return $('#intro').addClass("active-menu").removeAttr("href");
  };

}).call(this);
