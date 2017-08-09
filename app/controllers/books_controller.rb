class BooksController < ApplicationController
  def index
    @book = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def add
    if request.post?
      Book.create(book_params)
      redirect_to '/books'
    else
      @book = Book.new
    end
  end

  def edit
    	@book = Book.find(params[:id])
		if request.patch? then
			@book.update(book_params)
			redirect_to '/books'
		end
  end
  
  def delete
    	Book.find(params[:id]).destroy
		  redirect_to '/books'
  end

private
  def book_params
    params.require(:book).permit(:title, :author, :price, :publisher, :memo)
  end
end
