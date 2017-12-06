class IndexpagesController < ApplicationController
  before_action :set_indexpage, only: [:show, :edit, :update, :destroy]
before_action :authenticate_user!, :except => [:index]

  # GET /indexpages
  # GET /indexpages.json
  def index
    @indexpages = Indexpage.all
    @index = Indexpage.first
    # @descr = @index.description.split('#').first
    # @hello = @index.description.split('#')[1]
    # @address = @index.description.split('#')[2]
  end

  # GET /indexpages/1
  # GET /indexpages/1.json
  def show
  end

  # GET /indexpages/new
  def new
    @indexpage = Indexpage.new
  end

  # GET /indexpages/1/edit
  def edit
  end

  # POST /indexpages
  # POST /indexpages.json
  def create
    @indexpage = Indexpage.new(indexpage_params)

    respond_to do |format|
      if @indexpage.save
        format.html { redirect_to @indexpage, notice: 'Indexpage was successfully created.' }
        format.json { render :show, status: :created, location: @indexpage }
      else
        format.html { render :new }
        format.json { render json: @indexpage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /indexpages/1
  # PATCH/PUT /indexpages/1.json
  def update
    respond_to do |format|
      if @indexpage.update(indexpage_params)
        format.html { redirect_to @indexpage, notice: 'Indexpage was successfully updated.' }
        format.json { render :show, status: :ok, location: @indexpage }
      else
        format.html { render :edit }
        format.json { render json: @indexpage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /indexpages/1
  # DELETE /indexpages/1.json
  def destroy
    @indexpage.destroy
    respond_to do |format|
      format.html { redirect_to indexpages_url, notice: 'Indexpage was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_indexpage
      @indexpage = Indexpage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def indexpage_params
      params.require(:indexpage).permit(:description, :foto)
    end
end
