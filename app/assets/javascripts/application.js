// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap
//= require turbolinks
//= require_tree .
//= require jquery.validate
//= require jquery.validate.additional-methods



 $(document).ready(function () {
	console.log("in log")
	$(".valform").validate({
	debug: true,
	rules: {
	"restaurant[name]": {required: true,  minlength: 4},
	"restaurant[phonenumber]": {required: true,  minlength: 4},
	"restaurant[address]": {required: true,  minlength: 4},
	"restaurant[description]": {required: true}

		}
	});
});


$(document).ready(function(){
  var rateHtml =  $("#ratings").html();
  $('.rate_it_btn').click(function(e){
    e.preventDefault();
    url = $(this).attr('href');

    $.ajax({
      type: "GET",
      url: url,
      success: function(data){         
         $("#ratings").html("<div class=alert-success>Saved!</div>");
      }
    });
  })
  
  
  
    $('.unrate_it_btn').click(function(e){
    e.preventDefault();
    url = $(this).attr('href');

    $.ajax({
      type: "GET",
      url: url,
      success: function(data){         
         $("#ratings").html("<div class=alert-success>Removed!</div>");
         $("#ratings").html(rateHtml);
      }
    });
  })

















})
