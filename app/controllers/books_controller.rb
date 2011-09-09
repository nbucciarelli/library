class BooksController < ApplicationController
  respond_to :html, :json, :xml

  def index
    @books = Book.all
    respond_with @books
  end

  def show
    @book = Book.find(params[:id])
    respond_with @book
  end

  def new
    @book = Book.new(params[:book])
    respond_with @book
  end

  def create
    @book = Book.new(params[:book])
    @book.save
    respond_with @book, :location => books_path
  end

  def edit
    @book = Book.find(params[:id])
    respond_with @book
  end

  def update
    @book = Book.find(params[:id])
    @book.update_attributes(params[:book])
    respond_with @book, :location => books_path
  end

  def destroy
    @book = Book.find(params[:id])
    @book.delete
    respond_with @book, :location => books_path
  end
end
