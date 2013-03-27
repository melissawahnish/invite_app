jQuery ->
  $('#event_date').datepicker
    dateFormat: 'yy-mm-dd'

  $('#event_start_time').timepicker({ 
  		'scrollDefaultNow': true 
  		'step': 15 
  		'forceRoundTime': true
  });  

  $('#event_end_time').timepicker({ 
  		'scrollDefaultNow': true 
  		'step': 15 
  		'forceRoundTime': true
  }); 