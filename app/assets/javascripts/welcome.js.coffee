# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
load = ->
  $('.flexslider').flexslider({
    animation: "slide"
  });
  $('#intro').addClass("active-menu").removeAttr("href");

$(document).ready(load);
$(document).on('page:load', load);
