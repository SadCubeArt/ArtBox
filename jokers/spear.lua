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
    artb_non_art = true,

    calculate = function(self, card, context)
        if context.selling_self and G.GAME.blind and G.GAME.blind.in_blind then
            local new_spear = copy_card(card)
            new_spear.states.visible = false
            G.artb_spearea:emplace(new_spear)
        end
    end,
}