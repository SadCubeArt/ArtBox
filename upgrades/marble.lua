SMODS.Enhancement({
  key = "marble",
  atlas = "states_atlas",
  pos = { x = 0, y = 0 },
  sprite_args = {
    states = {
      progress0 = {
        start_pos = { x = 0, y = 0 },
        frames = 1
      },
      progress1 = {
        start_pos = { x = 1, y = 0 },
        frames = 1
      },
      progress2 = {
        start_pos = { x = 2, y = 0 },
        frames = 1
      },
      progress3 = {
        start_pos = { x = 3, y = 0 },
        frames = 1
      },
      progress4 = {
        start_pos = { x = 4, y = 0 },
        frames = 1
      },
    },
    default_state = "progress0"
  },
  discovered = true,
  no_rank = true,
  no_suit = true,
  replace_base_card = true,
  always_scores = true,
  config = {
    x_chips = 1,
    extra = {
      progress = 0
    }
  },

  loc_vars = function(self, info_queue, card)
    return {
      vars = {
        card.ability.x_chips,
        card.ability.extra.progress,
      }
    }
  end,

  calculate = function(self, card, context)
    card.ability.extra.progress = card.ability.extra.progress or 0
    if context.final_scoring_step and context.cardarea == G.play then
      ArtBox.chisel_marble(card)
    end
  end,
})

local card_isfaceref = Card.is_face
function Card:is_face(from_boss)
  if self.debuff and not from_boss then return end

  if self.config.center == G.P_CENTERS.m_artb_marble and self.ability.extra.progress >= 4 then
    return true
  end

  return card_isfaceref(self, from_boss)
end
