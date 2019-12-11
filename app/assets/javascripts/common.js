document.addEventListener('DOMContentLoaded',function(){
  //page topボタン

  $(function(){
  var topBtn=$('#pageTop');
  topBtn.hide();

  $(window).scroll(function(){
    if($(this).scrollTop()>80　&& $(window).width() > 559){
      topBtn.fadeIn();
    }else{
      topBtn.fadeOut();
    }
  });

  topBtn.click(function(){
    $('body,html').animate({
    scrollTop: 0},500);
    return false;
  });

  });

  // HEADER
  const $m_nav = $(".m-header-nav > nav")
  const $m_sgl_lv = $(".m-header-nav .menu__single")
  const $m_sec_lv = $(".m-header-nav .menu__second-level")

  $('.menu-trigger').on('click',function(){
    if($(this).hasClass('active')){
       $(this).removeClass('active');
       $m_nav.slideUp();
     } else {
       $(this).addClass('active');
       $m_nav.slideDown();
     }
   });

   $('nav li,nav li ul li').not('.menu__single').on('click',function(){
    $m_nav.slideUp();
    $m_sec_lv.slideUp();
     if($('.menu-trigger').hasClass('active')){
       $('.menu-trigger').removeClass('active');
     }
   });
   let second_level_opened = false;
   function status (){
    second_level_opened = true;
   };
   $m_sgl_lv.on('click',function(){
     if($('.menu-trigger').hasClass('active') && second_level_opened === false){
      $m_sec_lv.slideDown(400,status());
     }else{
      $m_sec_lv.slideUp(400);
      second_level_opened = false;
     };
   });

   var startPos = 0,winScrollTop = 0;
  $(window).on('scroll',function(){
    winScrollTop = $(this).scrollTop();
    if (winScrollTop >= startPos) {
        $(".m-header-nav .page-header").addClass('hide');
    } else {
        $(".m-header-nav .page-header").removeClass('hide');
    }
    startPos = winScrollTop;
});

},false);

