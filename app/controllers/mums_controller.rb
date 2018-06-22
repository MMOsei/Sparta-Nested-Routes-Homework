class MumsController < ApplicationController
  before_action :set_mum, only: [:show, :edit, :update, :destroy]

  # GET /mums
  # GET /mums.json
  def index
    @mums = Mum.all
  end

  # GET /mums/1
  # GET /mums/1.json
  def show
  end

  # GET /mums/new
  def new
    @mum = Mum.new
  end

  # GET /mums/1/edit
  def edit
  end

  # POST /mums
  # POST /mums.json
  def create
    @mum = Mum.new(mum_params)

    respond_to do |format|
      if @mum.save
        format.html { redirect_to @mum, notice: 'Mum was successfully created.' }
        format.json { render :show, status: :created, location: @mum }
      else
        format.html { render :new }
        format.json { render json: @mum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mums/1
  # PATCH/PUT /mums/1.json
  def update
    respond_to do |format|
      if @mum.update(mum_params)
        format.html { redirect_to @mum, notice: 'Mum was successfully updated.' }
        format.json { render :show, status: :ok, location: @mum }
      else
        format.html { render :edit }
        format.json { render json: @mum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mums/1
  # DELETE /mums/1.json
  def destroy
    @mum.destroy
    respond_to do |format|
      format.html { redirect_to mums_url, notice: 'Mum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mum
      @mum = Mum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mum_params
      params.require(:mum).permit(:name, :relation, :married)
    end
end
