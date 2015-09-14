/**
 * Created by cassie on 14/12/15.
 * 导航点击切换下拉效果
 */
$(document).ready(function(){
    $('.nav-li').click(function(){
        $('.nav-head').css('background-color','#42403d');
        $('.nav-li').removeClass('nav-active');
        $(this).addClass('nav-active');
        $('.nav-body').css('display','none');
        $('.down').css('display','none');
        $(this).children('.nav-body').css('display','block');
        $(this).find('.down').css('display','block');
    })
})
