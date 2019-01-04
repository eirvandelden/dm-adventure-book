# frozen_string_literal: true

class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :name
      t.string :item_type
      t.integer :weight
      t.text :text
      t.integer :ac
      t.integer :strength
      t.boolean :stealth
      t.string :dmg1
      t.string :dmg2
      t.string :dmgType
      t.string :property
      t.string :range

      t.timestamps
    end
  end
end
