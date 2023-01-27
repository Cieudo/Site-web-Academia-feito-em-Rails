class CreateAulas < ActiveRecord::Migration[7.0]
  def change
    create_table :aulas do |t|
      t.string :nome
      t.text :description
      t.string :image_url

     
    end
  end
end
