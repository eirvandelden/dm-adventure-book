# frozen_string_literal: true

class AddValueToItem < ActiveRecord::Migration[5.0]
  def change
    add_column :items, :value, :string
  end
end
