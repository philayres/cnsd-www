$('html').ready(function(){
  var bh = $('body').height();
  var hh = $('html').height();
  if(bh < hh) $('body').height(hh);
  
  
});