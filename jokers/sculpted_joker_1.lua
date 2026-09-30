SMODS.Joker {
    config = {
        extra = {
            chips = 10,
        }
    },
    key = "sculpted1",
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
        if context.artb_marble_chiseled then
            context.artb_marble_chiseled.ability.perma_bonus = context.artb_marble_chiseled.ability.perma_bonus or 0
            context.artb_marble_chiseled.ability.perma_bonus = context.artb_marble_chiseled.ability.perma_bonus + card.ability.extra.chips
            G.E_MANAGER:add_event(Event({
                func = function()
                    card:juice_up()
                    return true;
                end
            }))
            return {
                message = localize('k_upgrade_ex'),
                colour = G.C.CHIPS,
                message_card = context.artb_marble_chiseled
            }
        end
    end
}
