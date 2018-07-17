class LakeViewsController < ApplicationController
  before_action :set_lake_view, only: [:show, :edit, :update, :destroy]

  # GET /lake_views
  # GET /lake_views.json
  def index
    @lake_views = LakeView.all
  end

  # GET /lake_views/1
  # GET /lake_views/1.json
  def show
  end

  # GET /lake_views/new
  def new
    @lake_view = LakeView.new
  end

  # GET /lake_views/1/edit
  def edit
  end

  # POST /lake_views
  # POST /lake_views.json
  def create
    @lake_view = LakeView.new(lake_view_params)

    respond_to do |format|
      if @lake_view.save
        format.html { redirect_to @lake_view, notice: 'Lake view was successfully created.' }
        format.json { render :show, status: :created, location: @lake_view }
      else
        format.html { render :new }
        format.json { render json: @lake_view.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lake_views/1
  # PATCH/PUT /lake_views/1.json
  def update
    respond_to do |format|
      if @lake_view.update(lake_view_params)
        format.html { redirect_to @lake_view, notice: 'Lake view was successfully updated.' }
        format.json { render :show, status: :ok, location: @lake_view }
      else
        format.html { render :edit }
        format.json { render json: @lake_view.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lake_views/1
  # DELETE /lake_views/1.json
  def destroy
    @lake_view.destroy
    respond_to do |format|
      format.html { redirect_to lake_views_url, notice: 'Lake view was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lake_view
      @lake_view = LakeView.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lake_view_params
      params.require(:lake_view).permit(:tl_lat, :tl_lng, :br_lat, :br_lng, :lake_id)
    end
end
