SMODS.Consumable({
	object_type = "Consumable",
	atlas = 'arts_atlas',
	key = 'art_imitation',
	set = 'art',
	name = 'Imitation',
	config = {
		max_highlighted = 1
	},
	pos = { x = 5, y = 1 },
	cost = 4,
	unlocked = true,
	discovered = true,

	use = function(self, card, area)
		G.E_MANAGER:add_event(Event {
			func = function()
				G.playing_card = (G.playing_card or 0) + 1
				local new_card = copy_card(G.hand.highlighted[1], nil, nil, G.playing_card)
				local mutation = pseudorandom("mutation")

				if mutation < 0.25 then
					SMODS.change_base(new_card,
						pseudorandom_element({ "Diamonds", "Spades", "Hearts", "Clubs" }, pseudoseed('imitation')), nil)
				elseif mutation < 0.50 then
					local new_enhancement = SMODS.poll_enhancement({ guaranteed = true, key = 'imitation' })
					new_card:set_ability(G.P_CENTERS[new_enhancement])
				elseif mutation < 0.75 then
					local rank = pseudorandom_element(SMODS.Ranks, pseudoseed("imitation"))
					assert(SMODS.change_base(new_card, nil, rank.key))
				elseif mutation < 0.95 then
					local valid_keys = {}
					for _, seal_center in pairs(G.P_CENTER_POOLS["Seal"]) do
						valid_keys[#valid_keys + 1] = seal_center.key
					end
					new_card:set_seal(pseudorandom_element(valid_keys, pseudoseed("imitation")), nil, true)
				else
					local edition = poll_edition('imitation', nil, true, true)
					new_card:set_edition(edition, true)
				end

				new_card:add_to_deck()
				G.deck.config.card_limit = G.deck.config.card_limit + 1
				table.insert(G.playing_cards, new_card)
				G.hand:emplace(new_card)
				new_card:start_materialize(nil, _first_dissolve)

				playing_card_joker_effects { new_card }
				return true
			end
		})
	end
})
