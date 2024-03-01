class ElectorsController < ApplicationController
  before_action :set_elector, only: %i[show edit update destroy]

  # GET /electors or /electors.json
  def index
    @electors = Elector.all
    @grid = ElectorsGrid.new(grid_params) do |scope|
      scope.page(params[:page])
    end
  end

  # GET /electors/1 or /electors/1.json
  def show; end

  # GET /electors/new
  def new
    @elector = Elector.new
  end

  # GET /electors/1/edit
  def edit; end

  # POST /electors or /electors.json
  def create
    @elector = Elector.new(elector_params)

    respond_to do |format|
      if @elector.save
        format.html { redirect_to elector_url(@elector), notice: 'Elector was successfully created.' }
        format.json { render :show, status: :created, location: @elector }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @elector.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /electors/1 or /electors/1.json
  def update
    respond_to do |format|
      if @elector.update(elector_params)
        format.html { redirect_to elector_url(@elector), notice: 'Elector was successfully updated.' }
        format.json { render :show, status: :ok, location: @elector }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @elector.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /electors/1 or /electors/1.json
  def destroy
    @elector.destroy!

    respond_to do |format|
      format.html { redirect_to electors_url, notice: 'Elector was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  protected

  def grid_params
    params.fetch(:electors_grid, {}).permit!
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_elector
    @elector = Elector.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def elector_params
    params.require(:elector).permit(:id_number, :first_name, :middle_name, :last_name, :division_number,
                                    :division_name, :laa_name, :constituency_name, :address, :occupation,
                                    :constituency_number, :number_in_division, :list_id)
  end
end
