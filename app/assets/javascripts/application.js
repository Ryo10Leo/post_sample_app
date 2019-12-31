// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require rails-ujs
//= require jquery.waypoints
//= require jquery-ui
//= require tag-it
//= require moment
//= require fullcalendar


$(function () {
    var m = moment();
    $(document).ready(function(){
        var cals = $('#calendar .tabs');
        cals.each(function(){
            $(this).fullCalendar({
                defaultDate: m,
                header: {left:'',center:'title',right:''},
                googleCalendarApiKey:'AIzaSyBiyLCIK9UChMn7_8BvlrF8PrZSooSPy-A',
                contentHeight: 350,
                firstDay: 1,
                timeFormat: 'H:mm',
                eventSources: [
                    {
                        googleCalendarId: 'ckioggav4lai220ebdgjv2r6g0@group.calendar.google.com'
                    },
                    {
                        googleCalendarId: 'rmd87t10bvnh7bvqdpfshk4uj4@group.calendar.google.com',
                        rendering: 'background',
                        color:     '#5e4037'
                    }
                ]
            });
            m = m.add(1, 'month');
        });
    });
});

$(function () {
$(document).ready(function(){
            $('#calendar-mobile').fullCalendar({
                googleCalendarApiKey:'AIzaSyBiyLCIK9UChMn7_8BvlrF8PrZSooSPy-A',
                contentHeight: 250,
                buttonText: {
                    prev: '<',
                    next: '>'
                },
                firstDay: 1,
                timeFormat: 'H:mm',
                eventSources: [
                {
                    googleCalendarId: 'ckioggav4lai220ebdgjv2r6g0@group.calendar.google.com'
                },
                {
                    googleCalendarId: 'rmd87t10bvnh7bvqdpfshk4uj4@group.calendar.google.com',
                    rendering: 'background',
                    color:     '#5e4037'
                }
                ]

            });
        });
});