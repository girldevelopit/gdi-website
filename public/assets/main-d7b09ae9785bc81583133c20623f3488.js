//Accordion for mobile chapter index
$(function() {
  $('#state-list .accordion').on('click', 'h2', function() {
  	console.log(this);
      $(this).parent().removeClass("hidden").siblings().addClass("hidden");
  });
});
