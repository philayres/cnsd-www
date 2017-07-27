$('html').ready(function(){
   function setup_cookie_alert(){
    if(document.cookie === "giv_cookie_alert_confirmed=done") {
      $('#giv_cookie_alert').hide();
    }
     
    $('#giv_cookie_alert').on('closed.bs.alert', function () {
      document.cookie = "giv_cookie_alert_confirmed=done";
    });
  
  
  }
  
  setup_cookie_alert();
  
  $('#link-sw-dev').on('click', function(){
    $('a.click-service[href="#sw-dev"]').click();
  });

  
  $('a.click-service[data-toggle="tab"]').click(function(ev){    
      $('body').scrollTo($('#service-container'));
  });
  
  if(location.hash) {
    $('ul.nav-tabs a[href="'+location.hash+'"]').click();
  }

});