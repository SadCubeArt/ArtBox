SMODS.Joker {
    key = "paint_chips",
    config = {
      extra = {
        xmult=0.5,
        xchips=2
      }
    },
    rarity = 1,
    pos = { x = 3, y = 5},
    atlas = 'joker_atlas',
    cost = 5,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,

    loc_vars = function(self, info_queue, card)
        return {
          vars = {
            card.ability.extra.xmult,
            card.ability.extra.xchips,
          }
        }
    end,

    calculate = function(self, card, context)
        if context.joker_main then
            return {
              x_mult = card.ability.extra.xmult,
              x_chips = card.ability.extra.xchips,
            }
        end
    end
    }