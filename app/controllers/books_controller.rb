
class BooksController < ApplicationController


    def index 
      @books = Book.all.with_attached_image
      render json: @books.map { |book|
      book.as_json.merge({ image: url_for(book.image) }, { file: url_for(book.file) })
    }
    end


    def create
        @book = Book.new(book_params)
        if @book.save
          render json: { status: 201, message: 'book created successfully!', content: { book: @book } }
        else
          render json:{ error: "failed to process book"}
        end
    end

    private

    def book_params
      params.permit(:title, :author, :description, :image, :file, :user_id)
    end
end
