class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.string :content
      t.references :restaurant, index: true, foreign_key: true

      t.timestamps null:false
    end
  end
end
