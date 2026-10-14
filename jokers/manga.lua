SMODS.Joker {
    key = 'manga',
    config = {
        extra = {
            stop = false
        }
    },
    rarity = 1,
    pos = { x = 6, y = 6 },
    atlas = 'joker_atlas',
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,

    calculate = function(self, card, context)
        -- Derived from Devil's Machine from the Wormhole Mod
        if (not card.ability.extra.stop) and context.individual and context.cardarea == G.play then
            if context.other_card == context.scoring_hand[#context.scoring_hand] then
                local all_dark = true
                for _, v in pairs(context.scoring_hand) do
                    if not v:is_suit('Clubs') and not v:is_suit('Spades') then
                        all_dark = false
                        break
                    end
                end
                if all_dark then
                    return {
                        func = function()
                            SMODS.calculate_effect({ message = localize('k_again_ex') }, card)
                            for i = #context.scoring_hand, 1, -1 do
                                local passed_context = context
                                card.ability.extra.stop = true
                                SMODS.score_card(context.scoring_hand[i], passed_context)
                            end
                            card.ability.extra.stop = false
                        end
                    }
                end
            end
        end
    end,
}