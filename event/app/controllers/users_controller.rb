class UsersController < ApplicationController
def index
    @user = User.all
  end

 
  def show
  end

  def new
    @user = User.new
  end

  def edit
  end


  def create
    @user = User.new(user_params)

    respond_to do |format|
      if user.save
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:name, :email)
    end
end



end
