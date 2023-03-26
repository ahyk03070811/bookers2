class BooksController < ApplicationController

  def show
    
  end

  def index
    @book=Book.new
    @books=Book.all
  end

  def create
    @book=Book.new(book_params)
    @book.user_id=current_user.id
    @book.save
  end

  def edit
    
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
