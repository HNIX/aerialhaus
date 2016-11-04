class CreatePhotos < ActiveRecord::Migration[5.0]
  def change
    create_table :photos do |t|
      t.references :project, foreign_key: true
      t.attachment :image

      t.timestamps
    end
  end
end
