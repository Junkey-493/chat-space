class CreateMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :messages do |t|
      t.string :content, null: false
      t.text :image
      t.timestamps
    end
  end
end
