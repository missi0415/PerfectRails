class BooksController < ApplicationController
  def show
    @book = Book.find(params[:id]) #①
    respond_to do |format| #②
      format.html
      format.json
    end
  end  
end
