class CusController < ApplicationController
  before_action :set_cu, only: [:show, :edit, :update, :destroy]

  # GET /cus
  # GET /cus.json
  def index
    @cus = Cu.all
  end

  # GET /cus/1
  # GET /cus/1.json
  def show
  end

  # GET /cus/new
  def new
    @cu = Cu.new
  end

  # GET /cus/1/edit
  def edit
  end

  # POST /cus
  # POST /cus.json
  def create
    @cu = Cu.new(cu_params)

    respond_to do |format|
      if @cu.save
        format.html { redirect_to @cu, notice: 'Cu was successfully created.' }
        format.json { render :show, status: :created, location: @cu }
      else
        format.html { render :new }
        format.json { render json: @cu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cus/1
  # PATCH/PUT /cus/1.json
  def update
    respond_to do |format|
      if @cu.update(cu_params)
        format.html { redirect_to @cu, notice: 'Cu was successfully updated.' }
        format.json { render :show, status: :ok, location: @cu }
      else
        format.html { render :edit }
        format.json { render json: @cu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cus/1
  # DELETE /cus/1.json
  def destroy
    @cu.destroy
    respond_to do |format|
      format.html { redirect_to cus_url, notice: 'Cu was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cu
      @cu = Cu.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cu_params
      params.require(:cu).permit(:name, :emails, :gtoken, :acctoken, :idtoken, :refreshtoken)
    end
end
