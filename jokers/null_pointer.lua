SMODS.Joker {
  key = "null_pointer",
  rarity = 1,
  pos = { x = 6, y = 5 },
  soul_pos = { x = 7, y = 5 },
  atlas = 'joker_atlas',
  cost = 6,
  unlocked = true,
  discovered = true,
  blueprint_compat = false,
  eternal_compat = false,
  perishable_compat = false,

  loc_vars = function(self, info_queue, card)
  end,

  add_to_deck = function(self, card)
    local rankless_keys = {
      'm_stone'
    }

    for k, v in pairs(G.P_CENTERS) do
      if v.no_rank then
        rankless_keys[#rankless_keys + 1] = k
      end
    end

    while #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit do
      G.GAME.consumeable_buffer = G.GAME.consumeable_buffer + 1
      G.E_MANAGER:add_event(Event({
        func = function()
          ArtBox.create_collectable(pseudorandom_element(rankless_keys, 'nullptr'))
          G.GAME.consumeable_buffer = 0
          return true;
        end
      }))
    end
  end,

  calculate = function(self, card, context)
    if context.selling_self then
      local rankless_keys = {
      'm_stone'
    }

    for k, v in pairs(G.P_CENTERS) do
      if v.no_rank then
        rankless_keys[#rankless_keys + 1] = k
      end
    end

    while #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit do
      G.GAME.consumeable_buffer = G.GAME.consumeable_buffer + 1
      G.E_MANAGER:add_event(Event({
        func = function()
          ArtBox.create_collectable(pseudorandom_element(rankless_keys, 'nullptr'))
          G.GAME.consumeable_buffer = 0
          return true;
        end
      }))
    end
    end
  end
}
