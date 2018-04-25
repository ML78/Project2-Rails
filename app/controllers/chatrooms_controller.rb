class ChatroomsController < ApplicationController
  before_action :require_user #must be logged in to access chat
  def show
    @message = Message.new
    # @messages = Message.all
    # restricted how many messages are shown in Message model
    @messages = Message.most_recent
  end

end
