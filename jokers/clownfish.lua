SMODS.Joker {
    key = "clownfish",
    config = {
      extra = {
        fed="hungry",
        x_mult=2
      }
    },
    rarity = 1,
    pos = { x = 1, y = 2},
    atlas = 'joker_atlas',
    cost = 4,
    unlocked = true,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = false,
    perishable_compat = true,
    artb_non_art = true,

    loc_vars = function(self, info_queue, card)
        return {
          vars = {
            card.ability.extra.fed,
            card.ability.extra.x_mult
          }
        }
    end,

    calculate = function(self, card, context)

        if context.end_of_round and context.cardarea == G.jokers and not context.blueprint and not context.retrigger_joker then
          if card.ability.extra.fed=="fed" then
            card.ability.extra.fed="hungry"
            return {
                message = localize('artb_hungry')
            }
          else
            card:start_dissolve()
            return {
                message = localize('artb_starved')
            }
          end
        end

        if context.selling_card and not context.blueprint and card.ability.extra.fed=="hungry"  then
            card.ability.extra.fed="fed"
            return {
                message = localize('artb_fed')
            }
        end

        if context.joker_main then
          return {
            x_mult = card.ability.extra.x_mult
            }
        end

    end
    }