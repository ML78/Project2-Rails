# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


App.chatroom = App.cable.subscriptions.create "ChatroomChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    $('#messages').append data['message']
    $('#message_content').val ''
    scrollToBottom()
    return

    #references id 'messages' on chatrooms show page and span class 'content' from message partial

  scrollToBottom = ->
      if $('#messages').length > 0
        last_message = $('#messages')[0]
        last_message.scrollTop = last_message.scrollHeight - (last_message.clientHeight)
      return

  $(document).ready ->
    scrollToBottom()
    return

  #in this project turbolinks has been disabled in (removed from) javascripts/application.js

  # jQuery(document).on 'turbolinks:load', ->
  #   scrollToBottom()
  #   return
  #   # Called when there's incoming data on the websocket for this channel
