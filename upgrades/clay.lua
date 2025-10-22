SMODS.Enhancement({
  key = "clay",
  atlas = "enhancers_atlas",
  pos = { x = 0, y = 2 },
  discovered = true,
  config = {
    extra = {
      mult = 1,
      fired = false
    }
  },

  loc_vars = function(self, info_queue, card)
    return {
      vars = {
        card.ability.extra.mult,
      }
    }
  end,

  calculate = function(self, card, context)
    if context.hand_drawn then
      for _, playing_card in ipairs(context.hand_drawn) do
        if playing_card == card and card.ability.extra.fired == false then
          card.ability.perma_mult = card.ability.perma_mult + card.ability.extra.mult
          return {
            extra = { message = localize('k_upgrade_ex'), colour = G.C.MULT },
            card = card
          }
        end
      end
    end

    if context.other_drawn then
      for _, playing_card in ipairs(context.other_drawn) do
        if playing_card == card and card.ability.extra.fired == false then
          card.ability.perma_mult = card.ability.perma_mult + card.ability.extra.mult
          return {
            extra = { message = localize('k_upgrade_ex'), colour = G.C.MULT },
            card = card
          }
        end
      end
    end

    if context.final_scoring_step and card.ability.extra.fired == false and context.cardarea == G.hand and to_big(G.GAME.blind.chips) <= to_big(hand_chips) * to_big(mult) then
      card.ability.perma_mult = card.ability.perma_mult * 2
      G.E_MANAGER:add_event(Event({
        trigger = 'before',
        func = function()
          card.ability.extra.fired = true
          return true;
        end
      }))
      return {
        sound = 'tarot1',
        message = localize('artb_fired'),
        colour = G.C.MULT
      }
    end
  end,

  draw = function(self, card, layer)
    if (layer == 'card' or layer == 'both') then
      if card.ability.extra.fired then
        card.children.center:set_sprite_pos({ x = 1, y = 2 })
      else
        card.children.center:set_sprite_pos({ x = 0, y = 2 })
      end
    end
  end
})
