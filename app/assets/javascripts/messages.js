// in the chat tutorial this code was directly in the application.js file and turbolinks was set as required that application.js file
// in this project turbolinks has been disabled in (removed from) javascripts/application.js

function scrollToBottom(){
  if($('#messages').length > 0) {
    $('#messages').scrollTop($('#messages')[0].scrollHeight);
  }
}

function submitMessage(event){
   event.preventDefault();
   $('#new_message').submit();
}

$(document).ready(function() {
  $("#new_message").on("ajax:complete", function(e, data, status) {
    $('#message_content').val('');
  })
  scrollToBottom();
});
