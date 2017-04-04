$(function() {
  function buildHTML(message) {
    var html = `<span>
                  <div class="messages__name">${message.name}</div>
                </span>
                <span>
                  <div class="messages__time">${message.created_at}</div>
                </span>
                <span>
                  <div class="messages__body">${message.body}</div>
                </span>`;
    return html;
  }

  $('.js-form').on('submit', function(e){
    e.preventDefault();
    e.stopPropagation();
    var formData = new FormData ($(this).get(0));
    var path_name = location.pathname;
    $.ajax ({
      type:'POST',
      url: path_name,
      data: formData,
      processData: false,
      contentType: false,
      dataType: 'json'
    })
    .done(function(data) {
      var html = buildHTML(data);
      $('.chat-body').append(html);
      $('.chat-body').delay(100).animate({
      scrollTop: $(document).height()
    },1500);
    })
    .fail(function() {
      alert('error');
    });
  });
});

