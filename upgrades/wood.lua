SMODS.Enhancement({
    key = "wood",
    atlas = "enhancers_atlas",
    pos = {x = 2, y = 0},
    discovered = true,
    config = {
    extra = {
      chips=3
    }
  },

  loc_vars = function(self, info_queue, card)
    return {
      vars = {
        card.ability.extra.chips,
      }
    }
  end,

  calculate = function(self, card, context)
    if context.main_scoring and context.cardarea == G.hand then
      
          for k, v in ipairs(context.scoring_hand) do
            v.ability.perma_bonus = (v.ability.perma_bonus or 0) + card.ability.extra.chips
            SMODS.calculate_effect({extra = { message = localize('k_upgrade_ex'), colour = G.C.CHIPS }}, v)
          end

          return {
                extra = { message = localize('artb_wood'), colour = G.C.CHIPS },
                colour = G.C.CHIPS,
                card = card
            }
    end
  end
})