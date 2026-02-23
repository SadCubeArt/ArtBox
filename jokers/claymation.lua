SMODS.Joker {
  key = "claymation",
  config = {
    extra = {
      chosen_card = nil
    }
  },
  rarity = 3,
  pos = { x = 5, y = 6 },
  atlas = 'joker_atlas',
  cost = 6,
  unlocked = true,
  discovered = true,
  blueprint_compat = false,
  eternal_compat = true,
  perishable_compat = true,

  loc_vars = function(self, info_queue, card)
    return {
    }
  end,

  calculate = function(self, card, context)

    if context.drawing_cards and not G.GAME.current_round.any_hand_drawn and G.GAME.facing_blind and not context.blueprint then
      local clay_indexes = {}
      for i, v in ipairs(G.deck.cards) do
        if SMODS.has_enhancement(v, 'm_artb_clay') and not v.claymated then
          table.insert(clay_indexes, i)
        end
      end
      if #clay_indexes > 0 then
        local chosen_index = pseudorandom_element(clay_indexes, pseudoseed('claymation'))
        card.ability.extra.chosen_card = G.deck.cards[chosen_index]
        card.ability.extra.chosen_card.claymated = true
        table.remove(G.deck.cards, chosen_index)
        table.insert(G.deck.cards, #G.deck.cards + 1, card.ability.extra.chosen_card)
      end
    end

    if context.artb_draw and context.other_card == card.ability.extra.chosen_card and not context.blueprint then
      card.ability.extra.chosen_card = nil
      context.other_card.claymated = nil
      G.E_MANAGER:add_event(Event({
          func = function()
              context.other_card:juice_up()
              return true;
          end
      }))
      return {
        message = localize('artb_molded')
      }
    end
  end
}
