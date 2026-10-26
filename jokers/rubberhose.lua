SMODS.Joker {
    key = "rubberhose",
    config = {
        extra = {
            chips = 15,
            mult = 2,
        }
    },
    rarity = 1,
    pos = { x = 0, y = 3 },
    atlas = 'joker_atlas',
    cost = 5,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,

    loc_vars = function(self, info_queue, card)
        return {
            vars = {
                card.ability.extra.chips,
                card.ability.extra.mult,
            }
        }
    end,

    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play then
            if context.other_card:is_suit("Spades") then
                if context.other_card:is_suit("Clubs") then
                    return {
                        chips = card.ability.extra.chips,
                        mult = card.ability.extra.mult
                    }
                else
                    return {
                        chips = card.ability.extra.chips
                    }
                end
            elseif context.other_card:is_suit("Clubs") then
                return {
                    mult = card.ability.extra.mult
                }
            end
        end
    end
}
