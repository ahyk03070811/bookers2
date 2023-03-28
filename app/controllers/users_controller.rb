class UsersController < ApplicationController
  def show
    @user=current_user
    @book=Book.new
    @books=@user.books
  end

  def index
    @user=current_user
    @book=Book.new
    @users=User.all
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
