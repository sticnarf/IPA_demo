# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
@users_load = ->
  show_class();
  $("input:radio").change ->
    show_class();

show_class = ->
  if $("input:radio:checked").val() == "1"
    $(".classroom").hide()
  else
    $(".classroom").show()
