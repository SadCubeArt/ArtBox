SMODS.Consumable({
    key = 'limited_edition_collectable',
    set = 'collectable',
    atlas = 'collectable_atlas',
    pos = {x=3, y=0},
    soul_pos = {x=3, y=1},
    discovered = true,
    config = {
       extra = { 
        added_value = 8,
        slot=2,
        original=false,
      } 
      },
    keep_on_use = function(self, card)
        return false
    end,
    cost = 16,
    can_use = function(self, card)
		return false
	end,

    loc_vars = function(self, info_queue, card)
       local slot = card.ability.extra.slot
       local original = card.ability.extra.original
        return { vars = { 
          card.ability.extra.added_value,
          slot } }
    end,

  add_to_deck = function(self, card, from_debuff)
    G.E_MANAGER:add_event(Event({
      func = function()
        G.consumeables.config.card_limit = G.consumeables.config.card_limit + 2
        return true
      end
    }))
    if next(SMODS.find_card('c_artb_limited_edition_collectable', count_debuffed))  then
      card.ability.extra.original=false
      G.E_MANAGER:add_event(Event({
      func = function()
        play_sound('coin1')
        card:start_dissolve()
        G.consumeables:remove_card(card)
      return true end
      }))
    else
      card.ability.extra.original=true
    end
  end,
  remove_from_deck = function(self, card, from_debuff)
    for i = 1, #G.consumeables.cards do
			local _card = G.consumeables.cards[i]
			if _card.config.center.key == 'c_artb_limited_edition_collectable' and _card.ability.extra.original==true then
				_card.ability.extra_value = _card.ability.extra_value + _card.ability.extra.added_value
        SMODS.calculate_effect({ extra = { message = localize('k_val_up'), colour = G.C.MONEY } }, _card)
        _card:set_cost()
        _card.ability.extra.slot=_card.ability.extra.slot+1
			end
		end

    if card.ability.extra.original==true then
      G.E_MANAGER:add_event(Event({
      func = function()
        G.consumeables.config.card_limit = G.consumeables.config.card_limit - card.ability.extra.slot
        return true
      end
    }))
    else
      G.E_MANAGER:add_event(Event({
      func = function()
        G.consumeables.config.card_limit = G.consumeables.config.card_limit - 1
        return true
      end
    }))
    end
    
  end
})