# frozen_string_literal: true

class Importer
  def self.import!
    Spell.transaction do
      i = Importer.new

      CharacterClass.delete_all
      Spell.delete_all

      # i.classes.each { |name| CharacterClass.create(name: name) }
      i.spells.each(&:import!)
    end
  end

  class SpellData
    attr_reader :name, :level, :school, :time, :range, :components, :duration,
                :range, :roll, :ritual, :classes, :description

    def initialize(xml_data)
      @description = []

      # Process attributes
      xml_data.each do |el|
        case el.name
        when 'name' then @name = el.content
        when 'level' then @level = el.content.to_i
        when 'school' then @school = el.content
        when 'time' then @time = el.content
        when 'components' then @components = el.content
        when 'duration' then @duration = el.content
        when 'classes' then @classes = el.content.split(',').map(&:strip)
        when 'range' then @range = el.content
        when 'roll' then @roll = el.content
        when 'ritual' then @ritual = el.content
        when 'text' then @description << el.content
        else
          puts "Unrecognized field: #{el.name}"
        end
      end

      @description = @description.join("\n")
    end

    def import!
      puts "Importing `#{@name}`"
      spell = Spell.create!(attributes)

      classes.each do |class_name|
        char_class = CharacterClass.where(name: class_name).first_or_create
        char_class.spells << spell
      end
    end

    def attributes
      {
        name: name,
        level: level,
        school: school,
        time: time,
        range: range,
        components: components,
        duration: duration,
        range: range,
        roll: roll,
        ritual: ritual,
        description: description
      }
    end

    def to_s
      "[#{classes}] #{level} - #{name}"
    end
  end

  attr_reader :spells, :filename, :classes

  def initialize(filename = 'data/spell-compendium.xml')
    @spells = []
    @classes = []
    @filename = filename
    load_spells
  end

  private

  def load_spells
    load_compendium

    @doc.xpath('//spell').each do |xml|
      @spells << SpellData.new(xml.element_children)
    end

    @classes = @spells.map(&:classes).flatten.uniq
  end

  def load_compendium
    raise "Compendium file `#{filename}` not found." unless File.exist?(filename)

    @doc = File.open(filename) { |f| Nokogiri::XML(f) }
  end
end
