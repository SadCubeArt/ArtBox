SMODS.Joker {
    key = 'layered',
    config = {
        extra = {
            rank_goal = 3,
            ranks = {},
            tag = 'tag_artb_recursive'
        }
    },
    pos = { x = 3, y = 7 },
    soul_pos = { x = 4, y = 7 },
    layered_soul_pos = { x = 5, y = 7 },
    edition_for_soul = true,
    atlas = 'joker_atlas',
    unlocked = true,
    discovered = true,

    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = G.P_TAGS[card.ability.extra.tag]

        local nodes = {}

        local built_string = localize('artb_ranks_triggered')
        if SMODS.table_size(card.ability.extra.ranks) > 0 then
            local sorted_ranks = {}
            for _, v in pairs(card.ability.extra.ranks) do
                table.insert(sorted_ranks, v)
            end
            table.sort(sorted_ranks, function(a, b) return SMODS.Ranks[a].sort_id < SMODS.Ranks[b].sort_id end)

            local i = 0
            for _, v in pairs(sorted_ranks) do
                i = i + 1
                built_string = built_string .. localize(v, 'ranks')
                if i < SMODS.table_size(sorted_ranks) then
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

        return { vars = { card.ability.extra.rank_goal, localize {set = 'Tag', type = 'name_text', key = card.ability.extra.tag} }, main_end = main_end }
    end,

    calculate = function(self, card, context)
        if context.individual and not context.end_of_round and context.cardarea == G.play and not card.ability.extra.ranks[context.other_card:get_id()] then
            card.ability.extra.ranks[context.other_card:get_id()] = context.other_card.base.value
            
            if SMODS.table_size(card.ability.extra.ranks) >= card.ability.extra.rank_goal then
                card.ability.extra.ranks = {}
                return {
                    func = function()
                        G.E_MANAGER:add_event(Event({
                            trigger = 'before',
                            delay = 0.25,
                            func = (function()
                                add_tag(Tag(card.ability.extra.tag))
                                play_sound('generic1', 0.9 + math.random() * 0.1, 0.8)
                                play_sound('holo1', 1.2 + math.random() * 0.1, 0.4)
                                card:juice_up()
                                return true
                            end)
                        }))
                    end
                }
            end
        end

    end,
}

SMODS.DrawStep {
    key = 'artb_layered_floating_sprite',
    order = 61,
    func = function(self)
        if self.config.center.layered_soul_pos and (self.config.center.discovered or self.bypass_discovery_center) then
            local scale_mod = 0.07 + 0.02*-math.cos(1.8*G.TIMERS.REAL) + 0.00*-math.cos((G.TIMERS.REAL - math.floor(G.TIMERS.REAL))*math.pi*14)*(1 - (G.TIMERS.REAL - math.floor(G.TIMERS.REAL)))^3
            local rotate_mod = 0.15*-math.cos(1.219*G.TIMERS.REAL) + 0.00*-math.cos((G.TIMERS.REAL)*math.pi*5)*(1 - (G.TIMERS.REAL - math.floor(G.TIMERS.REAL)))^2

            if type(self.config.center.layered_soul_pos.draw) == 'function' then
                self.config.center.layered_soul_pos.draw(self, scale_mod, rotate_mod)
            elseif self.children.layered_floating_sprite then
                self.children.layered_floating_sprite:draw_shader('dissolve', nil, nil, nil, self.children.center, scale_mod, rotate_mod)
            end
            if self.edition then
                local edition = G.P_CENTERS[self.edition.key]
                if (edition.apply_to_float or self.config.center.edition_for_soul) and self.children.layered_floating_sprite then
                    self.children.layered_floating_sprite:draw_shader(edition.shader, nil, nil, nil, self.children.center, scale_mod, rotate_mod)                    
                end
            end
        end
    end,
    conditions = { vortex = false, facing = 'front' },
}

SMODS.draw_ignore_keys['layered_floating_sprite'] = true