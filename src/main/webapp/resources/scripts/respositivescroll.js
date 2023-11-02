console.clear();
let box = $('.main-box-cart')
let boxHeight = box.height();
let quickMenu = $('.order');
let quickMenuHeight = quickMenu.height();
const DURATION = 1000;

$(window).resize(function(){
    boxHeight = box.height();
    boxOffsetTop = box.offset().top;
    quickMenuHeight = quickMenu.height();
})

$(window).scroll(function() {
    let scrollTop = $(this).scrollTop();
    let point;
    let endPoint = boxHeight - quickMenuHeight;
    if ( scrollTop < boxOffsetTop ) {
        point = 0;
    } else if ( scrollTop > endPoint ) {
        point = endPoint;
    } else {
        point = scrollTop - boxOffsetTop; // 따라다니는 영역에서 우측 최상단에 위치
    }
    quickMenu.stop().animate({top: point}, DURATION);
});

