class CreateStockists < ActiveRecord::Migration[5.1]
  def change
    create_table :stockists do |t|

      t.timestamps
    end
  end
end
