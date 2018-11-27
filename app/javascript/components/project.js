
function tabProject() {
  $('.project__tab-title').click(function() {
    $('.project__tab-content').removeClass('--body-active');
    let val = $(this).attr('data-tab');
    $(`.project__tab-content[data-tab-active=${val}]`).addClass('--body-active');
    $('.project__tab-division').attr('data-tab-division', val);
    $('.project__tab-division').removeClass('--second-active');
    $('.project__tab-division[data-tab-division=tab-2]').addClass('--second-active');
  });
}

export { tabProject }
