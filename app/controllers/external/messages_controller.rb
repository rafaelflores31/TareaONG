class External::MessagesController < ApplicationController
  skip_before_filter :authenticate
  def new
  	@message = Message.new
  	@external
  end

  def create 
     @message = Message.new(message_params)
     @users = User.all.where(nursery_id: @message.nursery_id)
    if @message.save
      @users.each do |user|
      #MessageMailer.message_email(@user).deliver
      end 
      redirect_to external_salvado_path, notice: "Se ha enviado exitosamente"
    else
      render :new
    end 
  end

  def salvado 
  end 


  private

    def message_params
      params.require(:message).permit!
    end
end
