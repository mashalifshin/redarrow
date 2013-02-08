
$(document).ready(function(){
  $('img[data-mouseover].thumbnail').hover(function() {
    $(this).data('_mouseover', $(this).attr('src'));
    $(this).attr('src', $(this).data('mouseover'));
  },function() {
    $(this).attr('src', $(this).data('_mouseover'));
  });
});