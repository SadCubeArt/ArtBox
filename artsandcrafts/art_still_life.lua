SMODS.Consumable ({
    object_type = "Consumable",
     atlas = 'arts_atlas',
	key = 'art_still_life',
	set = 'art',
	name = 'Still Life',
    config = {
        mod_conv = "c_artb_gros_michel_collectable",
    },
	pos = { x = 1, y = 2 },
	cost = 4,
	unlocked = true,
	discovered = true,
    can_use = function(self, card)
		return true
	end,
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue + 1] = G.P_CENTERS[self.config.mod_conv]
    return {
      vars = {
        G.GAME.probabilities.normal
      }
    }
    end,

    use = function(self, card, area)
      if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit or next(SMODS.find_card('c_artb_gros_michel_collectable', count_debuffed)) then
        G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
          if pseudorandom("still_life") < 0.05 then
            local new_card = create_card("collectable", G.consumables, nil, nil, nil, nil, 'c_artb_cavendish_collectable')
            new_card:add_to_deck()
            G.consumeables:emplace(new_card)
          else
            local new_card = create_card("collectable", G.consumables, nil, nil, nil, nil, 'c_artb_gros_michel_collectable')
            new_card:add_to_deck()
            G.consumeables:emplace(new_card)
          end
        return true end }))
      end
    end

    
})