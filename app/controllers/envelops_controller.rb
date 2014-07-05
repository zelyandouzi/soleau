class EnvelopsController < ApplicationController
  before_action :set_envelop, only: [:show, :edit, :update, :destroy]

  # GET /envelops
  # GET /envelops.json
  def index
    @envelops = current_user.envelops
  end

  # GET /envelops/1
  # GET /envelops/1.json
  def show
  end

  # GET /envelops/new
  def new
    @envelop = Envelop.new
  end

  # GET /envelops/1/edit
  def edit
  end

  # POST /envelops
  # POST /envelops.json
  def create
    @envelop = Envelop.new(envelop_params)

    respond_to do |format|
      if @envelop.save
        format.html { redirect_to @envelop, notice: 'Envelop was successfully created.' }
        format.json { render :show, status: :created, location: @envelop }
      else
        format.html { render :new }
        format.json { render json: @envelop.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /envelops/1
  # PATCH/PUT /envelops/1.json
  def update
    respond_to do |format|
      if @envelop.update(envelop_params)
        format.html { redirect_to @envelop, notice: 'Envelop was successfully updated.' }
        format.json { render :show, status: :ok, location: @envelop }
      else
        format.html { render :edit }
        format.json { render json: @envelop.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /envelops/1
  # DELETE /envelops/1.json
  def destroy
    @envelop.destroy
    respond_to do |format|
      format.html { redirect_to envelops_url, notice: 'Envelop was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_envelop
      @envelop = Envelop.find(params[:id])
      @comments = @envelop.comments.all
	  @comment = @envelop.comments.build
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def envelop_params
      params.require(:envelop).permit(:name, :description, :picture)
    end
end
