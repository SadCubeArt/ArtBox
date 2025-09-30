SMODS.PokerHand {
  key = 'null',
  visible = false,
  chips = 130,
  mult = 13,
  l_chips = 40,
  l_mult = 3,
  example = {
    { "S_A", true, enhancement = "m_stone" },
    { "S_A", true, enhancement = "m_stone" },
    { "S_A", true, enhancement = "m_artb_marble" },
    { "S_A", true, enhancement = "m_artb_stained" },
    { "S_A", true, enhancement = "m_artb_marble" },
  },
  evaluate = function(parts, hand)
    if ArtBox_config.null_hand then
      local _scoring = {}
      for _, card in ipairs(hand) do
        if SMODS.has_no_rank(card) then
          _scoring[#_scoring + 1] = card
        end
      end
      if #_scoring >= 5 then return { _scoring } end
    end
  end
}

SMODS.Consumable {
  set = "Planet",
  key = "vesta",
  pos = { x = 1, y = 0 },
  discovered = true,
  config = {
    hand_type = "artb_null",
    softlock = true
  },
  atlas = "spectral_atlas",
  loc_vars = function(self, info_queue, center)
    return {
      vars = {
        G.GAME.hands["artb_null"].level,
        localize("artb_null"),
        G.GAME.hands["artb_null"].l_mult,
        G.GAME.hands["artb_null"].l_chips,
        colours = { (to_big(G.GAME.hands["artb_null"].level) == to_big(1) and G.C.UI.TEXT_DARK or G.C.HAND_LEVELS[math.min(7, G.GAME.hands["artb_null"].level)]) }
      }
    }
  end,
  set_card_type_badge = function(self, card, badges)
    badges[#badges + 1] = create_badge(localize('artb_protoplanet'), get_type_colour(card.config.center, card),
      nil, 1.2)
  end
}
