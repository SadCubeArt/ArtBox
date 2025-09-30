SMODS.Consumable({
    key = 'cavendish_collectable',
    set = 'collectable',
    atlas = 'collectable_atlas',
    pos = {x=4, y=12},
    soul_pos = {x=4, y=13},
    discovered = true,
    config = {
       extra = { 
        xmult = 2,
        xmult_add = 1,
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
        return { vars = { card.ability.extra.xmult, card.ability.extra.xmult_add } }
    end,

  add_to_deck = function(self, card, from_debuff)
    if next(SMODS.find_card('c_artb_cavendish_collectable', count_debuffed))  then
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
			if _card.config.center.key == 'c_artb_cavendish_collectable' then
				_card.ability.extra.xmult = _card.ability.extra.xmult + card.ability.extra.xmult_add
        card_eval_status_text(_card, 'extra', nil, nil, nil,
          { message = localize { type = 'variable', key = 'a_xmult', vars = { _card.ability.extra.xmult } } })
			end
		end
  end,

  calculate = function(self, card, context)
        if context.joker_main then
            return {
              x_mult = card.ability.extra.xmult
            }
        end
    end
})