SMODS.Joker {
    key = 'portal_orange',
    rarity = 3,
    pos = { x = 5, y = 3 },
    atlas = 'joker_atlas',
    cost = 8,
    unlocked = true,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    perishable_compat = true,

    loc_vars = function(self, info_queue, card)
        if not card.fake_card then
            info_queue[#info_queue+1] = G.P_CENTERS.j_artb_portal_blue
        end
    end,

    add_to_deck = function(self, card, from_debuff)
        G.E_MANAGER:add_event(Event({
            func = function()
                local blue = SMODS.add_card({key = 'j_artb_portal_blue'})
                if card.eternal then
                    blue:set_eternal(true)
                end
                return true;
            end
        }))
    end,

    remove_from_deck = function(self, card, from_debuff)
        local blues = SMODS.find_card('j_artb_portal_blue')
        if next(blues) then
            for _, v in pairs(blues) do
                if not SMODS.is_eternal(v) then
                    SMODS.destroy_cards(v, {skip_calc = true, immediate = true})
                    break
                end
            end
        end
    end,

    in_pool = function(self, args)
        if args and args.source ~= 'sho' then
            return #G.jokers.cards + 2 <= G.jokers.config.card_limit
        end
        return true
    end
}

local check_for_buy_space_ref = G.FUNCS.check_for_buy_space
G.FUNCS.check_for_buy_space = function(card)
    local ret = check_for_buy_space_ref(card)
    if card.config.center_key == 'j_artb_portal_orange' then
        if #G.jokers.cards + 2 > G.jokers.config.card_limit then
            alert_no_space(card, G.jokers)
            ret = false
        end 
    end
    return ret
end