SMODS.Consumable({
    key = 'gros_michel_collectable',
    set = 'collectable',
    atlas = 'collectable_atlas',
    pos = {x=3, y=12},
    soul_pos = {x=3, y=13},
    discovered = true,
    config = {
       extra = { 
        mult = 4,
        mult_add = 4,
      } 
      },
    keep_on_use = function(self, card)
        return false
    end,
    cost = 2,
    can_use = function(self, card)
		return false
	end,

    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.mult, card.ability.extra.mult_add } }
    end,

  add_to_deck = function(self, card, from_debuff)
    if next(SMODS.find_card('c_artb_gros_michel_collectable', count_debuffed))  then
      G.E_MANAGER:add_event(Event({
      func = function()
        play_sound('coin1')
        card:start_dissolve()
        G.consumeables:remove_card(card)
      return true end
      }))
    else
      First=true
    end

  end,

  remove_from_deck = function(self, card, from_debuff)
    for i = 1, #G.consumeables.cards do
			local _card = G.consumeables.cards[i]
			if _card.config.center.key == 'c_artb_gros_michel_collectable' then
				_card.ability.extra.mult = _card.ability.extra.mult + card.ability.extra.mult_add
        card_eval_status_text(_card, 'extra', nil, nil, nil,
          { message = localize { type = 'variable', key = 'a_mult', vars = { card.ability.extra.mult_add } } })
			end
		end
  end,

  calculate = function(self, card, context)
        if context.joker_main then
            return {
              mult = card.ability.extra.mult,
            }
        end
    end
})