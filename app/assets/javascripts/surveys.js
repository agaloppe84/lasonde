$(function(){
  $(".item:first").addClass('active');
});
$(function(){
  $(".bc").on("click", function(e){
    $('.active').toggleClass('active');
    $(this).toggleClass('active');
    $('.bc-content').addClass('hidden');
    $($(this).data("target")).removeClass('hidden');
  });

  var hash = window.location.hash;
  $('.bc a[data-target="'+hash+'"]').click()
});
