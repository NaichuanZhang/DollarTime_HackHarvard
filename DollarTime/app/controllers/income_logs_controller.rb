class IncomeLogsController < ApplicationController
  before_action :set_income_log, only: [:show, :edit, :update, :destroy]

  # GET /income_logs
  # GET /income_logs.json
  def index
    @income_logs = IncomeLog.all
  end

  # GET /income_logs/1
  # GET /income_logs/1.json
  def show
  end

  # GET /income_logs/new
  def new
    @income_log = IncomeLog.new
  end

  # GET /income_logs/1/edit
  def edit
  end

  # POST /income_logs
  # POST /income_logs.json
  def create
    @income_log = IncomeLog.new(income_log_params)

    respond_to do |format|
      if @income_log.save
        format.html { redirect_to @income_log, notice: 'Income log was successfully created.' }
        format.json { render :show, status: :created, location: @income_log }
      else
        format.html { render :new }
        format.json { render json: @income_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /income_logs/1
  # PATCH/PUT /income_logs/1.json
  def update
    respond_to do |format|
      if @income_log.update(income_log_params)
        format.html { redirect_to @income_log, notice: 'Income log was successfully updated.' }
        format.json { render :show, status: :ok, location: @income_log }
      else
        format.html { render :edit }
        format.json { render json: @income_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /income_logs/1
  # DELETE /income_logs/1.json
  def destroy
    @income_log.destroy
    respond_to do |format|
      format.html { redirect_to income_logs_url, notice: 'Income log was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_income_log
      @income_log = IncomeLog.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def income_log_params
      params.require(:income_log).permit(:uid, :name, :session_id, :job_title, :money_made)
    end
end
