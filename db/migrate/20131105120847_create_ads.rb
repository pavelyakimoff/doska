class CreateAds < ActiveRecord::Migration
  def change
    create_table :ads do |t|
      t.string :title
      t.text :content
      t.string :category_id
      t.integer :author_id
      t.string :phone

      t.timestamps
    end
  end
end
