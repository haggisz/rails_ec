class ChangeTable < ActiveRecord::Migration[7.0]
  def change
    change_table :products do |t|
      t.remove :title, :string
      t.remove :body, :string

      t.string :name
      t.string :image
      t.string :price
      t.string :action
    end
  end
end
