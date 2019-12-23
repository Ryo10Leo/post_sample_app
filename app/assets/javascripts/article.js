//FORM CLOSE
function newFormClose(){
    $('.js-form-close').on('click',function(){

        if($('#new-form').hasClass("active")){

            $("#new-form").removeClass("active");

        }
    });
        return false;
};

function editFormClose(){
    $('.js-form-close').on('click',function(){

        if($('#edit-form').hasClass("active")){
            $("#edit-form").removeClass("active");
        }
    });
    return false;
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