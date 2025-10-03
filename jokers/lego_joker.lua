SMODS.Joker {
  key = "lego_joker",
  rarity = 2,
  pos = { x = 4, y = 1 },
  atlas = 'joker_atlas',
  cost = 6,
  unlocked = true,
  discovered = true,
  blueprint_compat = false,
  eternal_compat = true,
  perishable_compat = true,

  loc_vars = function(self, info_queue, card)
    info_queue[#info_queue + 1] = G.P_SEALS['artb_brick']
  end,

  add_to_deck = function(self, card)
    if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
      G.GAME.consumeable_buffer = G.GAME.consumeable_buffer + 1
      G.E_MANAGER:add_event(Event({
        func = function()
          ArtBox.create_collectable('artb_brick')
          G.GAME.consumeable_buffer = 0
          return true
        end
      }))
    end
  end
}

local set_seal_ref = Card.set_seal

function Card:set_seal(_seal, silent, immediate)
  if next(SMODS.find_card('j_artb_lego_joker')) and _seal == 'artb_brick' and self.seal == 'artb_brick' then
    if self.ability.seal.mult_mod < 3 then
      self.ability.seal.mult_mod = self.ability.seal.mult_mod + 1

      if not silent then
        G.CONTROLLER.locks.seal = true
        if immediate then
          self:juice_up(0.3, 0.3)
          play_sound('gold_seal', 1.2, 0.4)
          G.CONTROLLER.locks.seal = false
        else
          G.E_MANAGER:add_event(Event({
            trigger = 'after',
            delay = 0.3,
            func = function()
              self:juice_up(0.3, 0.3)
              play_sound('gold_seal', 1.2, 0.4)
              return true
            end
          }))
          G.E_MANAGER:add_event(Event({
            trigger = 'after',
            delay = 0.15,
            func = function()
              G.CONTROLLER.locks.seal = false
              return true
            end
          }))
        end
      end
      delay(0.5)
      G.E_MANAGER:add_event(Event({
        trigger = "after",
        delay = 0.2,
        func = function()
          G.hand:unhighlight_all()
          return true
        end,
      }))
    end
    return
  end
  set_seal_ref(self, _seal, silent, immediate)
end
