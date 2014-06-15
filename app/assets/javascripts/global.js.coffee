global_load = ->


ready = ->
  global_load()
  eval($("body").data("controller")+"_load()");

$(document).ready(ready);
$(document).on('page:load', ready);
