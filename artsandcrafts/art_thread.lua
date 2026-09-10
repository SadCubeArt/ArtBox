SMODS.Consumable {
    object_type = "Consumable",
    atlas = 'arts_atlas',
	key = 'art_thread',
	set = 'art',
	name = 'Thread',
	pos = { x = 3, y = 1 },
	cost = 4,
	unlocked = true,
	discovered = true,
	config ={},
    loc_vars = function(self, info_queue, card)
		info_queue[#info_queue + 1] =
		{ set = "Other", key = "artb_button_seal", specific_vars = {} }
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
						highlighted:set_seal("artb_button", nil, true)
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