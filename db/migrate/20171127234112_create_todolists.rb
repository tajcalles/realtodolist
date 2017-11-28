class CreateTodolists < ActiveRecord::Migration[5.1]
  def change
    create_table :todolists do |t|
      t.string :list, null: false
      t.string :item, null: false
      t.boolean :status, default:  true
      t.timestamps
    end
  end
end
