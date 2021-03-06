class FeedbacksController < ApplicationController
  include FeedbacksHelper
  before_action :set_feedback, only: [:show, :edit, :update, :destroy]
  before_action :confirm_signed_in
  include CoursesHelper

  # GET /feedbacks
  # GET /feedbacks.json
  def index
  @feedbacks = current_user.received_feedbacks
  end

  # GET /feedbacks/1
  # GET /feedbacks/1.json
  def show
  end

  # GET /feedbacks/new
  def new
    @feedback = Feedback.new(student_id: params[:student_id], teacher_id: params[:teacher_id])
    puts @feedback.teacher_id
    respond_to do |format|
    format.html  # new.html.erb
    format.json  { render :json => @feedback }
  end
  end

  # GET /feedbacks/1/edit
  def edit
  end

  # POST /feedbacks
  # POST /feedbacks.json
  def create
    @feedback = Feedback.new(feedback_params)

    respond_to do |format|
      if @feedback.save
        format.html { redirect_to courses_path, notice: 'Feedback was successfully created.' }
        format.json { render :show, status: :created, location: @feedback }
      else
        format.html { render :new }
        format.json { render json: @feedback.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /feedbacks/1
  # PATCH/PUT /feedbacks/1.json
  def update
    respond_to do |format|
      if @feedback.update(feedback_params)
        format.html { redirect_to @feedback, notice: 'Feedback was successfully updated.' }
        format.json { render :show, status: :ok, location: @feedback }
      else
        format.html { render :edit }
        format.json { render json: @feedback.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /feedbacks/1
  # DELETE /feedbacks/1.json
  def destroy
    @feedback.destroy
    respond_to do |format|
      format.html { redirect_to feedbacks_url, notice: 'Feedback was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def confirm_signed_in
    make_sign_in unless logged_in?
  end

  def set_feedback
    @feedback = Feedback.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def feedback_params
    params.require(:feedback).permit(:body, :teacher_id, :student_id)
  end
end
