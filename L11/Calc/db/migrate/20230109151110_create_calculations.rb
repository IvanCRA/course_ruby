class CreateCalculations < ActiveRecord::Migration[6.1]
  def change
    create_table :calculations do |t|
      t.string :source_numbers
      t.json :results

      t.timestamps
    end
  end
end
