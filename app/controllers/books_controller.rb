class BooksController < ApplicationController

  def show
    @user=current_user
    @book=Book.find(params[:id])
  end

  def index
    @user=current_user
    @book=Book.new
    @books=Book.all
  end

  def create
    @book=Book.new(book_params)
    @book.user_id=current_user.id
    if @book.save
      flash[:succes]="You have created book successfully."
      redirect_to book_path(@book.id)
    else
      render :index
    end
  end

  def edit
     @book=Book.find(params[:id])
  end

  def update
  end

  def destroy

  end

  private
    def book_params
      params.require(:book).permit(:title, :body)
    end

end
