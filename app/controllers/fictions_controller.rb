class FictionsController < ApplicationController
  before_action :set_fiction, only: [:show, :edit, :update, :destroy]

  # GET /fictions
  # GET /fictions.json
  def index
    @fictions = Fiction.all
  end

  # GET /fictions/1
  # GET /fictions/1.json
  def show
  end

  # GET /fictions/new
  def new
    @fiction = Fiction.new
  end

  # GET /fictions/1/edit
  def edit
  end

  # POST /fictions
  # POST /fictions.json
  def create
    @fiction = Fiction.new(fiction_params)

    respond_to do |format|
      if @fiction.save
        format.html { redirect_to @fiction, notice: 'Fiction was successfully created.' }
        format.json { render :show, status: :created, location: @fiction }
      else
        format.html { render :new }
        format.json { render json: @fiction.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fictions/1
  # PATCH/PUT /fictions/1.json
  def update
    respond_to do |format|
      if @fiction.update(fiction_params)
        format.html { redirect_to @fiction, notice: 'Fiction was successfully updated.' }
        format.json { render :show, status: :ok, location: @fiction }
      else
        format.html { render :edit }
        format.json { render json: @fiction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fictions/1
  # DELETE /fictions/1.json
  def destroy
    @fiction.destroy
    respond_to do |format|
      format.html { redirect_to fictions_url, notice: 'Fiction was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fiction
      @fiction = Fiction.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fiction_params
      params.require(:fiction).permit(:name)
    end
end
