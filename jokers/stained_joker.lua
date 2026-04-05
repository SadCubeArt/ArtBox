SMODS.Joker {
  key = "stained_joker",
  config = {
    mod_conv = "m_artb_stained",
  },
  rarity = 3,
  pos = { x = 1, y = 5 },
  atlas = 'joker_atlas',
  cost = 6,
  unlocked = true,
  discovered = true,
  blueprint_compat = false,
  eternal_compat = true,
  perishable_compat = true,

  loc_vars = function(self, info_queue, card)
    info_queue[#info_queue + 1] = G.P_CENTERS[self.config.mod_conv]
  end,

  calculate = function(self, card, context)
    if context.first_hand_drawn then
      local eval = function() return G.GAME.current_round.discards_used == 0 and not G.RESET_JIGGLES end
      juice_card_until(card, eval, true)
    end
    if context.pre_discard and not context.blueprint and
        G.GAME.current_round.discards_used <= 0 and #context.full_hand == 1 then
      for _, discarded_card in ipairs(context.full_hand) do
        discarded_card:set_ability('m_artb_stained', nil, true)
      end

      return {
        message = localize('artb_stained'),
        colour = G.C.CHIPS
      }
    end
  end
}
