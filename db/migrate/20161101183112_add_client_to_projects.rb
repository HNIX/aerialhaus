class AddClientToProjects < ActiveRecord::Migration[5.0]
  def change
    add_column :projects, :client, :string
  end
end
