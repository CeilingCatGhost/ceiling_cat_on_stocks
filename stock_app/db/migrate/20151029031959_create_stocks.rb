class CreateStocks < ActiveRecord::Migration
  def change
    create_table :stocks do |t|
      t.string :ticker_symbol
      t.string :comp_name
      t.date :founded_date
      t.date :ipo_date
      t.string :sector
      t.string :industry

      t.timestamps null: false
    end
  end
end
