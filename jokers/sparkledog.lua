SMODS.Joker {
    key = "sparkledog",
    config = {
      extra = {
        chips_added=12
      }
    },
    rarity = 1,
    pos = { x = 0, y = 6},
    atlas = 'joker_atlas',
    cost = 5,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,

    loc_vars = function(self, info_queue, card)
      local unique_modifiers = ArtBox.unique_modifiers_in_deck()

        return {
          vars = {
            card.ability.extra.chips_added,
            unique_modifiers * card.ability.extra.chips_added
          }
        }
    end,

    calculate = function(self, card, context)
      if context.joker_main then
        return {
          chips = ArtBox.unique_modifiers_in_deck() * card.ability.extra.chips_added
        }
      end
    end
    }

    ArtBox.unique_modifiers_in_deck = function()
      local modifiers = {}

      if G.playing_cards then
        for _, v in pairs(G.playing_cards) do
          for k, _ in pairs(SMODS.get_enhancements(v)) do
            ArtBox.add_modifier_to_list(modifiers, k)
          end

          if v.seal then
            ArtBox.add_modifier_to_list(modifiers, v.seal)
          end

          if v.edition then
            ArtBox.add_modifier_to_list(modifiers, v.edition.key)
          end

        end
      end

      return #modifiers or 0
    end

    ArtBox.add_modifier_to_list = function(tbl, value)
      for _, v in pairs(tbl) do
        if v == value then
          return
        end
      end
      table.insert(tbl, value)
    end

