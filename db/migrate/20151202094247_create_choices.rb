class CreateChoices < ActiveRecord::Migration
  def change
    create_table :choices do |t|
      t.integer :election_id
      t.integer :first_id
      t.integer :second_id
      t.integer :third_id
      t.integer :nogo_id

      t.timestamps null: false
    end
  end
end
