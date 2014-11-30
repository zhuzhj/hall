class BologListsController < ApplicationController
  before_action :set_bolog_list, only: [:show, :edit, :update, :destroy]

  # GET /bolog_lists
  # GET /bolog_lists.json
  def index
    @bolog_lists = BologList.all
  end

  # GET /bolog_lists/1
  # GET /bolog_lists/1.json
  def show
  end

  # GET /bolog_lists/new
  def new
    @bolog_list = BologList.new
  end

  # GET /bolog_lists/1/edit
  def edit
  end

  # POST /bolog_lists
  # POST /bolog_lists.json
  def create
    @bolog_list = BologList.new(bolog_list_params)

    respond_to do |format|
      if @bolog_list.save
        format.html { redirect_to @bolog_list, notice: 'Bolog list was successfully created.' }
        format.json { render :show, status: :created, location: @bolog_list }
      else
        format.html { render :new }
        format.json { render json: @bolog_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bolog_lists/1
  # PATCH/PUT /bolog_lists/1.json
  def update
    respond_to do |format|
      if @bolog_list.update(bolog_list_params)
        format.html { redirect_to @bolog_list, notice: 'Bolog list was successfully updated.' }
        format.json { render :show, status: :ok, location: @bolog_list }
      else
        format.html { render :edit }
        format.json { render json: @bolog_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bolog_lists/1
  # DELETE /bolog_lists/1.json
  def destroy
    @bolog_list.destroy
    respond_to do |format|
      format.html { redirect_to bolog_lists_url, notice: 'Bolog list was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bolog_list
      @bolog_list = BologList.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bolog_list_params
      params.require(:bolog_list).permit(:title, :description)
    end
end
