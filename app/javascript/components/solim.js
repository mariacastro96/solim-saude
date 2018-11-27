
function tabAnimation() {
  $('.solim__tab-title').click(function() {
    console.log('clicked')
    $('.solim__tab-content').removeClass('--body-active');
    let val = $(this).attr('data-tab');
    $(`.solim__tab-content[data-tab-active=${val}]`).addClass('--body-active');
    $('.solim__tab-division').attr('data-tab-division', val);
    $('.solim__tab-division').removeClass('--second-active');
    $('.solim__tab-division[data-tab-division=tab-2]').addClass('--second-active');
  });
}

export { tabAnimation }
