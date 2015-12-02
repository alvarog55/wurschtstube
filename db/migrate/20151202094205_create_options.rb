class CreateOptions < ActiveRecord::Migration
  def change
    create_table :options do |t|
      t.integer :election_id
      t.string :link
      t.string :text

      t.timestamps null: false
    end
  end
end
