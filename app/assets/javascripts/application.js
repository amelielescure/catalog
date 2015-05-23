// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require jquery.flexslider
//= require_tree .

$(".flexslider").flexslider({
    animation: 'fade',
    controlsContainer: '.flexslider'
  });

function filter_by(tags){
  $.ajax({
    type: 'post',
    url: "/filter_products",
    data:{tags: tags},
    success: function(html){
      $("#content_list").html(html);
      $(".loader").hide();
    }
  });
}

function sort_by(type){
  params = "?type="+type;

  $.ajax({
    type: 'post',
    url: "/filter_products",
    data:{type: type},
    success: function(html){
      $("#content_list").html(html);
      $(".loader").hide();
    }
  });
}
