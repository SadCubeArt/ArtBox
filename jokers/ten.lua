SMODS.Joker {
    key = 'ten',
    config = {
        extra = {
            ranks = {},
            mult = 10
        },
    },
    rarity = 1,
    pos = { x = 5, y = 2 },
    atlas = 'joker_atlas',
    unlocked = true,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    perishable_compat = true,

    loc_vars = function(self, info_queue, card)
        local nodes = {}

        local built_string = localize('artb_ranks_triggered')
        if SMODS.table_size(card.ability.extra.ranks) > 0 then
            local i = 0
            for _, v in pairs(card.ability.extra.ranks) do
                i = i + 1
                built_string = built_string .. localize(v, 'ranks')
                if i < SMODS.table_size(card.ability.extra.ranks) then
                    built_string = built_string .. ', '
                    if string.len(built_string) > 30 then
                        table.insert(nodes, {
                            n = G.UIT.R,
                            config = { align = 'cm', padding = 0.06 },
                            nodes = {
                                {n = G.UIT.T, config = { colour = G.C.TEXT_INACTIVE, scale = 0.26, text = built_string }}
                            }
                        })
                        built_string = ''
                    end
                end
            end
        else
            built_string = built_string .. localize('k_none')
        end

        table.insert(nodes, {
            n = G.UIT.R,
            config = { align = 'cm', padding = 0.06 },
            nodes = {
                {n = G.UIT.T, config = { colour = G.C.TEXT_INACTIVE, scale = 0.26, text = built_string }}
            }
        })
                            

        local main_end = {{
            n = G.UIT.C,
            config = { align = 'cm'},
            nodes = nodes
        }}
        
        return { vars = { card.ability.extra.mult }, main_end = main_end }
    end,

    calculate = function(self, card, context)
        if context.individual and not context.end_of_round and context.cardarea == G.play and not card.ability.extra.ranks[context.other_card:get_id()] and not context.other_card:is_face() then
            card.ability.extra.ranks[context.other_card:get_id()] = context.other_card.base.value
            return {
                mult = card.ability.extra.mult
            }
        end

        if context.ante_change and context.ante_end then
            card.ability.extra.ranks = {}
            return {
                message = localize('k_reset')
            }
        end
    end,
}
