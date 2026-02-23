SMODS.Joker {
    key = "recursion",
    rarity = 2,
    pos = { x = 4, y = 6 },
    atlas = 'joker_atlas',
    cost = 5,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,

    loc_vars = function(self, info_queue, card)
      info_queue[#info_queue+1] = G.P_TAGS['tag_artb_recursive']
    end,

    calculate = function(self, card, context)
        if context.end_of_round and G.GAME.blind.boss and context.main_eval then
            G.E_MANAGER:add_event(Event({
                trigger = 'before',
                delay = 0.0,
                func = (function()
                    add_tag(Tag("tag_artb_recursive"))
                    play_sound('generic1', 0.9 + math.random() * 0.1, 0.8)
                    play_sound('holo1', 1.2 + math.random() * 0.1, 0.4)
                    return true
                end)
            }))
        end
    end
}
