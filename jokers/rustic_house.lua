SMODS.Joker {
    key = "rustic_house",
    rarity = 1,
    pos = { x = 2, y = 3 },
    atlas = 'joker_atlas',
    cost = 5,
    unlocked = true,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    perishable_compat = true,
    artb_non_art = true,

    calculate = function(self, card, context)
        if context.evaluate_poker_hand and #context.full_hand >= 5 then
            if next(context.poker_hands['Pair']) or next(context.poker_hands['Three of a Kind']) then
                local rankless = {}
                for _, v in pairs(context.full_hand) do
                    if SMODS.has_no_rank(v) then
                        table.insert(rankless, v)
                    end
                end
                if next(context.poker_hands['Pair']) and #rankless >= 3 or next(context.poker_hands['Three of a Kind']) and #rankless >= 2  then
                    local poker_hands = context.poker_hands
                    local original_hand = next(context.poker_hands['Three of a Kind']) and context.poker_hands['Three of a Kind'] or context.poker_hands['Pair']
                    poker_hands['Full House'] = SMODS.merge_lists(rankless, original_hand)
                    return {
                        replace_scoring_name = 'Full House',
                        replace_poker_hands = poker_hands
                    }
                end
            end
        end
    end
}