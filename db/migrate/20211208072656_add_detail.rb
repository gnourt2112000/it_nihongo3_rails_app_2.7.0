class AddDetail < ActiveRecord::Migration[6.1]
  def change
    add_column :games, :detail, :text
  end
end
