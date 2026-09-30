SMODS.Joker {
    config = {
        extra = {
            chips = 10,
        }
    },
    key = "sculpted2",
    rarity = 1,
    pos = { x = 2, y = 5 },
    atlas = 'joker_atlas',
    cost = 5,
    unlocked = true,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    perishable_compat = true,

    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.chips } }
    end,

    calculate = function(self, card, context)
        if context.end_of_round and context.individual and context.cardarea == G.hand then
            if SMODS.has_no_rank(context.other_card) then
                context.other_card.ability.perma_bonus = context.other_card.ability.perma_bonus or 0
                context.other_card.ability.perma_bonus = context.other_card.ability.perma_bonus + card.ability.extra.chips
                G.E_MANAGER:add_event(Event({
                    func = function()
                        card:juice_up()
                        return true;
                    end
                }))
                SMODS.calculate_effect({ message = localize('k_upgrade_ex'), colour = G.C.CHIPS },context.other_card)

                if ArtBox.chisel_marble(context.other_card) then
                    G.E_MANAGER:add_event(Event({
                        func = function()
                            card:juice_up()
                            return true;
                        end
                    }))
                end
            end
        end
    end
}
