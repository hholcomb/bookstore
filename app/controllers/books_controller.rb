class BooksController < ApplicationController
   def index
   	  @available_at = Time.now
   	  @books = Book.all
   end

   def show
   	 @book = Book.find(params[:id])
   	end
  

   def edit
   	@book = Book.find(params[:id])
   end

   def update
   	 @book = Book.find(params[:id])
   	 @book.update(book_params)
   	 redirect_to @book
   end

   def destroy
   	@book = Book.find(params[:id])
   	@book.destroy
   	redirect_to books_url
   end

end