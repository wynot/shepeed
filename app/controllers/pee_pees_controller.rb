class PeePeesController < ApplicationController
  before_action :set_pee_pee, only: [:show, :edit, :update, :destroy]

  # GET /pee_pees
  # GET /pee_pees.json
  def index
    @pee_pees = PeePee.all
    @pee_pee = PeePee.new
  end

  # GET /pee_pees/1
  # GET /pee_pees/1.json
  def show
  end

  # GET /pee_pees/new
  def new
    @pee_pee = PeePee.new
  end

  # GET /pee_pees/1/edit
  def edit
  end

  # POST /pee_pees
  # POST /pee_pees.json
  def create
    @pee_pee = PeePee.new(pee_pee_params)

    respond_to do |format|
      if @pee_pee.save
        format.html { redirect_to root_url, notice: 'Pee pee was successfully created.' }
        format.json { render :show, status: :created, location: @pee_pee }
      else
        format.html { render :new }
        format.json { render json: @pee_pee.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pee_pees/1
  # PATCH/PUT /pee_pees/1.json
  def update
    respond_to do |format|
      if @pee_pee.update(pee_pee_params)
        format.html { redirect_to @pee_pee, notice: 'Pee pee was successfully updated.' }
        format.json { render :show, status: :ok, location: @pee_pee }
      else
        format.html { render :edit }
        format.json { render json: @pee_pee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pee_pees/1
  # DELETE /pee_pees/1.json
  def destroy
    @pee_pee.destroy
    respond_to do |format|
      format.html { redirect_to pee_pees_url, notice: 'Pee pee was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pee_pee
      @pee_pee = PeePee.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pee_pee_params
      params.require(:pee_pee).permit(:description)
    end
end
