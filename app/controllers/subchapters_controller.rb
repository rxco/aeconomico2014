class SubchaptersController < ApplicationController
  before_action :set_subchapter, only: [:show, :edit, :update, :destroy]

  # GET /subchapters
  # GET /subchapters.json
  def index
    @subchapters = Subchapter.all
  end

  # GET /subchapters/1
  # GET /subchapters/1.json
  def show
  end

  # GET /subchapters/new
  def new
    @subchapter = Subchapter.new
  end

  # GET /subchapters/1/edit
  def edit
  end

  # POST /subchapters
  # POST /subchapters.json
  def create
    @subchapter = Subchapter.new(subchapter_params)

    respond_to do |format|
      if @subchapter.save
        format.html { redirect_to @subchapter, notice: 'Subchapter was successfully created.' }
        format.json { render action: 'show', status: :created, location: @subchapter }
      else
        format.html { render action: 'new' }
        format.json { render json: @subchapter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /subchapters/1
  # PATCH/PUT /subchapters/1.json
  def update
    respond_to do |format|
      if @subchapter.update(subchapter_params)
        format.html { redirect_to @subchapter, notice: 'Subchapter was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @subchapter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subchapters/1
  # DELETE /subchapters/1.json
  def destroy
    @subchapter.destroy
    respond_to do |format|
      format.html { redirect_to subchapters_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subchapter
      @subchapter = Subchapter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def subchapter_params
      params.require(:subchapter).permit(:es_description, :en_description, :chapter_id)
    end
end
