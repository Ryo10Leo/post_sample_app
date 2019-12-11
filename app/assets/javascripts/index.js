document.addEventListener('DOMContentLoaded',function(){

  //TOP_NEWS_effect

   const TOP_NEWS = $(".news-1,.news-2,.news-3");
  $('#top-posts').waypoint(function(direction){
    if($(window).width() > 559){
      if (direction === 'down') {
        TOP_NEWS.each(function(){
          $(this).addClass('active');
        });
      }


      if($('.news-1').hasClass('active')){
        $('.news-1').delay(900).queue(function(next) {
          $(this).addClass('move');
          next();
        });
      }

      if($('.news-3').hasClass('active')){
        $('.news-3').delay(900).queue(function(next) {
          $(this).addClass('move');
          next();
        });
      }
    }
  },{offset: '70%'});


  //CONCEPT_image_box_efeect
  const $IMAGES = $(".img-1,.img-2,.img-3");
  $IMAGES.waypoint(function(direction){
    var activePoint = $(this.element);
    if (direction === 'down') {
        activePoint.addClass('active');
    }

  },{offset: '70%'});

  //CONCEPT_h1_effect
  const $CONCEPT_H1 = $(".content-1 h1,.content-2 h1,.content-3 h1")
  $CONCEPT_H1.waypoint(function(direction){
    var activePoint = $(this.element);
    if (direction === 'down') {
        activePoint.addClass('active');
    }
},{offset : '70%'});
  //CONCEPT_p_effect
  const $CONCEPT_P = $(".content-1 p,.content-2 p,.content-3 p")
  $CONCEPT_P.waypoint(function(direction){
  var activePoint = $(this.element);
  if (direction === 'down') {
      activePoint.addClass('active');
  }
},{offset : '70%'});


//HOME_STYLE_images_effect
$(window).on('scroll',function (){
    var elemPos = $('.grid').offset().top;
    var scroll = $(window).scrollTop();
    var windowHeight = $(window).height();
    if(scroll > elemPos - windowHeight + 200){
      $('.home-img-fade-up').each(function(i){
        var $this = $(this);
        $this.delay(i*400).queue(function(next){
          $this.addClass('effect-scroll');
          next();
        });
      });
    }
});

//HOME_ACCESS_map_effect
$('#map').waypoint(function(direction){
  var activePoint = $(this.element);
  //scroll down
  if (direction === 'down') {
      activePoint.addClass('active');
  }
},{offset: '70%'});

//CONTENTS_FADE_EFFECTS
$(function(){
  　$(window).scroll(function (){
      $('.effect-fade-up,.effect-fade-down').not('.home.effct-fade-up').each(function(){
          var elemPos = $(this).offset().top;
          var scroll = $(window).scrollTop();
          var windowHeight = $(window).height();
          if (scroll > elemPos - windowHeight + 200){
              $(this).addClass('effect-scroll');
          }
      });
  　});
  });

},false);