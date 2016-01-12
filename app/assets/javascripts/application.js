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
//= require bootsy
//= require react
//= require react_ujs
//= require components
//= require bootstrap-sprockets
//= require bootstrap-datepicker
//= require blueimp-gallery
//= require blueimp-gallery-fullscreen
//= require blueimp-gallery-indicator
//= require blueimp-gallery-video
//= require blueimp-gallery-youtube
//= require jquery.blueimp-gallery
//= require bootstrap-image-gallery

//= require_tree .

function chooseCountry(country) {

	var country_id = $('#country').val();
	
	$.ajax({
        type: 'GET',
        url: 'get_cities',
        data: {'country': country_id},
        success: function(data){
        	$('#city').empty();
        	$('#city').append("<option value=>Choose the city</option>");
            $.each(JSON.parse(data), function(index, el) {
       			//alert(el);
				$('#city').append("<option value=" + el.id + ">" + el.city +"</option>");
        	});
        	//alert( "Load was performed." );    
        },
        dataType: 'html'
    });
   
};



$(document).ready(function () {

	$('#myCarousel').carousel();

    $('.datepicker').datepicker();

    
 	
});