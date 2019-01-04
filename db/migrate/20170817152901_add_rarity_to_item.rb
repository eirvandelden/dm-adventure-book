# frozen_string_literal: true

class AddRarityToItem < ActiveRecord::Migration[5.0]
  def change
    add_column :items, :rarity, :string
  end
end
