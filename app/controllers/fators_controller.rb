class FatorsController < ApplicationController
  before_action :set_fator, only: [:show, :edit, :update, :destroy]

  # GET /fators
  # GET /fators.json
  def index
    @fators = Fator.all
    if params[:search]
      @fators = Fator.search(params[:search])
    else
      @fators = Fator.all
    end
  end

  # GET /fators/1
  # GET /fators/1.json
  def show
  end

  # GET /fators/new
  def new
    @fator = Fator.new
  end

  # GET /fators/1/edit
  def edit
  end

  # POST /fators
  # POST /fators.json
  def create
    @fator = Fator.new(fator_params)

    respond_to do |format|
      if @fator.save
        format.html { redirect_to @fator, notice: 'Fator was successfully created.' }
        format.json { render :show, status: :created, location: @fator }
      else
        format.html { render :new }
        format.json { render json: @fator.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fators/1
  # PATCH/PUT /fators/1.json
  def update
    respond_to do |format|
      if @fator.update(fator_params)
        format.html { redirect_to @fator, notice: 'Fator was successfully updated.' }
        format.json { render :show, status: :ok, location: @fator }
      else
        format.html { render :edit }
        format.json { render json: @fator.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fators/1
  # DELETE /fators/1.json
  def destroy
    @fator.destroy
    respond_to do |format|
      format.html { redirect_to fators_url, notice: 'Fator was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fator
      @fator = Fator.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fator_params
      params.require(:fator).permit(:nome)
    end
end
