$(document).on('turbolinks:load', function(){
  messages = $('#conversation-body')
  if(messages.length > 0){
    messages.scrollTop(messages.prop("scrollHeight"));
  }
});
