class CreateIdeas < ActiveRecord::Migration[6.1]
  def change
    create_table :ideas do |t|
      t.string :title, null: false
      t.text :opinion, null: false
      t.string :idea_image

      t.timestamps
    end
  end
end
