class Item < ApplicationRecord
  include ActiveModel::Serializers::Xml

  def attributes=(hash)
    hash.each do |key, value|
      case key
      when "type"
        send("item_type=", value)
      when "roll"
        puts "skipping adding roll for now"
      when "modifier"
        puts "skipping modifiers for now"
      when "text"
        value.is_a?(Array) ? send("#{key}=", value.join("\n")) : send("#{key}=", value)

      else
        send("#{key}=", value)
      end
    end
  end

  def attributes
    { "name" => nil }
  end
end
