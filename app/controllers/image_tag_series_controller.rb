class ImageTagSeriesController < ApplicationController
  before_action :set_image_tag_series, only: [:show, :edit, :update, :destroy]

  # GET /image_tag_series
  # GET /image_tag_series.json
  def index
    @image_tag_series = ImageTagSerie.all
  end

  # GET /image_tag_series/1
  # GET /image_tag_series/1.json
  def show
  end

  # GET /image_tag_series/new
  def new
    @image_tag_series = ImageTagSerie.new
  end

  # GET /image_tag_series/1/edit
  def edit
  end

  # POST /image_tag_series
  # POST /image_tag_series.json
  def create
    @image_tag_series = ImageTagSerie.new(image_tag_series_params)

    respond_to do |format|
      if @image_tag_series.save
        format.html { redirect_to @image_tag_series, notice: 'Image tag serie was successfully created.' }
        format.json { render :show, status: :created, location: @image_tag_series }
      else
        format.html { render :new }
        format.json { render json: @image_tag_series.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /image_tag_series/1
  # PATCH/PUT /image_tag_series/1.json
  def update
    respond_to do |format|
      if @image_tag_series.update(image_tag_series_params)
        format.html { redirect_to @image_tag_series, notice: 'Image tag serie was successfully updated.' }
        format.json { render :show, status: :ok, location: @image_tag_series }
      else
        format.html { render :edit }
        format.json { render json: @image_tag_series.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /image_tag_series/1
  # DELETE /image_tag_series/1.json
  def destroy
    @image_tag_series.destroy
    respond_to do |format|
      format.html { redirect_to image_tag_series_url, notice: 'Image tag serie was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_image_tag_series
      @image_tag_series = ImageTagSerie.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def image_tag_series_params
      params.require(:image_tag_series).permit(:image_tag_id, :image_serie_id)
    end
end
