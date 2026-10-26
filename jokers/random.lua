SMODS.Joker {
    key = "random",
    rarity = 1,
    pos = { x = 2, y = 2},
    atlas = 'joker_atlas',
    cost = 5,
    unlocked = true,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    perishable_compat = true,
    artb_non_art = true,

    calculate = function(self, card, context)
        if context.setting_blind and not context.blueprint and G.jokers.cards[#G.jokers.cards] ~= card then
           local right=false
           local leftmost_random=true

            for k, v in ipairs(G.jokers.cards) do
                if v == card then
                    right=true
                elseif right==true and leftmost_random==true then

                    G.E_MANAGER:add_event(Event({
                    func = function()
                        local rarity = v.config.center.rarity
                        if type(rarity) == "number" then
                            if rarity==1 then
                                rarity="Common"
                            elseif rarity==2 then
                                rarity="Uncommon"
                            elseif rarity==3 then
                                rarity="Rare"
                            elseif rarity==4 then
                                rarity="Legendary"
                            end
                        end

                        local stickers = {}
                        for k, x in pairs(SMODS.Stickers) do
                        if v.ability[k] then
                            table.insert(stickers, k)
                        end
                        end
                    SMODS.add_card {
                        set = 'Joker',
                        rarity = rarity,
                        edition = v.edition,
                        stickers = stickers
                    }
                     G.jokers:remove_card(v)
                     v:remove()
                     return true
                    end}))
                elseif v.config.center.key == 'j_artb_random' then
                    leftmost_random=false
                end
            end
        end

	end
}