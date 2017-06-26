class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.string :text
      t.belongs_to :post, index: true
      t.timestamps
    end
  end
end
