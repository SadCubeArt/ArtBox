SMODS.Joker {
    key = 'portal_blue',
    pos = { x = 6, y = 3 },
    atlas = 'joker_atlas',
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,

    loc_vars = function(self, info_queue, card)
        if not card.fake_card then
            info_queue[#info_queue+1] = G.P_CENTERS.j_artb_portal_orange
        end

        local in_between = false
        local count = 0
        for _, v in pairs(G.jokers.cards) do
            if v.config.center_key == 'j_artb_portal_orange' then
                in_between = true
                count = 0
            elseif v == card then break
            elseif in_between then
                count = count + 1
            end
        end

        return { vars = { 1 + count } }
    end,

    calculate = function(self, card, context)
        local stg = card.ability.extra
    
        if context.joker_main then
            local in_between = false
            local count = 0
            for _, v in pairs(G.jokers.cards) do
                if v.config.center_key == 'j_artb_portal_orange' then
                    in_between = true
                    count = 0
                elseif v == card then break
                elseif in_between then
                    count = count + 1
                end
            end
            return {
                xmult = 1 + count
            }
        end
    end,

    remove_from_deck = function(self, card, from_debuff)
        local oranges = SMODS.find_card('j_artb_portal_orange')
        if next(oranges) then
            for _, v in pairs(oranges) do
                if not SMODS.is_eternal(v) then
                    SMODS.destroy_cards(v, {skip_calc = true})
                    break
                end
            end
        end
    end,

    in_pool = function(self, args)
        return false
    end
}