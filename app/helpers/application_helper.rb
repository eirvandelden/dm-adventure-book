# render_navigation was removed from AlchemyCMS in favor of the admin-curated
# Alchemy::Node menu system, but this app renders a simple page-tree menu
# instead, so we keep a small compatible replacement here.
module ApplicationHelper
  # Alchemy's navigation partials (app/views/alchemy/navigation/*) read all of
  # these keys during their recursive rendering.
  NAVIGATION_DEFAULTS = {
    submenu: false,
    all_sub_menues: false,
    spacer: nil,
    navigation_partial: "alchemy/navigation/renderer",
    navigation_link_partial: "alchemy/navigation/link",
    show_nonactive: false,
    show_title: true,
    reverse: false,
    reverse_children: false
  }.freeze

  def render_navigation(options = {}, html_options = {})
    options = NAVIGATION_DEFAULTS.merge(from_page: @root_page || Alchemy::Language.current_root_page).merge(options)
    page = options[:from_page]
    return nil if page.blank?

    # Alchemy renamed the :see ability action to :read at some point after
    # 4.6.7, and now folds visibility (published, not restricted) into it -
    # `visible` is a leftover column from the app's original 2018 schema
    # that Alchemy 8.3 no longer reads or exposes anywhere in the admin UI.
    pages = page.children.accessible_by(current_ability, :read).to_a
    pages.reverse! if options[:reverse]

    render options[:navigation_partial], options: options, pages: pages, html_options: html_options
  end

  # Consistent with AlchemyCMS's own (removed) implementation: reaches
  # directly for the @page ivar the controller sets, rather than a helper
  # method, since Alchemy never exposed one.
  def page_active?(page)
    @page.present? && (@page == page || @page.self_and_ancestors.include?(page))
  end
end
