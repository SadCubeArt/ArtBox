SMODS.Joker {
    key = 'funguy',
    config = {
        extra = {
            cards_to_spread = 2
        }
    },
    rarity = 2,
    pos = { x = 1, y = 7 },
    atlas = 'joker_atlas',
    cost = 5,
    unlocked = true,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    perishable_compat = true,

    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.cards_to_spread } }
    end,

    calculate = function(self, card, context)
        if context.remove_playing_cards and next(G.hand.cards) then
            for i = 1, #context.removed do
                local _c = context.removed[i]
                if _c.ability.perma_bonus > 0 or _c.ability.perma_mult > 0 then
                    for j = 1, card.ability.extra.cards_to_spread do
                        local valid_cards = {}
                        for _, v in pairs(G.hand.cards) do
                            if not v['fungus_'..i] and not v.getting_sliced and _c ~= v then
                                local valid = true
                                for _, vv in pairs(context.removed) do
                                    if v == vv then
                                        valid = false
                                        break
                                    end
                                end
                                if valid then
                                    table.insert(valid_cards, v)
                                end
                            end
                        end
                        if next(valid_cards) then
                            local card_to_upgrade = pseudorandom_element(valid_cards, 'fungus_'..i..'_'..j)
                            card_to_upgrade['fungus_'..i] = true
                            local trigger_func = function()
                                G.E_MANAGER:add_event(Event({
                                    func = function()
                                        card_to_upgrade['fungus_'..i] = nil
                                        if _c.ability.perma_bonus > 0 then
                                            card_to_upgrade.ability.perma_bonus = card_to_upgrade.ability.perma_bonus + _c.ability.perma_bonus
                                        end
                                        if _c.ability.perma_mult > 0 then
                                            card_to_upgrade.ability.perma_mult = card_to_upgrade.ability.perma_mult + _c.ability.perma_mult
                                        end
                                        card:juice_up()
                                        return true;
                                    end
                                }))
                            end
                            SMODS.calculate_effect({ message = localize('artb_spored'), delay = 0.2, func = trigger_func, sound = 'tarot1' }, card_to_upgrade)
                        end
                    end
                    delay(0.25)
                end
            end
        end
    end,

    remove_from_deck = function(self, card, from_debuff)
        SMODS.calculate_effect({message = localize('artb_shroom'), colour = G.C.MULT}, card)
    end,
}