class TicketBooksController < ApplicationController
  before_action :set_ticket_book, only: [:show, :edit, :update, :destroy]

  # GET /ticket_books
  # GET /ticket_books.json
  def index
    @ticket_books = TicketBook.all
  end

  # GET /ticket_books/1
  # GET /ticket_books/1.json
  def show
  end

  # GET /ticket_books/new
  def new
    @ticket_book = TicketBook.new
  end

  # GET /ticket_books/1/edit
  def edit
  end

  # POST /ticket_books
  # POST /ticket_books.json
  def create
    @ticket_book = TicketBook.new(ticket_book_params)

    respond_to do |format|
      if @ticket_book.save
        format.html { redirect_to @ticket_book, notice: 'Ticket book was successfully created.' }
        format.json { render :show, status: :created, location: @ticket_book }
      else
        format.html { render :new }
        format.json { render json: @ticket_book.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ticket_books/1
  # PATCH/PUT /ticket_books/1.json
  def update
    respond_to do |format|
      if @ticket_book.update(ticket_book_params)
        format.html { redirect_to @ticket_book, notice: 'Ticket book was successfully updated.' }
        format.json { render :show, status: :ok, location: @ticket_book }
      else
        format.html { render :edit }
        format.json { render json: @ticket_book.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ticket_books/1
  # DELETE /ticket_books/1.json
  def destroy
    @ticket_book.destroy
    respond_to do |format|
      format.html { redirect_to ticket_books_url, notice: 'Ticket book was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
 


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ticket_book
      @ticket_book = TicketBook.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ticket_book_params
      params.require(:ticket_book).permit(:name, :tnumber, :issuedate, :is_cancelled, :canceldate, :journeydate)
    end
end
