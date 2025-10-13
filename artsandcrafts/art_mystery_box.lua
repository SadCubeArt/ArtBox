SMODS.Consumable({
	object_type = "Consumable",
	atlas = 'arts_atlas',
	key = 'art_mystery_box',
	set = 'art',
	name = 'Mystery Box',
	pos = { x = 2, y = 2 },
	cost = 4,
	unlocked = true,
	discovered = true,

	use = function(self, card, area)

		while #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit do
            G.GAME.consumeable_buffer = G.GAME.consumeable_buffer + 1
			local random_roll = pseudorandom("box")

			if random_roll<0.05 then
				G.E_MANAGER:add_event(Event({
				  func = function()
					ArtBox.create_collectable(poll_edition('mystery', nil, true, true))
					G.GAME.consumeable_buffer = 0
					return true
				  end
			    }))
			elseif random_roll<0.3 then
				G.E_MANAGER:add_event(Event({
				  func = function()
					local valid_keys = {}
                    for _, seal_center in pairs(G.P_CENTER_POOLS["Seal"]) do
                      valid_keys[#valid_keys + 1] = seal_center.key
                    end
		            ArtBox.create_collectable(pseudorandom_element(valid_keys, pseudoseed("mystery")))
					G.GAME.consumeable_buffer = 0
					return true
				  end
			    }))
			else
				G.E_MANAGER:add_event(Event({
				  func = function()
					ArtBox.create_collectable(SMODS.poll_enhancement({guaranteed = true, key = 'mystery'}))
					G.GAME.consumeable_buffer = 0
					return true
				  end
			    }))
			end
        end
	end,

	can_use = function(self, card, area)
		return true
	end
})
