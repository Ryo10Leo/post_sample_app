$(function () {
    var m = moment();
    $(document).ready(function(){
        var cals = $('#calendar .tabs');
        cals.each(function(){
            $(this).fullCalendar({
                defaultDate: m,
                header: {left:'',center:'title',right:''},
                googleCalendarApiKey: gon.google_calender_API_key,
                contentHeight: 350,
                firstDay: 1,
                timeFormat: 'H:mm',
                eventSources: [
                    {
                        googleCalendarId: gon.calender_id_1,
                        rendering: 'background',
                        color:     '#3a87ad'
                    },
                    {
                        googleCalendarId: gon.calender_id_2,
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
                googleCalendarApiKey: gon.google_calender_API_key,
                contentHeight: 250,
                buttonText: {
                    prev: '<',
                    next: '>',
                    today: '今日'
                },
                firstDay: 1,
                timeFormat: 'H:mm',
                eventSources: [
                {
                    googleCalendarId: gon.calender_id_1,
                    rendering: 'background',
                    color:     '#3a87ad'
                },
                {
                    googleCalendarId: gon.calender_id_2,
                    rendering: 'background',
                    color:     '#5e4037'
                }
                ]

            });
        });
});