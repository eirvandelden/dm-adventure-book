# frozen_string_literal: true

class AddMagicToItem < ActiveRecord::Migration[5.0]
  def change
    add_column :items, :magic, :integer
  end
end
