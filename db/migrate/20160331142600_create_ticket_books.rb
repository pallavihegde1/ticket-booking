class CreateTicketBooks < ActiveRecord::Migration
  def change
    create_table :ticket_books do |t|
      t.string :name
      t.string :tnumber
      t.date :issuedate
      t.boolean :is_cancelled, default:false
      t.date :canceldate
      t.date :journeydate

      t.timestamps null: false
    end
  end
end
