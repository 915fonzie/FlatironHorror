class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :username
      t.string :password_digest
      t.boolean :campaign_1_finished
      t.boolean :campaign_2_finished
      t.boolean :campaign_3_finished
      t.timestamps
    end
  end
end
