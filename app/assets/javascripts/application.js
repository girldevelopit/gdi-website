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
//= require_tree .

var api_key = "315d52644b474a1e61687d5bb337f62"
var chapter_id = 
var meetup_url = '"https://api.meetup.com/2/events?key=" + api_key + "&sign=true&group_id=" + chapter_id '

$(document).ready(function(){
	$.getJSON(meetup_url).done(function(classes){
		$.each
	})
}