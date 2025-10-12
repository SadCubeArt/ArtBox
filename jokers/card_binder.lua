SMODS.Joker {
    key = "card_binder",
    config = {
      extra = {
        bonus_hs=4,
        active=false,
      }
    },
    rarity = 1,
    pos = { x = 1, y = 6},
    atlas = 'joker_atlas',
    cost = 4,
    unlocked = true,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    perishable_compat = true,

    loc_vars = function(self, info_queue, card)
        return {
          vars = {
            card.ability.extra.bonus_hs,
          }
        }
    end,

    add_to_deck = function(self, card, from_debuff)
      if not G.GAME.blind.in_blind and card.ability.extra.active==false then
        card.ability.extra.active=true
        G.hand:change_size(card.ability.extra.bonus_hs)
        card:juice_up()
      end
    end,

    remove_from_deck = function(self, card, from_debuff)
      if card.ability.extra.active==true then
        card.ability.extra.active=false
        G.hand:change_size(-card.ability.extra.bonus_hs)
        card:juice_up()
      end
    end,

    calculate = function(self, card, context)
        if context.setting_blind and card.ability.extra.active==true and not context.blueprint then
          card.ability.extra.active=false
          G.hand:change_size(-card.ability.extra.bonus_hs)
          card:juice_up()
        end

        if context.end_of_round and card.ability.extra.active==false and context.game_over == false and context.main_eval and not context.blueprint then
          card.ability.extra.active=true
          G.hand:change_size(card.ability.extra.bonus_hs)
          card:juice_up()
        end
    end,

    draw = function(self, card, layer)
    if (layer == 'card' or layer == 'both') then
      if card.ability.extra.active==true then
        card.children.center:set_sprite_pos({ x = 2, y = 6})
      else
        card.children.center:set_sprite_pos({ x = 1, y = 6})
      end
      
    end
  end
    }