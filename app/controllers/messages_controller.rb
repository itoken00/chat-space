class MessagesController < ApplicationController

  def index
    @message = Message.new
    @group = Group.find(params[:group_id])
    @messages = @group.messages
  end

  def create
    @message = current_user.messages.new(message_params)
    if @message.save
      respond_to do |format|
        format.html { redirect_to :group_messages, notice: "メッセージが投稿されました" }
        format.json
      end

    else
      flash[:alert] = "メッセージを入力してください"
      render :index
    end
  end

  private
  def message_params
    params.require(:message).permit(:image, :body).merge( group_id: params[:group_id])
  end


end
