//Accordion for mobile chapter index
$(function() {
  $('#state-list .accordion').on('click', 'h2', function() {
  	console.log(this);
      $(this).parent().removeClass("hidden").siblings().addClass("hidden");
  });
});
$(function(){
	$('.collapsible h3').each(function() {
  
	    var $this = $(this);

	    // create unique id for a11y relationship
	    
	    var id = 'collapsible-' + $this.index();

	    // wrap the content and make it focusable

	    $this.nextUntil('h3').wrapAll('<div id="'+ id +'" aria-hidden="true">');
	    var panel = $this.next();

	    // Add the button inside the <h2> so both the heading and button semanics are read
	    
	    $this.wrapInner('<button aria-expanded="false" aria-controls="'+ id +'">');
	    var button = $this.children('button');

	    // Toggle the state properties
	    
	    button.on('click', function() {
	      var state = $(this).attr('aria-expanded') === 'false' ? true : false;
	      $(this).attr('aria-expanded', state);
	      panel.attr('aria-hidden', !state);
	      if(state){
			    $(this).parent().find(".chevron-closed").removeClass("chevron-closed").addClass("chevron-opened");
			}else{
			    $(this).parent().find(".chevron-opened").removeClass("chevron-opened").addClass("chevron-closed");   
			}
	    });

	});
});