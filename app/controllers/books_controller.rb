class BooksController < ApplicationController
  def index
    @books = Book.all
    @book = Book.new
  end

  def edit
    @book = Book.find(params[:id])
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to '/books'
  end
  def create
    @book = Book.new(list_params)
    if @book.save
      redirect_to "/books/#{@book.id}", notice:"Book was successfully created."
    else 
      @books = Book.all
      render :index
    end
  end
  def show
    @book = Book.find(params[:id])
  end
  def update
    @book = Book.find(params[:id])
    if @book.update(list_params)
      redirect_to "/books/#{@book.id}" ,notice:"Book was successfully updated."
    else
      render :edit
    end
  end
  private
  def list_params
    params.require(:book).permit(:title, :body)
  end
end
