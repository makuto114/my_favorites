class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string        :name,        null: false
      t.text          :introduction
      t.timestamps
    end
  end
end
