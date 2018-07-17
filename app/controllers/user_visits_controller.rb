class UserVisitsController < ApplicationController
  before_action :set_user_visit, only: [:show, :edit, :update, :destroy]

  # GET /user_visits
  # GET /user_visits.json
  def index
    @user_visits = UserVisit.all
  end

  # GET /user_visits/1
  # GET /user_visits/1.json
  def show
  end

  # GET /user_visits/new
  def new
    @user_visit = UserVisit.new
  end

  # GET /user_visits/1/edit
  def edit
  end

  # POST /user_visits
  # POST /user_visits.json
  def create
    @user_visit = UserVisit.new(user_visit_params)

    respond_to do |format|
      if @user_visit.save
        format.html { redirect_to @user_visit, notice: 'User visit was successfully created.' }
        format.json { render :show, status: :created, location: @user_visit }
      else
        format.html { render :new }
        format.json { render json: @user_visit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_visits/1
  # PATCH/PUT /user_visits/1.json
  def update
    respond_to do |format|
      if @user_visit.update(user_visit_params)
        format.html { redirect_to @user_visit, notice: 'User visit was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_visit }
      else
        format.html { render :edit }
        format.json { render json: @user_visit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_visits/1
  # DELETE /user_visits/1.json
  def destroy
    @user_visit.destroy
    respond_to do |format|
      format.html { redirect_to user_visits_url, notice: 'User visit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_visit
      @user_visit = UserVisit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_visit_params
      params.require(:user_visit).permit(:user_id, :lake_id, :description, :public)
    end
end
