class UsersController < ApplicationController
  def show
    @user=User.find(params[:id])
    @books=@user.books
  end

  def index
    
  end

  def edit
    
  end

  def update
    
  end

  private
  def user_params
    params.require(:user).permit(:name, :profile_image, :introduction)
  end

end
