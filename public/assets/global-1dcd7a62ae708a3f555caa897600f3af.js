(function() {
  var global_load, ready;

  global_load = function() {};

  ready = function() {
    global_load();
    return eval($("body").data("controller") + "_load()");
  };

  $(document).ready(ready);

  $(document).on('page:load', ready);

}).call(this);
