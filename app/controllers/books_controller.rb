class BooksController < ApplicationController
  def index
    @lists = List.all
    @list = List.new
  end

  def edit
    @list = List.find(params[:id])
  end

  def destroy
    @list = List.find(params[:id])
    @list.destroy
    redirect_to '/books'
  end
  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to "/books/#{@list.id}"
    else 
      @list = List.all
      render :index
    end
  end
  def show
    @list = List.find(params[:id])
  end
  def update
    list = List.find(params[:id])
    list.update(list_params)
    redirect_to "/books/#{list.id}"
  end
  private
  def list_params
    params.require(:list).permit(:title, :body)
  end
end
