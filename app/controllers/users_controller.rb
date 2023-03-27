class UsersController < ApplicationController
  def show
    @user=User.find(params[:id])
    @books=@user.books
    @book=Book.new
  end

  def index
    @user=User.find(params[:id])
    @book=Book.
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
