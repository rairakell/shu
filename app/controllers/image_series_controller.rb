class ImageSeriesController < ApplicationController
  before_action :set_image_series, only: [:show, :edit, :update, :destroy]

  # GET /image_series
  # GET /image_series.json
  def index
    @image_series = ImageSerie.all
  end

  # GET /image_series/1
  # GET /image_series/1.json
  def show
  end

  # GET /image_series/new
  def new
    @image_series = ImageSerie.new
  end

  # GET /image_series/1/edit
  def edit
  end

  # POST /image_series
  # POST /image_series.json
  def create
    @image_series = ImageSerie.new(image_series_params)

    respond_to do |format|
      if @image_series.save
        format.html { redirect_to @image_series, notice: 'Image serie was successfully created.' }
        format.json { render :show, status: :created, location: @image_series }
      else
        format.html { render :new }
        format.json { render json: @image_series.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /image_series/1
  # PATCH/PUT /image_series/1.json
  def update
    respond_to do |format|
      if @image_series.update(image_series_params)
        format.html { redirect_to @image_series, notice: 'Image serie was successfully updated.' }
        format.json { render :show, status: :ok, location: @image_series }
      else
        format.html { render :edit }
        format.json { render json: @image_series.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /image_series/1
  # DELETE /image_series/1.json
  def destroy
    @image_series.destroy
    respond_to do |format|
      format.html { redirect_to image_series_url, notice: 'Image serie was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_image_series
      @image_series = ImageSerie.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def image_series_params
      params.require(:image_series).permit(:name)
    end
end
