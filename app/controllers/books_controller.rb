class BooksController < ApplicationController

  def create
  @book = Book.new(book_params)
    if @book.save
      redirect_to book_path(@book.id)
    else
      render :new
    end
  end

  def index
    @books = Book.all
    @book = Book.new
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
  end

private
#ストロングパラメータ
  def book_params
  params.require(:book).permit(:title,:body)
  end

end
