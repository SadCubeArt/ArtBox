SMODS.Joker {
    key = 'thirteen',
    config = {
        extra = {
            prob = 1,
            multiplier = 2
        }
    },
    rarity = 1,
    pos = { x = 0, y = 7 },
    atlas = 'joker_atlas',
    unlocked = true,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    perishable_compat = true,
    artb_non_art = true,

    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.prob, card.ability.extra.multiplier } }
    end,

    calculate = function(self, card, context)
        if context.pseudorandom_result then
            if context.result and card.ability.extra.prob > 1 then
                card.ability.extra.prob = 1
                return {
                    colour = G.C.GREEN,
                    message = localize('artb_lucky')
                }
            elseif not context.result then
                SMODS.scale_card(card, {
                    ref_table = card.ability.extra,
                    ref_value = 'prob',
                    scalar_value = 'multiplier',
                    operation = 'X'
                })
            end
        end

        if context.mod_probability and card.ability.extra.prob > 1 then
            return {
                numerator = context.numerator * card.ability.extra.prob
            }
        end
    end,
}