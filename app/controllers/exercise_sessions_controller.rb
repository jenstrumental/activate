class ExerciseSessionsController < ApplicationController
  
  before_filter :authenticate_user!
  
  # GET /exercise_sessions
  # GET /exercise_sessions.json
  def index
    @exercise_sessions = ExerciseSession.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @exercise_sessions }
    end
  end

  # GET /exercise_sessions/1
  # GET /exercise_sessions/1.json
  def show
    @exercise_session = ExerciseSession.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @exercise_session }
    end
  end

  # GET /exercise_sessions/new
  # GET /exercise_sessions/new.json
  def new
    @exercise_session = ExerciseSession.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @exercise_session }
    end
  end

  # GET /exercise_sessions/1/edit
  def edit
    @exercise_session = ExerciseSession.find(params[:id])
  end

  # POST /exercise_sessions
  # POST /exercise_sessions.json
  def create
    @exercise_session = ExerciseSession.new(params[:exercise_session])

    respond_to do |format|
      if @exercise_session.save
        format.html { redirect_to root_path, notice: 'Activate session was successfully created.' }
        format.json { render json: @exercise_session, status: :created, location: @exercise_session }
      else
        format.html { render action: "new" }
        format.json { render json: @exercise_session.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /exercise_sessions/1
  # PUT /exercise_sessions/1.json
  def update
    @exercise_session = ExerciseSession.find(params[:id])

    respond_to do |format|
      if @exercise_session.update_attributes(params[:exercise_session])
        format.html { redirect_to @exercise_session, notice: 'Activate session was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @exercise_session.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /exercise_sessions/1
  # DELETE /exercise_sessions/1.json
  def destroy
    @exercise_session = ExerciseSession.find(params[:id])
    @exercise_session.destroy

    respond_to do |format|
      format.html { redirect_to exercise_sessions_url }
      format.json { head :ok }
    end
  end
end
