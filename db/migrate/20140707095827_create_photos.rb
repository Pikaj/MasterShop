class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :references
      t.attachment :image
      t.string :product

      t.timestamps
    end
  end
end
