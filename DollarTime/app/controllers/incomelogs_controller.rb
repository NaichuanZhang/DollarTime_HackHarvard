class IncomelogsController < ApplicationController
  before_action :set_incomelog, only: [:show, :edit, :update, :destroy]

  # GET /incomelogs
  # GET /incomelogs.json
  def index
    @incomelogs = Incomelog.all
  end

  # GET /incomelogs/1
  # GET /incomelogs/1.json
  def show
  end

  # GET /incomelogs/new
  def new
    @incomelog = Incomelog.new

  end

  # GET /incomelogs/1/edit
  def edit
  end

  # POST /incomelogs
  # POST /incomelogs.json
  def create
    @incomelog = Incomelog.new(incomelog_params)

    respond_to do |format|
      if @incomelog.save
        format.html { redirect_to @incomelog, notice: 'Incomelog was successfully created.' }
        format.json { render :show, status: :created, location: @incomelog }
      else
        format.html { render :new }
        format.json { render json: @incomelog.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /incomelogs/1
  # PATCH/PUT /incomelogs/1.json
  def update
    respond_to do |format|
      if @incomelog.update(incomelog_params)
        format.html { redirect_to @incomelog, notice: 'Incomelog was successfully updated.' }
        format.json { render :show, status: :ok, location: @incomelog }
      else
        format.html { render :edit }
        format.json { render json: @incomelog.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /incomelogs/1
  # DELETE /incomelogs/1.json
  def destroy
    @incomelog.destroy
    respond_to do |format|
      format.html { redirect_to incomelogs_url, notice: 'Incomelog was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_incomelog
      @incomelog = Incomelog.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def incomelog_params
      params.require(:incomelog).permit(:user_id, :job, :amount)
    end
end
