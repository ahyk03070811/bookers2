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
    @user=User.find(params[:id])
  end

  def update
    @user=User.find(params[:id])
    @user.update(user_params)
    if flash[:notice] = "You have updated user successfully."
     redirect_to user_path(@user)
    else
     render :edit
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :profile_image, :introduction)
  end

end
