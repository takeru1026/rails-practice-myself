class CreateIdeas < ActiveRecord::Migration[6.1]
  def change
    create_table :ideas do |t|
      t.text :opinion, null: false
      t.string :idea_image
      t.integer :end_user_id

      t.timestamps
    end
  end
end
