class CreateQuests < ActiveRecord::Migration[5.2]
  def change
    create_table :quests do |t|
      t.text :party_key, limit: 255
      t.text :user_key
      t.text :title, limit: 64
      t.text :quest_description
      t.text :status
      t.text :mentor_id
      t.timestamp :date_finished

      t.timestamps
    end
  end
end
