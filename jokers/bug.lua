SMODS.Joker {
  key = "bug",
  config = {
    extra = {
      rank = 'Ace',
      effect = "",
      mult = 15,
      chips = 75,
      dollars = 8,
      bonus_mult = 2,
      bonus_chips = 8,
      xmult = 2
    }
  },
  rarity = 1,
  pos = { x = 3, y = 6 },
  atlas = 'joker_atlas',
  cost = 4,
  unlocked = true,
  discovered = true,
  blueprint_compat = true,
  eternal_compat = true,
  perishable_compat = true,

  loc_vars = function(self, info_queue, card)
    return {
      vars = {
        card.ability.extra.rank,
        card.ability.extra.effect
      }
    }
  end,

  add_to_deck = function(self, card)
    local valid_cards = {}

    for k, v in ipairs(G.playing_cards) do
      if not SMODS.has_no_rank(v) then
        valid_cards[#valid_cards + 1] = v
      end
    end

    if #valid_cards > 0 then
      local selected_card = pseudorandom_element(valid_cards, pseudoseed('bug'))
      card.ability.extra.rank = selected_card.base.value
    end

    card.ability.extra.effect = pseudorandom_element(
      { "mult", "chips", "dollars", "bonus_mult", "bonus_chips", "xmult" }, pseudoseed('collage'))
  end,

  calculate = function(self, card, context)
    if context.after then
      local has_rank = false

      for _, v in ipairs(context.scoring_hand) do
        if v.base.value == card.ability.extra.rank then
          has_rank = true
        end
      end

      if has_rank == true then
        if card.ability.extra.effect == "bonus_chips" then
          for k, v in ipairs(context.scoring_hand) do
            v.ability.perma_bonus = (v.ability.perma_bonus or 0) + card.ability.extra.bonus_chips
            SMODS.calculate_effect({ extra = { message = localize('k_upgrade_ex'), colour = G.C.CHIPS } }, v)
          end

          return {
            extra = { message = localize('artb_bug'), colour = G.C.CHIPS },
            colour = G.C.CHIPS,
            card = card
          }
        elseif card.ability.extra.effect == "bonus_mult" then
          for k, v in ipairs(context.scoring_hand) do
            v.ability.perma_mult = (v.ability.perma_mult or 0) + card.ability.extra.bonus_mult
            SMODS.calculate_effect({ extra = { message = localize('k_upgrade_ex'), colour = G.C.MULT } }, v)
          end

          return {
            extra = { message = localize('artb_bug'), colour = G.C.MULT },
            colour = G.C.MULT,
            card = card
          }
        end
      end
    end

    if context.joker_main then
      local has_rank = false

      for _, v in ipairs(context.scoring_hand) do
        if v.base.value == card.ability.extra.rank then
          has_rank = true
        end
      end

      if has_rank == true then
        if card.ability.extra.effect == "mult" then
          return {
            mult = card.ability.extra.mult
          }
        elseif card.ability.extra.effect == "chips" then
          return {
            chips = card.ability.extra.chips
          }
        elseif card.ability.extra.effect == "dollars" then
          return {
            dollars = card.ability.extra.dollars
          }
        elseif card.ability.extra.effect == "xmult" then
          return {
            x_mult = card.ability.extra.xmult
          }
        end
      end
    end
  end
}
