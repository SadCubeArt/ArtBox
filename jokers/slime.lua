SMODS.Joker {
    key = 'slime',
    config = {
        extra = {
            cards_to_create = 2
        }
    },
    pos = { x = 3, y = 0 },
    atlas = 'joker_atlas',
    unlocked = true,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    perishable_compat = true,

    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.cards_to_create } }
    end,

    calculate = function(self, card, context)
        if context.setting_blind then
            local eval = function() return G.GAME.current_round.hands_played == 0 end
            juice_card_until(card, eval, true)
        end

        if context.destroying_card and G.GAME.current_round.hands_played == 0 and #context.full_hand == 1 then
            for i = 1, card.ability.extra.cards_to_create do
                G.E_MANAGER:add_event(Event({
                    delay = 1,
                    trigger = 'before',
                    func = function()
                        local _c = SMODS.copy_card(context.full_hand[1], {area = G.deck})
                        assert(SMODS.modify_rank(_c, -1))
                        _c:start_materialize({G.C.GREEN})
                        return true;
                    end
                }))
            end
            return {
                remove = true
            }
        end
    end,
}