SMODS.Enhancement({
  key = "clay",
  atlas = "states_atlas",
  pos = { x = 0, y = 2 },
  sprite_args = {
    states = {
      base = {
        start_pos = { x = 0, y = 1 },
        frames = 1
      },
      fired = {
        start_pos = { x = 1, y = 1 },
        frames = 1
      }
    },
    default_state = "base"
  },
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

    if context.final_scoring_step and card.ability.extra.fired == false and context.cardarea == G.hand and G.GAME.blind.chips <= hand_chips * mult then
      card.ability.perma_mult = card.ability.perma_mult * 2
      G.E_MANAGER:add_event(Event({
        trigger = 'before',
        func = function()
          card:set_sprite_state("fired")
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
})
