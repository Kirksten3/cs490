class LongboardsController < ApplicationController
  skip_before_filter :verify_authenticity_token, :if => Proc.new { |c| c.request.format == 'application/json' }
  before_action :set_longboard, only: [:show, :edit, :update, :destroy]

  # GET /longboards
  # GET /longboards.json
  def index
    @longboards = Longboard.all
  end

  # GET /longboards/1
  # GET /longboards/1.json
  def show
  end

  # GET /longboards/new
  def new
    @longboard = Longboard.new
  end

  # GET /longboards/1/edit
  def edit
  end

  # POST /longboards
  # POST /longboards.json
  def create
    @longboard = Longboard.new(longboard_params)

    respond_to do |format|
      if @longboard.save
        format.html { redirect_to @longboard, notice: 'Longboard was successfully created.' }
        format.json { render :show, status: :created, location: @longboard }
      else
        format.html { render :new }
        format.json { render json: @longboard.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /longboards/1
  # PATCH/PUT /longboards/1.json
  def update
    respond_to do |format|
      if @longboard.update(longboard_params)
        format.html { redirect_to @longboard, notice: 'Longboard was successfully updated.' }
        format.json { render :show, status: :ok, location: @longboard }
      else
        format.html { render :edit }
        format.json { render json: @longboard.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /longboards/1
  # DELETE /longboards/1.json
  def destroy
    @longboard.destroy
    respond_to do |format|
      format.html { redirect_to longboards_url, notice: 'Longboard was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_longboard
      @longboard = Longboard.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def longboard_params
      params.require(:longboard).permit(:name, :length, :style, :manufacturer, :purpose, :is_available)
    end
end
