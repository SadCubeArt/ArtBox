SMODS.current_mod.optional_features = function()
    return {
        retrigger_joker = true,
        object_weights = true
    }
end

function ArtBox.add_collectible(key, args)
    if G.P_SEALS[key] or G.P_CENTERS[key] then
        ArtBox.Collectables[key] = args
        sendDebugMessage('A Collectable type ' .. key .. ' has been be loaded', 'ArtBox')
    else
        sendWarnMessage('A Collectable type ' .. key .. ' could not properly be loaded', 'ArtBox')
    end
end

function ArtBox.create_collectable(key)
    local collectable = SMODS.add_card({ key = 'c_artb_mod_collectable' })

    if G.P_SEALS[key] then
        collectable.ability.extra.seal = key
    end

    if G.P_CENTERS[key] then
        if key:sub(1, 2) == 'm_' then
            collectable.ability.extra.enhancement = key
        elseif key:sub(1, 2) == 'e_' then
            collectable.ability.extra.edition = key
        end
    end

    local ref_values = ArtBox.Collectables[key]
    if ref_values then
        collectable.children.center.atlas = G.ASSET_ATLAS[ref_values.atlas]
        collectable.children.center:set_sprite_pos(ref_values.pos)

        collectable.children.floating_sprite = Sprite(collectable.T.x, collectable.T.y, collectable.T.w, collectable.T.h,
            G.ASSET_ATLAS[ref_values.atlas], ref_values.soul_pos)
        collectable.children.floating_sprite.role.draw_major = collectable
        collectable.children.floating_sprite.states.hover.can = false
        collectable.children.floating_sprite.states.click.can = false

        collectable.ability.extra.shader = ref_values.shader
    end

    return collectable
end

ArtBox.calculate = function(self, context)
    if context.final_scoring_step and #G.artb_spearea.cards > 0 then
        local spear_effects = {}
        for i = 1, #G.artb_spearea.cards do
            spear_effects[#spear_effects + 1] = { xmult = 3 }
        end
        return SMODS.merge_effects(spear_effects)
    end

    if context.end_of_round and context.main_eval and #G.artb_spearea.cards > 0 then
        for _, v in pairs(G.artb_spearea.cards) do
            if #G.jokers.cards + (G.GAME.joker_buffer - v.ability.card_limit + v.ability.extra_slots_used) < G.jokers.config.card_limit then
                G.GAME.joker_buffer = (G.GAME.joker_buffer + v.ability.card_limit + v.ability.extra_slots_used) + 1
                G.E_MANAGER:add_event(Event({
                    delay = 0.2,
                    trigger = 'after',
                    func = function()
                        G.artb_spearea:remove_card(v)
                        G.jokers:emplace(v)
                        v:start_materialize()
                        v:add_to_deck()
                        G.GAME.joker_buffer = 0
                        return true;
                    end
                }))
            else
                G.E_MANAGER:add_event(Event({
                    func = function()
                        v:remove()
                        return true;
                    end
                }))
            end
        end
    end
end

function ArtBox.chisel_marble(card)
    if SMODS.has_enhancement(card, 'm_artb_marble') and card.ability.extra.progress < 4 and not card.debuffed then
        G.E_MANAGER:add_event(Event({
            trigger = 'after',
            func = function()
                card.ability.extra.progress = card.ability.extra.progress + 1
                card:set_sprite_state("progress" .. card.ability.extra.progress)

                if card.ability.extra.progress >= 4 then
                    card.ability.x_chips = 2
                end
                return true
            end
        }))
        SMODS.calculate_effect({ message = localize('artb_chiseled'), colour = G.C.ATTENTION }, card)
        SMODS.calculate_context({ artb_marble_chiseled = card })
        return true
    end
end
