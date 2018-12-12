# frozen_string_literal: true

# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

# Configuration
ITEM_COMPENDIUM = ''
ITEM_COMPENDIUM = 'data/Items Compendium 1.7.0.xml'

# Helpers
def load_compendium(path_to_compendium)
  @doc = File.open(path_to_compendium) { |f| Nokogiri::XML(f) }
end

##########
# Items
##########

load_compendium ITEM_COMPENDIUM
@doc.xpath('//item').each do |item_xml|
  puts '*' * 10
  item = Item.new
  item.from_xml item_xml.to_xml
  item.save unless item.item_type == '$'

  puts "Item added: #{item.name}"
end
