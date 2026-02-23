SMODS.Joker {
  key = "claymation",
  config = {
    extra = {
    }
  },
  rarity = 3,
  pos = { x = 5, y = 6 },
  atlas = 'joker_atlas',
  cost = 6,
  unlocked = true,
  discovered = true,
  blueprint_compat = true,
  eternal_compat = true,
  perishable_compat = true,

  loc_vars = function(self, info_queue, card)
    return {
    }
  end,

  calculate = function(self, card, context)
    if context.first_hand_drawn and #G.deck.cards > 0 then
      local clay_cards = {}
			for i = 1, #G.deck.cards do
				if G.deck.cards[i].config.center == G.P_CENTERS.m_artb_clay then
					clay_cards[#clay_cards+1] = G.deck.cards[i]
				end
			end
      if #clay_cards > 0 then
        draw_card(G.deck, G.hand, nil, "up", true, pseudorandom_element(clay_cards, pseudoseed('claymation')))
      end
    end
  end
}
