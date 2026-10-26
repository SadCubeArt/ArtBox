SMODS.Joker {
    key = "mitosis",
    config = {
      extra = {
        mult=4,
      }
    },
    rarity = 2,
    pos = { x = 4, y = 2},
    atlas = 'joker_atlas',
    cost = 7,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = false,
    perishable_compat = true,
    artb_non_art = true,

    loc_vars = function(self, info_queue, card)
        return {
          vars = {
            card.ability.extra.mult,
          }
        }
    end,
    
    calculate = function(self, card, context)

        if context.setting_blind and #G.jokers.cards + G.GAME.joker_buffer < G.jokers.config.card_limit and not context.blueprint then
            local jokers_to_create = math.min(1, G.jokers.config.card_limit - (#G.jokers.cards + G.GAME.joker_buffer))
                G.GAME.joker_buffer = G.GAME.joker_buffer + jokers_to_create
                G.E_MANAGER:add_event(Event({
                    func = function() 
                        for i = 1, jokers_to_create do
                            local _card = copy_card(card, nil, nil, nil, card.edition and card.edition.negative)
                            _card:add_to_deck()
                            G.jokers:emplace(_card)
                            _card:start_materialize()
                            G.GAME.joker_buffer = 0
                        end
                        return true
                    end}))
        end 

        if context.joker_main then
            return {
              mult = card.ability.extra.mult,
            }
        end
    end
    }