json.array!(@ticket_books) do |ticket_book|
  json.extract! ticket_book, :id, :name, :tnumber, :issuedate, :is_cancelled, :canceldate, :journeydate
  json.url ticket_book_url(ticket_book, format: :json)
end
