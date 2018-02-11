class AddContentToPages < ActiveRecord::Migration[5.1]
  def change
    add_column :pages, :content, :string
  end
end
