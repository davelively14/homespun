class ArtisansController < ApplicationController
  before_action :set_artisan, only: [:show, :edit, :update, :destroy]

  # GET /artisans
  # GET /artisans.json
  def index
    @artisans = Artisan.all
  end

  # GET /artisans/1
  # GET /artisans/1.json
  def show
  end

  # GET /artisans/new
  def new
    @artisan = Artisan.new
    @stores = Store.all
  end

  # GET /artisans/1/edit
  def edit
  end

  # POST /artisans
  # POST /artisans.json
  def create
    @artisan = Artisan.new(artisan_params)

    respond_to do |format|
      if @artisan.save
        format.html { redirect_to @artisan, notice: 'Artisan was successfully created.' }
        format.json { render :show, status: :created, location: @artisan }
      else
        format.html { render :new }
        format.json { render json: @artisan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /artisans/1
  # PATCH/PUT /artisans/1.json
  def update
    respond_to do |format|
      if @artisan.update(artisan_params)
        format.html { redirect_to @artisan, notice: 'Artisan was successfully updated.' }
        format.json { render :show, status: :ok, location: @artisan }
      else
        format.html { render :edit }
        format.json { render json: @artisan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /artisans/1
  # DELETE /artisans/1.json
  def destroy
    @artisan.destroy
    respond_to do |format|
      format.html { redirect_to artisans_url, notice: 'Artisan was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_artisan
      @artisan = Artisan.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def artisan_params
      params.require(:artisan).permit(:role, :approved)
    end
end
