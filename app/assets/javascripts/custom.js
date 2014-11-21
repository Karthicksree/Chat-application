ready = function(){

$('.calendar').fullCalendar(full_calendar_options);
$('#new_event').click(function(event) {
    FullcalendarEngine.Form.display()
    event.preventDefault();
  });


};

$(document).ready(ready);
$(document).on('page:load', ready);