class CreateLinks < ActiveRecord::Migration[5.1]
  def change
    create_table :links do |t|
      t.references :user, foreign_key: true
      t.string :link_title
      t.string :url

      t.timestamps
    end
  end
end
