//Accordion for mobile chapter index
$(document).ready(function($) {
    
  var allPanels = $('.accordion > dd').hide();
    
  $('.accordion > dt > h2').click(function() {
    $this = $(this);
      $target =  $this.parent().next();

      if(!$target.hasClass('active')){
         allPanels.removeClass('active').slideUp();
         $target.addClass('active').slideDown();
      }
    return false;
  });

})(jQuery);

