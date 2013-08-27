class CreateMicsroposts < ActiveRecord::Migration
  def change
    create_table :micsroposts do |t|
      t.string :content
      t.integer :user_id

      t.timestamps
    end
  end
end
