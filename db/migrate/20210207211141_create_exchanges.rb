class CreateExchanges < ActiveRecord::Migration[6.0]
  def change
    create_table :exchanges do |t|
      t.date :date
      t.json :rates

      t.timestamps
    end
  end
end
