SMODS.Joker {
    key = 'backrooms',
    config = {
        extra = {
            odds = 0.05,
            prob = 15,
            odds_gain = 0.05,
            negative_odds = 4,
            active = false
        }
    },
    rarity = 2,
    pos = { x = 7, y = 1 },
    atlas = 'joker_atlas',
    cost = 5,
    unlocked = true,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    perishable_compat = true,
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = G.P_CENTERS.e_negative
        return {
            vars = {
                card.ability.extra.negative_odds
            }
        }
    end,

    calculate = function(self, card, context)
        if context.artb_pre_reroll and not card.ability.extra.active and not context.blueprint then
            if pseudorandom("backrooms") < card.ability.extra.odds then
                card.ability.extra.active = true
                SMODS.calculate_effect({ message = localize('artb_lost'), colour = G.C.MULT }, card)
                for _, v in pairs(G.shop_vouchers.cards) do
                    v:set_ability('j_artb_backrooms')
                    v:set_cost()
                    create_shop_card_ui(v)
                end
                for _, v in pairs(G.shop_booster.cards) do
                    v:set_ability('j_artb_backrooms')
                    v.T.w = G.CARD_W
                    v.T.h = G.CARD_H
                    v:set_cost()
                    create_shop_card_ui(v)
                end
            else
                card.ability.extra.odds = card.ability.extra.odds + card.ability.extra.odds_gain
            end
        end

        if context.create_shop_card and card.ability.extra.active and not context.blueprint then
            return {
                shop_create_flags = { key = 'j_artb_backrooms', key_append = 'sho' }
            }
        end

        if context.ending_shop and not context.blueprint then
            card.ability.extra.odds = 0.05
            card.ability.extra.active = false
        end

        if context.modify_weights and context.pool_types['Edition'] then
            context.pool['e_negative'].weight = context.pool['e_negative'].weight * card.ability.extra.negative_odds
        end
    end,
}
