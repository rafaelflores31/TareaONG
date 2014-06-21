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
//= require_self
//= require jquery_ujs
//= require turbolinks
//= require_tree .

$( document ).ready(function() {
    $( document ).on( "click", ".link-nursery", function() {
  	name = $(this).data("name");
  	alert("Por ver la informacion de " + name);
	});

    $(document).on("ajax:success","#form_ajax_search", function(e,data,status,xhr){
		//alert("NOTHING!");
		//alert(data.name);
		$(".js_nursery_list").html(data);
	});

	$(document).on("ajax:success","#new_purpose",function(e,data,status,xhr){
		$(".js_nursery_purposes").prepend(data);
		$("#purpose_description").val("");
	});

	$(document).on("ajax:error","#new_purpose",function(e, xhr, status, error){
		alert("Something Wrong: " + xhr.responseText);
	});


});