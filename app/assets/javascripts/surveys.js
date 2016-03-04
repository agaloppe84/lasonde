$(function(){
  $(".bc").on("click", function(e){
    $('.active-bc').toggleClass('active-bc');
    $(this).toggleClass('active-bc');
    $('.bc-content').addClass('hidden');
    $($(this).data("target")).removeClass('hidden');
  });

  var hash = window.location.hash;
  $('.bc a[data-target="'+hash+'"]').click()

  $(".item:first").addClass('active');
});
