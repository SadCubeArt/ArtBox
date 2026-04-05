SMODS.Joker {
  key = "scalper",
  config = {
    mod_conv = "c_artb_joker_collectable",
    extra = {
      price = 5
    }
  },
  rarity = 1,
  pos = { x = 7, y = 6 },
  atlas = 'joker_atlas',
  cost = 5,
  unlocked = true,
  discovered = true,
  blueprint_compat = false,
  eternal_compat = true,
  perishable_compat = true,

  loc_vars = function(self, info_queue, card)
    info_queue[#info_queue + 1] = G.P_CENTERS[self.config.mod_conv]
    return {
      vars = {
        card.ability.extra.price
      }
    }
  end,

  calculate = function(self, card, context)
    if context.starting_shop then
      local dollars = G.GAME.dollars

      while dollars >= card.ability.extra.price do
        dollars = dollars - card.ability.extra.price

        G.E_MANAGER:add_event(Event({
            trigger = 'after',
            delay = 0.4,
            func = function()
                play_sound('timpani')
                card:juice_up(0.3, 0.5)
                if G.GAME.dollars ~= 0 then
                    ease_dollars(-G.GAME.dollars, true)
                end
                return true
            end
        }))

        G.E_MANAGER:add_event(Event({
          trigger = 'after',
          delay = 0.4,
          func = function()
            if pseudorandom("appraisal") < 0.05 then
              local new_card = create_card("collectable", G.consumables, nil, nil, nil, nil,
                'c_artb_limited_edition_collectable')
              new_card:add_to_deck()
              G.consumeables:emplace(new_card)
            else
              local new_card = create_card("collectable", G.consumables, nil, nil, nil, nil, 'c_artb_joker_collectable')
              new_card:add_to_deck()
              G.consumeables:emplace(new_card)
            end
            return true
          end
        }))
      end
    end
  end
}
