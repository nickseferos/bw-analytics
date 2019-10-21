class CraneOperatorsController < ApplicationController
  before_action :set_crane_operator, only: [:show, :edit, :update, :destroy]

  # GET /crane_operators
  # GET /crane_operators.json
  def index
    @crane_operators = CraneOperator.all
  end

  # GET /crane_operators/1
  # GET /crane_operators/1.json
  def show
  end

  # GET /crane_operators/new
  def new
    @crane_operator = CraneOperator.new
  end

  # GET /crane_operators/1/edit
  def edit
  end

  # POST /crane_operators
  # POST /crane_operators.json
  def create
    @crane_operator = CraneOperator.new(crane_operator_params)

    respond_to do |format|
      if @crane_operator.save
        format.html { redirect_to @crane_operator, notice: 'Crane operator was successfully created.' }
        format.json { render :show, status: :created, location: @crane_operator }
      else
        format.html { render :new }
        format.json { render json: @crane_operator.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /crane_operators/1
  # PATCH/PUT /crane_operators/1.json
  def update
    respond_to do |format|
      if @crane_operator.update(crane_operator_params)
        format.html { redirect_to @crane_operator, notice: 'Crane operator was successfully updated.' }
        format.json { render :show, status: :ok, location: @crane_operator }
      else
        format.html { render :edit }
        format.json { render json: @crane_operator.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /crane_operators/1
  # DELETE /crane_operators/1.json
  def destroy
    @crane_operator.destroy
    respond_to do |format|
      format.html { redirect_to crane_operators_url, notice: 'Crane operator was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_crane_operator
      @crane_operator = CraneOperator.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def crane_operator_params
      params.require(:crane_operator).permit(:work_id, :name)
    end
end
