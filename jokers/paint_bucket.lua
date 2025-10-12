SMODS.Joker {
    key = "paint_bucket",
    config = {
      extra = {
        uses=5,
      }
    },
    rarity = 1,
    pos = { x = 5, y = 5},
    atlas = 'joker_atlas',
    cost = 5,
    unlocked = true,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = false,
    perishable_compat = false,

    loc_vars = function(self, info_queue, card)
        return {
          vars = {
            card.ability.extra.uses,
          }
        }
    end,

    pools = {
    Food = true
    },

    calculate = function(self, card, context)
      if context.before and context.main_eval and not context.blueprint then
        local rank = context.scoring_hand[1]:get_id()
        local new_enhancement = SMODS.poll_enhancement({guaranteed = true, key = 'bucket'})

        for _, scored_card in ipairs(context.scoring_hand) do
          if scored_card:get_id() == rank then
            scored_card:set_ability(new_enhancement, nil, true)
              G.E_MANAGER:add_event(Event({
                func = function()
                  scored_card:juice_up()
                  return true
                end
              }))
          end
        end

        card.ability.extra.uses=card.ability.extra.uses-1
        if card.ability.extra.uses <= 0 then
          G.E_MANAGER:add_event(Event({
                    trigger = 'after',
                    delay = 0.7,
                    func = function()
                        play_sound('tarot1')
                        card.T.r = -0.2
                        card:juice_up(0.3, 0.4)
                        card.states.drag.is = true
                        card.children.center.pinch.x = true
                        card:start_dissolve()
                        card = nil
                        return true
                    end
                }))
          if pseudorandom("bucket") < 0.05  then
            return {
              message = localize('k_drank_ex')
            }
          else
            return {
              message = localize('artb_empty')
            } 
          end
          
        else
          return {
            message = localize('artb_fill'),
            colour = G.C.CHIPS
          }
        end
      end
    end
    }