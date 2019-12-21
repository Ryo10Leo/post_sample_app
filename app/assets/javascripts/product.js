//FORM CLOSE
function newFormClose(){
    $('.js-form-close').on('click',function(){

        if($('#new-form').hasClass("active")){

            $("#new-form").removeClass("active");
            bodyRemoveFixed();

        }
    });
        return false;
};

function editFormClose(){
    $('.js-form-close').on('click',function(){

        if($('#edit-form').hasClass("active")){
            $("#edit-form").removeClass("active");
            bodyRemoveFixed();
        }
    });
    return false;
};

function bodyFixed(){
    scrollPosition = $(window).scrollTop();
    $('body').addClass('fixed').css({'top': -scrollPosition});
};

function bodyRemoveFixed(){
    $('body').removeClass('fixed').css({'top': 0});
    window.scrollTo( 0 , scrollPosition );
};

//MODAL_WINDOW
function modalDisplay(){

    $('.js-modal-open').each(function(){
        $(this).on('click',function(){
            var target = $(this).data('target');
            var modal = document.getElementById(target);
            bodyFixed();
            $(modal).fadeIn();
            return false;
        });
    });
    $('.js-modal-close').on('click',function(){
        $('.js-modal').fadeOut();
        return false;
    });
};

//LOADING
function loading(){
    $(document).ajaxStart(function() {
        $('#loading').fadeIn();
    })
　
    $(document).ajaxStop(function() {
        $('#loading').fadeOut();
    });
};


//Form Image Field Thumb
function formImageThumb(){

    $fileField = $('#file')

    $($fileField).on('change', $fileField, function(e) {
        file = e.target.files[0]
        reader = new FileReader(),
        $preview = $("#img_field");

        reader.onload = (function(file) {
        return function(e) {
            $preview.empty();
            $preview.append($('<img>').attr({
            src: e.target.result,
            width: "100%",
            class: "preview",
            title: file.name
            }));
        };
        })(file);
        reader.readAsDataURL(file);
    });
};

//投稿完了メッセージ
function postSuccessMsg(msg){
    document.getElementById('post-success-msg').innerText = msg;
    setTimeout(function(){
        $('#post-success-msg').addClass('active');
    },800);
    setTimeout(function(){
        $('#post-success-msg').removeClass('active');
    },3000);
};

function postBtnUp(){
    setTimeout(function(){
        $('#new-btn').addClass('up');
    },800);
    setTimeout(function(){
        $('#new-btn').removeClass('up');
    },3000);
};



document.addEventListener('DOMContentLoaded',function(){

    newFormClose();

    modalDisplay();

    loading();

},false);




