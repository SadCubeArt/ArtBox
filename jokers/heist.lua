SMODS.Joker {
    key = "heist",
    unlocked = true,
    discovered = true,
    atlas = 'joker_atlas',
    blueprint_compat = true,
    rarity = 3,
    cost = 8,
    pos = { x = 4, y = 5 },
    config = {
        extra = {
        }
    },

    loc_vars = function(self, info_queue, card)
        return {
            vars = {
                card.sell_cost*3
            }
        }
    end,
    calculate = function(self, card, context)
        if context.joker_main then
            return {
                mult = card.sell_cost*3
            }
        end

        if context.setting_blind then
            if not context.blueprint and G.jokers.cards[#G.jokers.cards] ~= card then
              for v, joker in ipairs(G.jokers.cards) do
                if joker == card then
                    card.ability.extra_value= card.ability.extra_value + G.jokers.cards[v + 1].sell_cost
                    card:set_cost()

                    G.jokers.cards[v + 1].ability.extra_value = G.jokers.cards[v + 1].ability.extra_value - G.jokers.cards[v + 1].sell_cost
                    G.jokers.cards[v + 1]:set_cost()

                    SMODS.calculate_effect({ extra = { message = localize('artb_stolen'), colour = G.C.MONEY } }, G.jokers.cards[v + 1])
                    SMODS.calculate_effect({ extra = { message = localize('k_val_up'), colour = G.C.MONEY } }, card)
                end
              end
            end
        end
    end
}
