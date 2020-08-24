class CreateListings < ActiveRecord::Migration[6.0]
  def change
    create_table :listings do |t|
      t.string :title
      t.string :description
      t.string :rating
      t.string :price
      t.string :location
      t.string :host
      t.string :host_rating
      t.string :image
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
