function tabQuestions() {
  $('.questions__tab-title').click(function() {
    $('.questions__tab-content').removeClass('--body-active');
    let val = $(this).attr('data-tab');
    $(`.questions__tab-content[data-tab-active=${val}]`).addClass('--body-active');
    $('#questions__tab-division').attr('data-tab-division', val);
    $('#questions__tab-division').removeClass();
    $('#questions__tab-division').addClass(`--${val}-active`);
  });

  $('.questions__tab-questions').click(function() {
    $(this).toggleClass('--questions-open');
  });

};

export { tabQuestions }
