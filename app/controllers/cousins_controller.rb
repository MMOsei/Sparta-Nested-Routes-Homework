class CousinsController < ApplicationController
  before_action :set_cousin, only: [:show, :edit, :update, :destroy]

  # GET /cousins
  # GET /cousins.json
  def index
    @cousins = Cousin.all
  end

  # GET /cousins/1
  # GET /cousins/1.json
  def show
  end

  # GET /cousins/new
  def new
    @cousin = Cousin.new
  end

  # GET /cousins/1/edit
  def edit
  end

  # POST /cousins
  # POST /cousins.json
  def create
    @cousin = Cousin.new(cousin_params)

    respond_to do |format|
      if @cousin.save
        format.html { redirect_to @cousin, notice: 'Cousin was successfully created.' }
        format.json { render :show, status: :created, location: @cousin }
      else
        format.html { render :new }
        format.json { render json: @cousin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cousins/1
  # PATCH/PUT /cousins/1.json
  def update
    respond_to do |format|
      if @cousin.update(cousin_params)
        format.html { redirect_to @cousin, notice: 'Cousin was successfully updated.' }
        format.json { render :show, status: :ok, location: @cousin }
      else
        format.html { render :edit }
        format.json { render json: @cousin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cousins/1
  # DELETE /cousins/1.json
  def destroy
    @cousin.destroy
    respond_to do |format|
      format.html { redirect_to cousins_url, notice: 'Cousin was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cousin
      @cousin = Cousin.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cousin_params
      params.require(:cousin).permit(:name, :gender, :married, :mum_id)
    end
end
