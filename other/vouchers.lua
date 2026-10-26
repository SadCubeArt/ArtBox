SMODS.Voucher({
    key = "booster_stack",
    atlas = "vouchers_atlas",
    pos = { x = 0, y = 0 },
    cost = 10,
    unlocked = true,
    discovered = true,
    available = true,
    redeem = function(self)
        G.GAME.modifiers.extra_boosters = (G.GAME.modifiers.extra_boosters or 0) + 1
        if G.shop then
            --spawning pack taken from plantain mod hope thats okayy
            local pack_watch = {}
            for k, v in pairs(G.P_CENTERS) do
                if v.set == 'Booster' then
                    table.insert(pack_watch, k)
                end
            end
            local pack_chosen = pseudorandom_element(pack_watch, pseudoseed('booster'))
            local pack = Card(
                G.shop_booster.T.x + G.shop_booster.T.w / 2,
                G.shop_booster.T.y,
                G.CARD_W * 1.27, G.CARD_H * 1.27,
                G.P_CARDS.empty,
                G.P_CENTERS[pack_chosen],
                { bypass_discovery_center = true, bypass_discovery_ui = true }
            )
            if price then
                pack.cost = price
            end
            create_shop_card_ui(pack, 'Booster', G.shop_booster)
            pack:start_materialize()
            G.shop_booster:emplace(pack)
        end
    end,

    unredeem = function(self)
        G.GAME.modifiers.extra_boosters = (G.GAME.modifiers.extra_boosters or 0) - 1
    end
})

SMODS.Voucher({
    key = "booster_ritual",
    atlas = "vouchers_atlas",
    pos = { x = 1, y = 0 },
    cost = 10,
    unlocked = true,
    discovered = true,
    available = true,
    requires = { 'v_artb_booster_stack' },
    calculate = function(self, card, context)
        if context.reroll_shop then
            if G.shop then
                local pack_watch = {}
                for k, v in pairs(G.P_CENTERS) do
                    if v.set == 'Booster' then
                        table.insert(pack_watch, k)
                    end
                end
                local pack_chosen = pseudorandom_element(pack_watch, pseudoseed('booster'))
                local pack = Card(
                    G.shop_booster.T.x + G.shop_booster.T.w / 2,
                    G.shop_booster.T.y,
                    G.CARD_W * 1.27, G.CARD_H * 1.27,
                    G.P_CARDS.empty,
                    G.P_CENTERS[pack_chosen],
                    { bypass_discovery_center = true, bypass_discovery_ui = true }
                )
                if price then
                    pack.cost = price
                end
                create_shop_card_ui(pack, 'Booster', G.shop_booster)
                pack:start_materialize()
                G.shop_booster:emplace(pack)
            end
        end
    end
})

SMODS.Voucher({
    key = "pen_holder",
    atlas = "vouchers_atlas",
    pos = { x = 2, y = 0 },
    cost = 10,
    unlocked = true,
    discovered = true,
    available = true,
    redeem = function(self)
        G.E_MANAGER:add_event(Event({
            func = function()
                G.consumeables.config.card_limit = G.consumeables.config.card_limit + 1
                return true
            end
        }))
    end,

    unredeem = function(self)
        G.E_MANAGER:add_event(Event({
            func = function()
                G.consumeables.config.card_limit = G.consumeables.config.card_limit - 1
                return true
            end
        }))
    end
})

SMODS.Voucher({
    key = "used_supplies",
    atlas = "vouchers_atlas",
    pos = { x = 3, y = 0 },
    cost = 10,
    unlocked = true,
    discovered = true,
    available = true,
    requires = { 'v_artb_pen_holder' },
    redeem = function(self)
        G.E_MANAGER:add_event(Event({
            func = function()
                G.consumeables.config.card_limit = G.consumeables.config.card_limit + 1
                return true
            end
        }))
    end,

    unredeem = function(self)
        G.E_MANAGER:add_event(Event({
            func = function()
                G.consumeables.config.card_limit = G.consumeables.config.card_limit - 1
                return true
            end
        }))
    end,

    calculate = function(self, card, context)
        if context.remove_playing_cards then
            for k, val in ipairs(context.removed) do
                if val.edition then
                    G.E_MANAGER:add_event(Event({
                        func = function()
                            local collectable = ArtBox.create_collectable(val.edition.key)
                            return true
                        end
                    }))
                end

                if val.seal then
                    G.E_MANAGER:add_event(Event({
                        func = function()
                            local collectable = ArtBox.create_collectable(val.seal)
                            return true
                        end
                    }))
                end

                if val.config.center.key ~= 'c_base' then
                    G.E_MANAGER:add_event(Event({
                        func = function()
                            local collectable = ArtBox.create_collectable(val.config.center.key)
                            return true
                        end
                    }))
                end
            end
        end

        if context.cards_destroyed then
            for k, val in ipairs(context.glass_shattered) do
                if val.edition then
                    G.E_MANAGER:add_event(Event({
                        func = function()
                            local collectable = ArtBox.create_collectable(val.edition.key)
                            return true
                        end
                    }))
                end

                if val.seal then
                    G.E_MANAGER:add_event(Event({
                        func = function()
                            local collectable = ArtBox.create_collectable(val.seal)
                            return true
                        end
                    }))
                end

                if next(SMODS.get_enhancements(val)) then
                    G.E_MANAGER:add_event(Event({
                        func = function()
                            local collectable = ArtBox.create_collectable(val.config.center.key)
                            return true
                        end
                    }))
                end
            end
        end
    end
})
