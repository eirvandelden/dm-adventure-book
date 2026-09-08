require "test_helper"

class NavigationTest < ActionDispatch::IntegrationTest
  setup do
    site = Alchemy::Site.create!(host: "*", name: "Test Site")
    language = Alchemy::Language.create!(
      site: site,
      name: "English",
      language_code: "en",
      locale: "en",
      frontpage_name: "Home",
      page_layout: "scene",
      country_code: "",
      public: true,
      default: true
    )
    @root_page = Alchemy::Page.create!(
      name: "Home",
      urlname: "home",
      page_layout: "scene",
      language: language,
      language_root: true,
      visible: true,
      autogenerate_elements: false
    )
    @visible_child = create_child_page(@root_page, name: "Visible Page", visible: true, restricted: false)
    @restricted_child = create_child_page(@root_page, name: "Restricted Page", visible: true, restricted: true)
    Alchemy::Page::Publisher.new(@root_page).publish!(public_on: Time.current)
  end

  test "the public navigation lists visible, unrestricted pages" do
    get "/home"

    assert_includes @response.body, @visible_child.name
  end

  test "the public navigation excludes restricted pages" do
    get "/home"

    assert_not_includes @response.body, @restricted_child.name
  end

  private

  def create_child_page(parent, name:, visible:, restricted:)
    page = Alchemy::Page.create!(
      name: name,
      page_layout: "scene",
      language: parent.language,
      parent: parent,
      visible: visible,
      restricted: restricted,
      autogenerate_elements: false
    )
    Alchemy::Page::Publisher.new(page).publish!(public_on: Time.current)
    page
  end
end
