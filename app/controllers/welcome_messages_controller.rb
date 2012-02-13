class WelcomeMessagesController < ApplicationController
  # GET /welcome_messages
  # GET /welcome_messages.json
  def index
    @welcome_messages = WelcomeMessage.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @welcome_messages }
    end
  end

  # GET /welcome_messages/1
  # GET /welcome_messages/1.json
  def show
    @welcome_message = WelcomeMessage.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @welcome_message }
    end
  end

  # GET /welcome_messages/new
  # GET /welcome_messages/new.json
  def new
    @welcome_message = WelcomeMessage.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @welcome_message }
    end
  end

  # GET /welcome_messages/1/edit
  def edit
    @welcome_message = WelcomeMessage.find(params[:id])
  end

  # POST /welcome_messages
  # POST /welcome_messages.json
  def create
    @welcome_message = WelcomeMessage.new(params[:welcome_message])

    respond_to do |format|
      if @welcome_message.save
        format.html { redirect_to @welcome_message, notice: 'Welcome message was successfully created.' }
        format.json { render json: @welcome_message, status: :created, location: @welcome_message }
      else
        format.html { render action: "new" }
        format.json { render json: @welcome_message.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /welcome_messages/1
  # PUT /welcome_messages/1.json
  def update
    @welcome_message = WelcomeMessage.find(params[:id])

    respond_to do |format|
      if @welcome_message.update_attributes(params[:welcome_message])
        format.html { redirect_to @welcome_message, notice: 'Welcome message was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @welcome_message.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /welcome_messages/1
  # DELETE /welcome_messages/1.json
  def destroy
    @welcome_message = WelcomeMessage.find(params[:id])
    @welcome_message.destroy

    respond_to do |format|
      format.html { redirect_to welcome_messages_url }
      format.json { head :ok }
    end
  end
end
