class AddIdadeToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :idade, :integer
  end
end
