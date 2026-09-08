class ReplacePageIdWithPageVersionIdOnElements < ActiveRecord::Migration[8.1]
  # The 2018-era "alchemy_four_point_zero" bootstrap migration created
  # alchemy_elements with a direct page_id (and a cell_id, from the
  # long-gone Cell/Content/Essence content model). Modern AlchemyCMS
  # elements belong to a page_version instead, and cells/contents/essences
  # were replaced by ingredients years ago.
  #
  # This does NOT backfill page_version_id for existing elements, and drops
  # the Cell/Content/Essence tables outright rather than converting their
  # rows to ingredients. It is only safe to run against an empty database.
  # Real content is restored afterwards from db/seeds/alchemy/legacy_content.rb,
  # not migrated in place.
  def up
    add_reference :alchemy_elements, :page_version,
      foreign_key: { to_table: :alchemy_page_versions, on_delete: :cascade }
    add_column :alchemy_elements, :fixed, :boolean, default: false, null: false

    remove_column :alchemy_elements, :page_id, :integer
    remove_column :alchemy_elements, :cell_id, :integer
    remove_column :alchemy_elements, :cached_tag_list, :text

    change_column_null :alchemy_elements, :page_version_id, false

    %w[
      alchemy_cells
      alchemy_contents
      alchemy_essence_booleans
      alchemy_essence_dates
      alchemy_essence_files
      alchemy_essence_htmls
      alchemy_essence_links
      alchemy_essence_pictures
      alchemy_essence_richtexts
      alchemy_essence_selects
      alchemy_essence_texts
    ].each { |table| drop_table table if table_exists?(table) }
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
