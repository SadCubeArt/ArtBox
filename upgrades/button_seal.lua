SMODS.Seal {
  key = "button",
  badge_colour = HEX("4f6367"),
  atlas = "seal_atlas",
  pos = { x = 3, y = 0 },
  discovered = true,

  calculate = function(self, card, context)
    if context.cardarea == G.play and context.main_scoring then
      if G.hand and G.hand.cards and #G.hand.cards > 0 then
        local valid_targets = {}
        for _, v in ipairs(G.hand.cards) do
          if v.base.suit ~= card.base.suit and not v.artb_button_queued or v.artb_button_queued and v.artb_button_queued[#v.artb_button_queued] ~= card.base.suit then
            table.insert(valid_targets, v)
          end
        end

        if next(valid_targets) then
          local _card = pseudorandom_element(valid_targets, pseudoseed('button'))
          _card.artb_button_queued = _card.artb_button_queued or {}
          _card.artb_button_queued[#_card.artb_button_queued+1] = card.base.suit
          G.E_MANAGER:add_event(Event({
            trigger = 'after',
            delay = 0.1,
            func = function()
              assert(SMODS.change_base(_card, card.base.suit))
              _card:juice_up(0.3, 0.5)
              _card.artb_button_queued = nil
              return true
            end
          }))
        end
      end
    end
  end
}
