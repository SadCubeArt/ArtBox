SMODS.Joker {
    key = "minimalism",
    config = {
        extra = {
            limit = 3
        }
    },
    rarity = 2,
    pos = { x = 3, y = 1},
    atlas = 'joker_atlas',
    cost = 8,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,

    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.limit } }
    end,

    calculate = function(self, card, context)

		if context.repetition and context.cardarea == G.play and #context.scoring_hand <= card.ability.extra.limit then
			return {
				message = localize('k_again_ex'),
				repetitions = 1,
				card = card
			}
		end
	end
    }