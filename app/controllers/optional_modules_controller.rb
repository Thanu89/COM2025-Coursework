class OptionalModulesController < ApplicationController
  before_action :set_optional_module, only: [:show, :edit, :update, :destroy]

  # GET /optional_modules
  # GET /optional_modules.json
  def index
    @optional_modules = OptionalModule.all
  end

  # GET /optional_modules/1
  # GET /optional_modules/1.json
  def show
  end

  # GET /optional_modules/new
  def new
    @optional_module = OptionalModule.new
  end

  # GET /optional_modules/1/edit
  def edit
  end

  # POST /optional_modules
  # POST /optional_modules.json
  def create
    @optional_module = OptionalModule.new(optional_module_params)

    respond_to do |format|
      if @optional_module.save
        format.html { redirect_to @optional_module, notice: 'Optional module was successfully created.' }
        format.json { render :show, status: :created, location: @optional_module }
      else
        format.html { render :new }
        format.json { render json: @optional_module.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /optional_modules/1
  # PATCH/PUT /optional_modules/1.json
  def update
    respond_to do |format|
      if @optional_module.update(optional_module_params)
        format.html { redirect_to @optional_module, notice: 'Optional module was successfully updated.' }
        format.json { render :show, status: :ok, location: @optional_module }
      else
        format.html { render :edit }
        format.json { render json: @optional_module.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /optional_modules/1
  # DELETE /optional_modules/1.json
  def destroy
    @optional_module.destroy
    respond_to do |format|
      format.html { redirect_to optional_modules_url, notice: 'Optional module was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_optional_module
      @optional_module = OptionalModule.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def optional_module_params
      params.require(:optional_module).permit(:name, :description)
    end
end
