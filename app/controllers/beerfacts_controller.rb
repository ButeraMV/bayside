class BeerfactsController < ApplicationController
  before_action :set_beerfact, only: [:show, :edit, :update, :destroy]

  # GET /beerfacts
  # GET /beerfacts.json
  def index
    @beerfacts = Beerfact.all
  end

  # GET /beerfacts/1
  # GET /beerfacts/1.json
  def show
  end

  # GET /beerfacts/new
  def new
    @beerfact = Beerfact.new
  end

  # GET /beerfacts/1/edit
  def edit
  end

  # POST /beerfacts
  # POST /beerfacts.json
  def create
    @beerfact = Beerfact.new(beerfact_params)

    respond_to do |format|
      if @beerfact.save
        format.html { redirect_to @beerfact, notice: 'Beerfact was successfully created.' }
        format.json { render :show, status: :created, location: @beerfact }
      else
        format.html { render :new }
        format.json { render json: @beerfact.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /beerfacts/1
  # PATCH/PUT /beerfacts/1.json
  def update
    respond_to do |format|
      if @beerfact.update(beerfact_params)
        format.html { redirect_to @beerfact, notice: 'Beerfact was successfully updated.' }
        format.json { render :show, status: :ok, location: @beerfact }
      else
        format.html { render :edit }
        format.json { render json: @beerfact.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /beerfacts/1
  # DELETE /beerfacts/1.json
  def destroy
    @beerfact.destroy
    respond_to do |format|
      format.html { redirect_to beerfacts_url, notice: 'Beerfact was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_beerfact
      @beerfact = Beerfact.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def beerfact_params
      params.require(:beerfact).permit(:fact)
    end
end
