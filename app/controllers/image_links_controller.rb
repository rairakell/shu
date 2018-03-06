class ImageLinksController < ApplicationController
  before_action :set_image_link, only: [:show, :edit, :update, :destroy]

  # GET /image_links
  # GET /image_links.json
  def index
    @image_links = ImageLink.all
  end

  # GET /image_links/1
  # GET /image_links/1.json
  def show
  end

  # GET /image_links/new
  def new
    @image_link = ImageLink.new
  end

  # GET /image_links/1/edit
  def edit
  end

  # POST /image_links
  # POST /image_links.json
  def create
    @image_link = ImageLink.new(image_link_params)

    respond_to do |format|
      if @image_link.save
        format.html { redirect_to @image_link, notice: 'Image link was successfully created.' }
        format.json { render :show, status: :created, location: @image_link }
      else
        format.html { render :new }
        format.json { render json: @image_link.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /image_links/1
  # PATCH/PUT /image_links/1.json
  def update
    respond_to do |format|
      if @image_link.update(image_link_params)
        format.html { redirect_to @image_link, notice: 'Image link was successfully updated.' }
        format.json { render :show, status: :ok, location: @image_link }
      else
        format.html { render :edit }
        format.json { render json: @image_link.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /image_links/1
  # DELETE /image_links/1.json
  def destroy
    @image_link.destroy
    respond_to do |format|
      format.html { redirect_to image_links_url, notice: 'Image link was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_image_link
      @image_link = ImageLink.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def image_link_params
      params.require(:image_link).permit(:image_id, :fiction_id)
    end
end
