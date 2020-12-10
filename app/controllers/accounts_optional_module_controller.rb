class AccountsOptionalModule < ApplicationController
  before_action :set_accounts_optional_module, only: [:show, :edit, :update, :destroy]

  def index
    @accounts_optional_modules = AccountsOptionalModule.all
  end

  # GET /optional_modules/1
  # GET /optional_modules/1.json
  def show
  end

  # GET /optional_modules/new
  def new
    @accounts_optional_module = AccountsOptionalModule.new
  end

  # GET /optional_modules/1/edit
  def edit
  end

  def create
        @optional_module_id = OptionalModule.find(params[:optional_module_id])
        @account_id = Account.find(params[:account_id])
        @enrolment = AccountsOptionalModule.new(@account_id, @optional_module_id)
        respond_to do |format|
            if @enrolment.save
                format.html { redirect_to @enrolment, notice: 'You have enrolled successfully!' }
                format.json { render :show, status: :created, location: @enrolment }
            else
                format.html { render :new }
                format.json { render json: @enrolment.errors, status: :unprocessable_entity }
            end
        end
    end

  def destroy
    @account_optional_module.destroy
    respond_to do |format|
      format.html { redirect_to optional_modules_url, notice: 'Successfully unenrolled.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_account_optional_module
      @account_optional_module = AccountOptionalModule.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def account_optional_module_params
      params.require(:account_optional_module).permit(:account_id, :optional_module_id)
    end
end



