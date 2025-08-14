SMODS.Joker {
    key = "stained_glass",
    config = {
      mod_conv = "m_glass",
    },
    rarity = 2,
    pos = { x = 6, y = 2},
    atlas = 'joker_atlas',
    cost = 6,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = false,

    loc_vars = function(self, info_queue, card)
      info_queue[#info_queue + 1] = G.P_CENTERS[self.config.mod_conv]
      info_queue[#info_queue + 1] = G.P_TAGS.tag_artb_creative
    end,

    calculate = function(self, card, context)

        if context.individual and context.cardarea == G.play then
          if context.other_card.config.center.key == 'm_glass' and #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
            G.GAME.consumeable_buffer=G.GAME.consumeable_buffer+1
            G.E_MANAGER:add_event(Event({
            func = function()
              SMODS.add_card {
                set = 'art',
                key_append = 'stained'
              }
              G.GAME.consumeable_buffer = 0
              return true
            end
            }))
            SMODS.calculate_effect({extra = { message = localize('artb_plus_art')}}, card)
          end
        end

        if context.cards_destroyed then
            for k, val in ipairs(context.glass_shattered) do
              if val.config.center.key == 'm_glass' then
                local tag = Tag("tag_artb_creative")
                add_tag(tag)
                return {
                  message = localize('artb_plus_tag')
                }
              end
            end
        end

        if context.remove_playing_cards then
            for k, val in ipairs(context.removed) do
              if val.config.center.key == 'm_glass' then
                local tag = Tag("tag_artb_creative")
                add_tag(tag)
                return {
                  message = localize('artb_plus_tag')
                }
              end
            end
        end
        
    end
}