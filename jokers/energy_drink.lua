SMODS.Joker {
    key = "energy_drink",
    config = {
      extra = {
        retriggers=1,
        rounds=4
      }
    },
    rarity = 2,
    pos = { x = 7, y = 4},
    atlas = 'joker_atlas',
    cost = 4,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = false,
    perishable_compat = false,

    loc_vars = function(self, info_queue, card)
        return {
          vars = {
            card.ability.extra.retriggers,
            card.ability.extra.rounds,
          }
        }
    end,

    pools = {
    Food = true
    },

    calculate = function(self, card, context)
      if context.retrigger_joker_check then
        for v, joker in ipairs(G.jokers.cards) do
          if context.blueprint and joker == context.blueprint_card or not context.blueprint and joker == card then
            if context.other_card ==G.jokers.cards[v + 1] then
              return {
                repetitions = 1
              }
            end 
          end
        end
      end

      if context.end_of_round and context.cardarea == G.jokers then
        card.ability.extra.rounds=card.ability.extra.rounds-1
        if card.ability.extra.rounds <= 0 then
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
          return {
            message = localize('k_drank_ex')
          }
        end
      end
    end
    }