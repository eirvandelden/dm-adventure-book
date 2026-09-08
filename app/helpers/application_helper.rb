# frozen_string_literal: true

# render_navigation was removed from AlchemyCMS in favor of the admin-curated
# Alchemy::Node menu system, but this app renders a simple page-tree menu
# instead, so we keep a small compatible replacement here.
module ApplicationHelper
  def render_navigation(options = {}, html_options = {})
    options = {
      submenu: false,
      all_sub_menues: false,
      from_page: @root_page || Alchemy::Language.current_root_page,
      spacer: nil,
      navigation_partial: 'alchemy/navigation/renderer',
      navigation_link_partial: 'alchemy/navigation/link',
      show_nonactive: false,
      show_title: true,
      reverse: false,
      reverse_children: false
    }.merge(options)

    page = options[:from_page]
    return nil if page.blank?

    pages = page.children.where(visible: true).to_a
    pages.reverse! if options[:reverse]

    render options[:navigation_partial],
      options: options,
      pages: pages,
      html_options: html_options
  end

  def page_active?(page)
    @page.present? && (@page == page || @page.self_and_ancestors.include?(page))
  end
end
