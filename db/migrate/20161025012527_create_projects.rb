class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.string :title
      t.text :description
      t.string :link
      t.attachment :image
      t.string :type

      t.timestamps
    end
  end
end
