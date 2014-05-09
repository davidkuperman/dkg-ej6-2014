class SalesrepsController < ApplicationController
  before_action :set_salesrep, only: [:show, :edit, :update, :destroy]

  # GET /salesreps
  # GET /salesreps.json
  def index
    @salesreps = Salesrep.all
  end

  # GET /salesreps/1
  # GET /salesreps/1.json
  def show
  end

  # GET /salesreps/new
  def new
    @salesrep = Salesrep.new
  end

  # GET /salesreps/1/edit
  def edit
  end

  # POST /salesreps
  # POST /salesreps.json
  def create
    @salesrep = Salesrep.new(salesrep_params)

    respond_to do |format|
      if @salesrep.save
        format.html { redirect_to @salesrep, notice: 'Salesrep was successfully created.' }
        format.json { render action: 'show', status: :created, location: @salesrep }
      else
        format.html { render action: 'new' }
        format.json { render json: @salesrep.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /salesreps/1
  # PATCH/PUT /salesreps/1.json
  def update
    respond_to do |format|
      if @salesrep.update(salesrep_params)
        format.html { redirect_to @salesrep, notice: 'Salesrep was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @salesrep.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /salesreps/1
  # DELETE /salesreps/1.json
  def destroy
    @salesrep.destroy
    respond_to do |format|
      format.html { redirect_to salesreps_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_salesrep
      @salesrep = Salesrep.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def salesrep_params
      params.require(:salesrep).permit(:name, :lastname, :territory, :quota)
    end
end
