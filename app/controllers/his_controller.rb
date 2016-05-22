class HisController < ApplicationController
  before_action :set_hi, only: [:show, :edit, :update, :destroy]

  # GET /his
  # GET /his.json
  def index
    @his = Hi.all
  end

  # GET /his/1
  # GET /his/1.json
  def show
  end

  # GET /his/new
  def new
    @hi = Hi.new
  end

  # GET /his/1/edit
  def edit
  end

  # POST /his
  # POST /his.json
  def create
    @hi = Hi.new(hi_params)

    respond_to do |format|
      if @hi.save
        format.html { redirect_to @hi, notice: 'Hi was successfully created.' }
        format.json { render :show, status: :created, location: @hi }
      else
        format.html { render :new }
        format.json { render json: @hi.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /his/1
  # PATCH/PUT /his/1.json
  def update
    respond_to do |format|
      if @hi.update(hi_params)
        format.html { redirect_to @hi, notice: 'Hi was successfully updated.' }
        format.json { render :show, status: :ok, location: @hi }
      else
        format.html { render :edit }
        format.json { render json: @hi.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /his/1
  # DELETE /his/1.json
  def destroy
    @hi.destroy
    respond_to do |format|
      format.html { redirect_to his_url, notice: 'Hi was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hi
      @hi = Hi.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hi_params
      params.require(:hi).permit(:b)
    end
end
