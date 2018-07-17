class LakesController < ApplicationController
  before_action :set_lake, only: [:show, :edit, :update, :destroy, :vote]

  # GET /lakes
  # GET /lakes.json
  def index
    @lakes = Lake.all
  end

  # GET /lakes/1
  # GET /lakes/1.json
  def show
  end

  # GET /lakes/new
  def new
    @lake = Lake.new
  end

  # GET /lakes/1/edit
  def edit
  end

  # POST /lakes
  # POST /lakes.json
  def create
    @lake = Lake.new(lake_params)

    respond_to do |format|
      if @lake.save
        format.html { redirect_to @lake, notice: 'Lake was successfully created.' }
        format.json { render :show, status: :created, location: @lake }
      else
        format.html { render :new }
        format.json { render json: @lake.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lakes/1
  # PATCH/PUT /lakes/1.json
  def update
    respond_to do |format|
      if @lake.update(lake_params)
        format.html { redirect_to @lake, notice: 'Lake was successfully updated.' }
        format.json { render :show, status: :ok, location: @lake }
      else
        format.html { render :edit }
        format.json { render json: @lake.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lakes/1
  # DELETE /lakes/1.json
  def destroy
    @lake.destroy
    respond_to do |format|
      format.html { redirect_to lakes_url, notice: 'Lake was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  #->Prelang (voting/acts_as_votable)
  def vote

    direction = params[:direction]

    # Make sure we've specified a direction
    raise "No direction parameter specified to #vote action." unless direction

    # Make sure the direction is valid
    unless ["like", "bad"].member? direction
      raise "Direction '#{direction}' is not a valid direction for vote method."
    end

    @lake.vote_by voter: current_user, vote: direction

    redirect_to action: :index
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lake
      @lake = Lake.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lake_params
      params.require(:lake).permit(:name, :description, :active, :lat, :lng)
    end
end
