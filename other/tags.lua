SMODS.Tag {
    key = "recursive",
    atlas = 'tags_atlas',
    pos = { x = 1, y = 0 },
    discovered = true,
    loc_vars = function(self, info_queue, tag)
        return { vars = { (G.GAME.artb_recursives_used or 1) } }
    end,
    apply = function(self, tag, context)
        if context.type == 'immediate' then
            local lock = tag.ID
            G.CONTROLLER.locks[lock] = true
            tag:yep('+', G.C.BLUE, function()
                for i = 1, G.GAME.artb_recursives_used, 1 do
                    local pool = options or get_current_pool('Tag')
                    local pool_no_recursive = {}

                    for k, x in pairs(pool) do
                        if x ~= "tag_artb_recursive" then
                            table.insert(pool_no_recursive, x)
                        end
                    end

                    local tag_key = pseudorandom_element(pool_no_recursive, pseudoseed('recursive'))

                    while tag_key == 'UNAVAILABLE' do
                        tag_key = pseudorandom_element(pool_no_recursive, pseudoseed('recursive'))
                    end

                    local tag = Tag(tag_key)

                    if tag_key == "tag_orbital" then
                        local available_hands = {}

                        for k, hand in pairs(G.GAME.hands) do
                            if hand.visible then
                                available_hands[#available_hands + 1] = k
                            end
                        end

                        tag.ability.orbital_hand = pseudorandom_element(available_hands,
                            pseudoseed('recursive' .. '_orbital'))
                    end

                    G.E_MANAGER:add_event(Event({
                        trigger = 'before',
                        delay = 0.0,
                        func = (function()
                            add_tag(type(tag) == 'string' and Tag(tag) or tag)
                            play_sound('generic1', 0.9 + math.random() * 0.1, 0.8)
                            play_sound('holo1', 1.2 + math.random() * 0.1, 0.4)
                            return true
                        end)
                    }))
                end

                G.GAME.artb_recursives_used = G.GAME.artb_recursives_used + 1

                G.CONTROLLER.locks[lock] = nil
                return true
            end)
            tag.triggered = true
        end
    end
}
