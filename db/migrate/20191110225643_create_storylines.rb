class CreateStorylines < ActiveRecord::Migration[6.0]
  def change
    create_table :storylines do |t|
      t.string :header
      t.text :story_body
      t.string :img_url
      t.integer :campaign_id
      t.integer :option_1_id
      t.integer :option_2_id
      t.timestamps
    end
  end
end
