class CaracteristicasController < ApplicationController
  before_action :set_caracteristica, only: [:show, :edit, :update, :destroy]

  # GET /caracteristicas
  # GET /caracteristicas.json
  def index
    @caracteristicas = Caracteristica.all
    if params[:search]
      @caracteristicas = Caracteristica.search(params[:search]).order("created_at DESC")
    else
      @caracteristicas = Caracteristica.all.order('created_at DESC')
    end
  end

  # GET /caracteristicas/1
  # GET /caracteristicas/1.json
  def show
  end

  # GET /caracteristicas/new
  def new
    @caracteristica = Caracteristica.new
  end

  # GET /caracteristicas/1/edit
  def edit
  end

  # POST /caracteristicas
  # POST /caracteristicas.json
  def create
    @caracteristica = Caracteristica.new(caracteristica_params)

    respond_to do |format|
      if @caracteristica.save
        format.html { redirect_to @caracteristica, notice: 'Caracteristica was successfully created.' }
        format.json { render :show, status: :created, location: @caracteristica }
      else
        format.html { render :new }
        format.json { render json: @caracteristica.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /caracteristicas/1
  # PATCH/PUT /caracteristicas/1.json
  def update
    respond_to do |format|
      if @caracteristica.update(caracteristica_params)
        format.html { redirect_to @caracteristica, notice: 'Caracteristica was successfully updated.' }
        format.json { render :show, status: :ok, location: @caracteristica }
      else
        format.html { render :edit }
        format.json { render json: @caracteristica.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /caracteristicas/1
  # DELETE /caracteristicas/1.json
  def destroy
    @caracteristica.destroy
    respond_to do |format|
      format.html { redirect_to caracteristicas_url, notice: 'Caracteristica was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_caracteristica
      @caracteristica = Caracteristica.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def caracteristica_params
      params.require(:caracteristica).permit(:nome)
    end
end
