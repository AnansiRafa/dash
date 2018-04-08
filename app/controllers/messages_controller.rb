class MessagesController < ApplicationController
  before_action :set_message, only: [:show, :edit, :update, :destroy]
  before_action :find_conversation!

  # GET /messages
  # GET /messages.json
  def index
    @messages = Message.all
  end

  # GET /messages/1
  # GET /messages/1.json
  def show
  end

  # GET /messages/new
  def new
    @message = current_user.messages.build
  end

  # GET /messages/1/edit
  def edit
  end

  # POST /messages
  # POST /messages.json
  def create
    @conversation ||= Conversation.create(author_id: current_user.id,
      receiver_id: @receiver.id)
      @message = current_user.messages.build(message_params)
      @message.conversation_id = @conversation.id
      @message.save!

      flash[:success] = "Your message was sent!"
      redirect_to conversation_path(@conversation)
    end

    # PATCH/PUT /messages/1
    # PATCH/PUT /messages/1.json
    def update
      respond_to do |format|
        if @message.update(message_params)
          format.html { redirect_to @message, notice: 'Message was successfully updated.' }
          format.json { render :show, status: :ok, location: @message }
        else
          format.html { render :edit }
          format.json { render json: @message.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /messages/1
    # DELETE /messages/1.json
    def destroy
      @message.destroy
      respond_to do |format|
        format.html { redirect_to messages_url, notice: 'Message was successfully destroyed.' }
        format.json { head :no_content }
      end
    end

    private

    def message_params
      params.require(:message).permit(:body)
    end
    # Use callbacks to share common setup or constraints between actions.
    def set_message
      @message = Message.find(params[:id])
    end

    def find_conversation!
      if params[:receiver_id]
        @receiver = User.find_by(id: params[:receiver_id])
        redirect_to(root_path) and return unless @receiver
        @conversation = Conversation.between(current_user.id, @receiver.id)[0]
      else
        @conversation = Conversation.find_by(id: params[:conversation_id])
        redirect_to(root_path) and return unless @conversation && @conversation.participates?(current_user)
      end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
  end
