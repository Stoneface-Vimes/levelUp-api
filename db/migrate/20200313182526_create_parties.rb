class CreateParties < ActiveRecord::Migration[5.2]
  def change
    create_table :parties, id: :uuid do |t|
      t.integer :number_of_members, limit: 6
      t.text :party_name, limit: 64
      t.string :mentor_id, limit: 255

      t.timestamps
    end
  end
end
