SMODS.Consumable ({
    object_type = "Consumable",
     atlas = 'arts_atlas',
	key = 'art_glitter',
	set = 'art',
	name = 'Glitter',
	pos = { x = 0, y = 1 },
	cost = 4,
	unlocked = true,
	discovered = true,
    can_use = function(self, card)
        if G.hand and G.hand.cards and #G.hand.cards > 0 then
            for k, v in ipairs(G.hand.cards) do
            if not v.edition then 
                return true 
            end
        end
        else
            return false
        end
    end,
	use = function(self, card, area, copier)
        local cards = {}
        for k, v in ipairs(G.hand.cards) do
            if not v.edition then cards[#cards + 1] = v end
          end
        local _card = pseudorandom_element(cards, pseudoseed('glitter'))
        local edition = poll_edition('glitter', nil, true, true)
    
            G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.1, func = function()
                _card:set_edition(edition, true)
            return true end }))
        card:juice_up(0.3, 0.5)
    end,
})