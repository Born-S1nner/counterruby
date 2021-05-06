class PetsListsController < ApplicationController
  before_action :set_pets_list, only: %i[ show edit update destroy ]

  # GET /pets_lists or /pets_lists.json
  def index
    @pets_lists = PetsList.all
  end

  # GET /pets_lists/1 or /pets_lists/1.json
  def show
  end

  # GET /pets_lists/new
  def new
    @pets_list = PetsList.new
  end

  # GET /pets_lists/1/edit
  def edit
  end

  # POST /pets_lists or /pets_lists.json
  def create
    @pets_list = PetsList.new(pets_list_params)

    respond_to do |format|
      if @pets_list.save
        format.html { redirect_to @pets_list, notice: "Pets list was successfully created." }
        format.json { render :show, status: :created, location: @pets_list }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @pets_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pets_lists/1 or /pets_lists/1.json
  def update
    respond_to do |format|
      if @pets_list.update(pets_list_params)
        format.html { redirect_to @pets_list, notice: "Pets list was successfully updated." }
        format.json { render :show, status: :ok, location: @pets_list }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @pets_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pets_lists/1 or /pets_lists/1.json
  def destroy
    @pets_list.destroy
    respond_to do |format|
      format.html { redirect_to pets_lists_url, notice: "Pets list was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pets_list
      @pets_list = PetsList.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pets_list_params
      params.require(:pets_list).permit(:specie, :owner, :pet_name, :owned_date)
    end
end
