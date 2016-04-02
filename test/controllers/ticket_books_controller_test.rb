require 'test_helper'

class TicketBooksControllerTest < ActionController::TestCase
  setup do
    @ticket_book = ticket_books(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ticket_books)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ticket_book" do
    assert_difference('TicketBook.count') do
      post :create, ticket_book: { canceldate: @ticket_book.canceldate, is_cancelled: @ticket_book.is_cancelled, issuedate: @ticket_book.issuedate, journeydate: @ticket_book.journeydate, name: @ticket_book.name, tnumber: @ticket_book.tnumber }
    end

    assert_redirected_to ticket_book_path(assigns(:ticket_book))
  end

  test "should show ticket_book" do
    get :show, id: @ticket_book
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ticket_book
    assert_response :success
  end

  test "should update ticket_book" do
    patch :update, id: @ticket_book, ticket_book: { canceldate: @ticket_book.canceldate, is_cancelled: @ticket_book.is_cancelled, issuedate: @ticket_book.issuedate, journeydate: @ticket_book.journeydate, name: @ticket_book.name, tnumber: @ticket_book.tnumber }
    assert_redirected_to ticket_book_path(assigns(:ticket_book))
  end

  test "should destroy ticket_book" do
    assert_difference('TicketBook.count', -1) do
      delete :destroy, id: @ticket_book
    end

    assert_redirected_to ticket_books_path
  end
end
