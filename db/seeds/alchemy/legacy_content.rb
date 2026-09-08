# frozen_string_literal: true

# The original campaign content from before this app's database engine
# switched from PostgreSQL to SQLite (see db/dm-adventure-book_dump).
# Restored via db/seeds.rb, guarded so it only runs once.
module Seeds
  module LegacyAlchemyContent
    PAGES = [ { old_id: "5",
  name: "Index",
  urlname: "index",
  title: "Index",
  page_layout: "scene",
  language_root: true,
  visible: true,
  public_on: "2019-01-08 11:49:00",
  public_until: nil,
  elements:
   [ { name: "headline",
     ingredients:
      [ { role: "headline_name",
        value: "Deekin's Merry Henchmen in \"The Thran Invasion\"" } ] },
    { name: "text",
     ingredients:
      [ { role: "text_content",
        value:
         "<p>Hi, welcome on the site. If your are one of:</p>\r\n" +
         "<p style=\"padding-left: 30px;\">- Little Crow<br>- Moras<br>- Fairuza<br>- Zaldar<br>- Hacklor</p>\r\n" +
         "<p>Then this is the site where you can find all kinds of information. </p>" } ] } ],
  children:
   [ { old_id: "9",
     name: "For the DM",
     urlname: "for-the-dm",
     title: "For the DM",
     page_layout: "scene",
     language_root: false,
     visible: false,
     public_on: nil,
     public_until: nil,
     elements:
      [ { name: "headline", ingredients: [ { role: "headline_name", value: nil } ] },
       { name: "text", ingredients: [ { role: "text_content", value: nil } ] } ],
     children: [] },
    { old_id: "8",
     name: "For the Players",
     urlname: "for-the-players",
     title: "For the Players",
     page_layout: "scene",
     language_root: false,
     visible: true,
     public_on: "2019-01-10 19:32:00",
     public_until: nil,
     elements:
      [ { name: "headline", ingredients: [ { role: "headline_name", value: nil } ] },
       { name: "text", ingredients: [ { role: "text_content", value: nil } ] } ],
     children:
      [ { old_id: "7",
        name: "Rules, Homebrew and Rulings",
        urlname: "for-the-players/rules-homebrew-and-rulings",
        title: "Rules, Homebrew and Rulings",
        page_layout: "scene",
        language_root: false,
        visible: true,
        public_on: "2019-01-08 12:13:00",
        public_until: nil,
        elements:
         [ { name: "text",
           ingredients:
            [ { role: "text_content",
              value:
               "<p>These are the extra rules we use during our games. If we make a ruling to do things other than stated in the 5th Edition rules, we will also add those here.</p>" } ] },
          { name: "headline",
           ingredients: [ { role: "headline_name", value: "(Optional) Rules" } ] },
          { name: "text",
           ingredients:
            [ { role: "text_content",
              value:
               "<p>As per the optional rule in the PHB 165, when leveling up, players can choose Feats instead of an Ability Score Increase (ASI).</p>" } ] },
          { name: "headline",
           ingredients: [ { role: "headline_name", value: "Mana" } ] },
          { name: "text",
           ingredients:
            [ { role: "text_content",
              value:
               "<p>Instead of the standard D&amp;D Alignments and Inspiration, Players gain Mana, determining their coloured alignments. Each colour stands for a personality trait. Your colour is based on your actions. There is no definition of Good or Evil between colours, Good or Evil are just two sides of the same coin, or in this case, Colour Wheel. </p>\r\n" +
               "<p>The five colours are:</p>\r\n" +
               "<p>- White <em>Order and Morality.</em><br>- Blue  <em>Logic, Knowledge and Technology</em><br>- Black <em>Amorality and Selfishness. Possibly Wealth</em><br>- Red <em>Freedom, Emotion, Chaos, Impulse<br></em>- Green <em>Instinct, Nature, Community</em></p>" } ] },
          { name: "headline",
           ingredients: [ { role: "headline_name", value: "Gaining Mana" } ] },
          { name: "text",
           ingredients:
            [ { role: "text_content",
              value:
               "<p>Whenever you do something awesome, you gain mana. The way of doing it determines the color of mana you gain.</p>\r\n" +
               "<p style=\"padding-left: 30px;\"><em>DM: You have succesfully entered the enemies base. You interrupt them in a meeting What do you do?<br>Player: I stand a pencil upright on the table and say \"Let me show you a trick. I can make this pencil dissappear\". Then I slam one of the croonies head in the pencil while shouting \"Tada!\"<br>DM: That is so cool. You gain 1 black mana.</em></p>" } ] },
          { name: "headline",
           ingredients: [ { role: "headline_name", value: "Using Mana" } ] },
          { name: "text",
           ingredients:
            [ { role: "text_content",
              value:
               "<p>You can spend mana to reroll a die and have to use the new value. This can be any die, after you've rolled and after you hear the result. If you do so, if you use mana to attack or cast a spell, the attack or spells gains the color of the mana spend.</p>" } ] },
          { name: "text",
           ingredients:
            [ { role: "text_content",
              value:
               "<p>Each color has two allies (the colors next to it) and two enemies (the colors opposite it). You have Resistance to attacks and spells from allied colours and Vulnerability to attacks and spells from enemy colours.</p>\r\n" +
               "<p>All bosses are coloured creatures. </p>\r\n" +
               "<p> </p>" } ] },
          { name: "headline",
           ingredients:
            [ { role: "headline_name", value: "Strongholds & Followers" } ] },
          { name: "text",
           ingredients:
            [ { role: "text_content",
              value:
               "<p>Strongholds grant special abilities, which quickly run out of uses and must be recharged by taking an <strong>extended rest</strong>.</p>\r\n" +
               "<p>An extended rest is spending a <strong>ten-day</strong> at your Stronghold.</p>" } ] } ],
        children: [] },
       { old_id: "6",
        name: "Moonstone Mask",
        urlname: "for-the-players/moonstone-mask",
        title: "Moonstone Mask",
        page_layout: "scene",
        language_root: false,
        visible: true,
        public_on: "2019-01-08 11:54:00",
        public_until: nil,
        elements:
         [ { name: "headline",
           ingredients: [ { role: "headline_name", value: "Moonstone Mask" } ] },
          { name: "text",
           ingredients:
            [ { role: "text_content",
              value:
               "<p>The Moonstone Mask is an Inn, situated on a floating earth mote. <br>Deekins shop \"Deekin's keep rain from Deekin's head shoppe shoppe\" is also on this earth mote.</p>" } ] },
          { name: "headline",
           ingredients:
            [ { role: "headline_name", value: "Stronghold and Abilities" } ] },
          { name: "text",
           ingredients:
            [ { role: "text_content",
              value:
               "<p>As a thank you for all their efforts, the PCs are allowed to use the Moonstone Mask earthmote as their base of operations. They can use it as a homebase and expand it if they so desire.</p>" } ] },
          { name: "text",
           ingredients:
            [ { role: "text_content",
              value:
               "<p>A mythal has been installed into the earthmote. This allows the Moonstone Mask to move.<br>The Moonstone Mask can travel to other destinations.</p>" } ] },
          { name: "text",
           ingredients:
            [ { role: "text_content",
              value:
               "<p>Being a floating, moving earthmote, additional rules apply to demesne effects.</p>\r\n" +
               "<p>If the Moonstone Mask is in a area not associated with any stronghold for <strong>one month</strong>, then you gain 1 desmene hex. For each additional Stronghold level it takes a month to expand the size of your demesne. </p>\r\n" +
               "<p>The demesne of the Moonstone Mask <strong>does not</strong> move with it, but it can be outside of it temporarily. For <strong>each month</strong> the hex has been your demesne, the Moonstone Mask can be away for <strong>that many weeks</strong>. If the Moonstone Mask is not back before the end of the week, the <em>entire</em> demesne area <br>For example, if you have been in an area for 3 months, the Moonstone Mask can stay away for 3 weeks before you lose the demesne.</p>" } ] } ],
        children: [] } ] } ] } ]

    LEGACY_URLS = [ { page_old_id: "6", urlname: "index/moonstone-mask" },
 { page_old_id: "7", urlname: "index/rules-homebrew-and-rulings" },
 { page_old_id: "8", urlname: "index/for-the-players" },
 { page_old_id: "9", urlname: "index/for-the-dm" },
 { page_old_id: "7", urlname: "rules-homebrew-and-rulings" },
 { page_old_id: "6", urlname: "moonstone-mask" } ]

    def self.seed!
      return if Alchemy::Page.exists?

      site = Alchemy::Site.create!(host: '*', name: 'Default Site', public: false)
      language = Alchemy::Language.create!(
        site: site,
        name: 'English',
        language_code: 'en',
        locale: 'en',
        frontpage_name: 'Index',
        page_layout: 'index',
        country_code: '',
        public: true,
        default: true
      )

      page_by_old_id = {}
      PAGES.each { |page| create_page(page, nil, language, page_by_old_id) }

      LEGACY_URLS.each do |row|
        page = page_by_old_id[row[:page_old_id]]
        next unless page

        Alchemy::LegacyPageUrl.create!(urlname: row[:urlname], page: page)
      end
    end

    def self.create_page(data, parent_page, language, page_by_old_id)
      page = Alchemy::Page.new(
        name: data[:name],
        urlname: data[:urlname],
        page_layout: data[:page_layout],
        language: language,
        language_root: data[:language_root],
        visible: data[:visible],
        parent: parent_page,
        autogenerate_elements: false
      )
      version = page.draft_version
      version.title = data[:title]
      version.public_on = data[:public_on] && Time.zone.parse(data[:public_on])
      version.public_until = data[:public_until] && Time.zone.parse(data[:public_until])
      page.save!

      page_by_old_id[data[:old_id]] = page

      data[:elements].each do |element_data|
        element = Alchemy::Element.create!(page_version: version, name: element_data[:name])
        element_data[:ingredients].each do |ingredient_data|
          element.ingredient_by_role(ingredient_data[:role]).update!(value: ingredient_data[:value])
        end
      end

      data[:children].each { |child| create_page(child, page, language, page_by_old_id) }
    end
  end
end
