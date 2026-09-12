SMODS.Joker {
    key = 'backrooms',
    config = {
        extra = {
            odds = 1,
            prob = 15,
            odds_gain = 1,
            active = false
        }
    },
    pos = { x = 7, y = 1 },
    atlas = 'joker_atlas',
    unlocked = true,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    perishable_compat = true,

    loc_vars = function(self, info_queue, card)
        return { vars = {  } }
    end,

    calculate = function(self, card, context)
    
        if context.artb_pre_reroll and not card.ability.extra.active and not context.blueprint then
            if SMODS.pseudorandom_probability(card, 'backrooms_roll_' .. card.ability.extra.odds, card.ability.extra.odds, card.ability.extra.prob, nil, true ) then
                card.ability.extra.active = true
                card:juice_up()
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
                card.ability.extra.odds = card.ability.extra.odds + 1
            end
        end

        if context.create_shop_card and card.ability.extra.active and not context.blueprint then
            return {
                shop_create_flags = { key = 'j_artb_backrooms', key_append = 'sho' }
            }
        end

        if context.ending_shop and not context.blueprint then
            card.ability.extra.odds = 1
            card.ability.extra.active = false
        end

        if context.modify_weights and context.pool_types['Edition'] then
            context.pool['e_negative'].weight = context.pool['e_negative'].weight * 2
        end
    end,
}