SMODS.Joker {
    key = 'spear',
    rarity = 3,
    pos = { x = 2, y = 7 },
    atlas = 'joker_atlas',
    cost = 8,
    unlocked = true,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = false,
    perishable_compat = false,

    calculate = function(self, card, context)
        if context.selling_self and G.GAME.blind and G.GAME.blind.in_blind then
            G.GAME.artb_spears_sold = G.GAME.artb_spears_sold + 1
            G.GAME.artb_spears_to_trigger = G.GAME.artb_spears_to_trigger + 1
        end
    end,
}