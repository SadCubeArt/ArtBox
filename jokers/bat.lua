SMODS.Joker {
  key = "bat",
  config = {
    extra = {
      used = false,
    }
  },
  rarity = 1,
  pos = { x = 7, y = 2 },
  atlas = 'joker_atlas',
  cost = 4,
  unlocked = true,
  discovered = true,
  blueprint_compat = false,
  eternal_compat = true,
  perishable_compat = true,

  loc_vars = function(self, info_queue, card)
    return {
      vars = {
        card.ability.extra.used,
      }
    }
  end,

  calculate = function(self, card, context)
    if context.setting_blind then
      card.ability.extra.used = false
      local eval = function(_c) return not _c.ability.extra.used and not G.RESET_JIGGLES end
      G.E_MANAGER:add_event(Event({
        func = function()
          juice_card_until(card, eval, true)
          return true;
        end
      }))
    end


    if context.destroy_card and (context.cardarea == G.play or context.cardarea == 'unscored') and #context.full_hand == 1 and card.ability.extra.used == false then
      SMODS.calculate_effect({ message = localize('artb_bonk'), colour = G.C.MULT }, card)
      card.ability.extra.used = true
      return { remove = true }
    end
  end
}
