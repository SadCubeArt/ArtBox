SMODS.Consumable {
    object_type = "Consumable",
	key = 'infinity',
	set = 'Spectral',
	name = 'Infinity',
	pos = { x = 0, y = 0 },
	cost = 4,
	unlocked = true,
	discovered = true,
    order = 1,
	config ={},
	atlas = 'spectral_atlas',
    loc_vars = function(self, info_queue, card)
		info_queue[#info_queue + 1] =
		{ set = "Other", key = "artb_ouroboros_seal", specific_vars = {} }
		return {
			vars = { card.ability.max_highlighted }
		}
	end,
	use = function(self, card, area, copier)
		for i = 1, #G.hand.highlighted do
			local highlighted = G.hand.highlighted[i]
			G.E_MANAGER:add_event(Event({
				func = function()
					play_sound("tarot1")
					highlighted:juice_up(0.3, 0.5)
					return true
				end,
			}))
			G.E_MANAGER:add_event(Event({
				trigger = "after",
				delay = 0.1,
				func = function()
					if highlighted then
						highlighted:set_seal("artb_ouroboros", nil, true)
					end
					return true
				end,
			}))
			delay(0.5)
			G.E_MANAGER:add_event(Event({
				trigger = "after",
				delay = 0.2,
				func = function()
					G.hand:unhighlight_all()
					return true
				end,
			}))
		end
	end,
	can_use = function(self, card, area)
		if G.hand and (#G.hand.highlighted == 1) and G.hand.highlighted[1] then
			return true
		else
			return false
		end
	end
}