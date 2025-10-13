return {
    misc = {
        dictionary = {
            artb_bonk = "Bonk!",
            artb_collectable_shine = 'Enable Collectable Shine',
            artb_caught = "Caught!",
            artb_wow = "WOW!",
            artb_miss = "Miss!",
            artb_arts_crafts_pack = "Arts & Crafts Pack",
            artb_plus_art = "+1 Art",
            artb_plus_tag = "+1 Tag",
            artb_wood = "Wood!",
            artb_wild = "Wild",
            artb_hungry="Hungry",
            artb_fed="Fed",
            artb_starved="Starved :(",
            artb_protoplanet="Protoplanet",
            artb_stolen="Stolen!",
            artb_null_hand_toggle = "Toggle Null Hand",
            artb_menu = "Toggle Custom Menu",
            artb_fill= "Fill!",
            artb_empty= "Empty"
        },
        labels = {
            artb_ouroboros_seal = "Ouroboros Seal",
            artb_brick_seal = "Brick Seal",
            artb_button_seal = "Button Seal",
        },
        poker_hand_descriptions={
            ["artb_null"] = {'5 Rankless Cards'},
        },
        poker_hands={
            ["artb_null"] = "Null",
        },
    },
    descriptions = {
        Joker = {
            j_artb_collage = {
                name = 'Collage',
                text = {
                    "When any playing card is {C:attention}destroyed{},",
                    "gains {C:chips}+#1#{} Chips, {C:mult}+#3#{} Mult, or {X:mult,C:white}X#5#{} Mult",
                    "{C:inactive}(Currently: {C:chips}#2#{} {C:inactive}Chips/{C:mult}#4#{} {C:inactive}Mult/{X:mult,C:white}X#6#{} {C:inactive}Mult)"
                }
            },

            j_artb_halftone = {
                name = 'Halftone',
                text = {
                    "Retrigger all scored cards",
                    "if played hand",
                    "contains a {C:attention}Straight{}",
                }
            },

            j_artb_mitosis = {
                name = 'Mitosis',
                text = {
                    "{C:mult}+#1#{} Mult",
                    "When {C:attention}blind{} is selected,",
                    "creates a copy of this Joker",
                }
            },

            j_artb_bat = {
                name = 'Baseball Bat',
                text = {
                    "Each {C:attention}round{} first time",
                    "you play a {C:attention}hand{} that",
                    "has only one card,",
                    "destroy it",
                }
            },

            j_artb_rubberhose = {
                name = 'Rubber Hose',
                text = { {
                    "Played cards with",
                    "{C:clubs}Club{} suit give",
                    "{C:mult}+#2#{} Mult when scored",
                },
                {
                    "Played cards with",
                    "{C:spades}Spade{} suit give",
                    "{C:chips}+#1#{} Chips when scored",
                } }
            },

            j_artb_clawmachine = {
                name = 'Claw Machine',
                text = {
                    "When {C:attention}Blind{} is selected,",
                    "{C:green}#1# in #2#{} chance",
                    "to create a",
                    "{C:attention}Joker Collectable{}",
                }
            },

            j_artb_rorschach = {
                name = 'Rorschach',
                text = {
                    "All played {C:clubs}Club{} cards",
                    "become {C:attention}Wild Cards{}",
                    "when scored",
                }
            },

            j_artb_sadcube = {
                name = 'Sad Cube',
                text = {
                    "Gain {C:money}$#1#{} when",
                    "any probability {C:attention}fails{}",
                }
            },

            j_artb_transparent_joker = {
                name = '"Transparent" Joker',
                text = {
                    "Scored cards give",
                    "{C:mult}+#1#{} Mult for every",
                    "{C:attention}unscored card{}",
                    "in played hand"
                }
            },

            j_artb_minimalism = {
                name = 'Minimalism',
                text = {
                    "Retrigger all scored cards",
                    "if played hand has 3",
                    "or less scored cards",
                }
            },

            j_artb_wooden_joker = {
                name = 'Wooden Joker',
                text = {
                    "Retrigger last card",
                    "held in hand {C:attention}#1#{} times",
                }
            },

            j_artb_random = {
                name = 'Random',
                text = {
                    "When {C:attention}Blind{} is selected,",
                    "transform all {C:attention}Jokers{}",
                    "to the right",
                    "into random Jokers",
                    "of the same rarity"
                }
            },

            j_artb_trixel = {
                name = 'Trixel',
                text = {
                    "This Joker gains {C:mult}+#1#{} Mult",
                    "if played hand is",
                    "{C:attention}Three of a Kind{}",
                    "{C:inactive}(Currently: {C:mult}#2#{} {C:inactive}Mult)"
                }
            },

            j_artb_seven_nine = {
                name = '789',
                text = { {
                    "When {C:attention}7{} and {C:attention}9{} score",
                    "in the same hand,",
                    "destroy all {C:attention}9{}s",
                },
                {
                    "Scored {C:attention}7{}s give {C:mult}+#2#{} Mult for",
                    "each {C:attention}9{} destroyed by this card",
                    "{C:inactive}(Currently: {C:mult}+#1#{} {C:inactive}Mult)"
                } }
            },

            j_artb_collector = {
                name = 'Collector',
                text = { {
                    "When {C:attention}Blind{} is selected,",
                    "adds {C:money}$#3#{} of {C:attention}sell value{}",
                    "to a {C:attention}Joker{} or {C:attention}Consumable{}",
                    "to the right",
                },
                {
                    "Gives {X:mult,C:white}X#1#{} Mult times",
                    "total {C:attention}sell value{} of all owned",
                    "{C:attention}Jokers{} and {C:attention}Consumables{}",
                    "{C:inactive}(Currently: {X:mult,C:white}X#2#{} {C:inactive}Mult)"
                } }
            },

            j_artb_origami = {
                name = 'Origami',
                text = { {
                    "Create an {C:attention}Art{} card",
                    "When {C:attention}Blind{} is selected",
                    "{C:inactive}(Must have room){}"
                } }
            },

            j_artb_clownfish = {
                name = 'Clownfish',
                text = { {
                    "{X:mult,C:white}X#2#{} Mult",
                    "when round ends",
                    "dies if no cards",
                    "were sold this round",
                    "{C:inactive}(Currently: #1#){}"
                } }
            },

            j_artb_energy_drink = {
                name = 'Energy Drink',
                text = { {
                    "Retriggers {C:attention}Joker{}",
                    "to the right",
                    "Consumed after",
                    "{C:attention}#2#{} round(s)"
                } }
            },

            j_artb_lego_joker = {
                name = 'Lego Joker',
                text = { {
                    "Applying a {C:attention}Brick Seal{}",
                    "to a card that already",
                    "has one {C:attention}stacks{} them",
                    "{C:inactive}(Up to {C:attention}3{} {C:inactive}Seals stacked){}",
                },
                {
                    "Adds a {C:attention}Brick Seal Collectable{}",
                    "when this Joker is obtained",
                    "{C:inactive}(Must have room){}"
                } }
            },

            j_artb_ascii = {
                name = 'Ascii',
                text = { {
                    "Each card in hand gives",
                    "{C:mult}+#1#{} Mult for its and every",
                    "unique rank to the left"
                }}
            },

            j_artb_gold_plating = {
                name = 'Gold Plating',
                text = {{
                    "Gains {C:money}$#1#{} of {C:attention}sell value{}",
                    "at end of round"
                },
                {
                    "Sell this Joker",
                    "to give its {C:attention}sell value{}",
                    "to a Joker to the right"
                }}
            },

            j_artb_stained_glass = {
                name = 'Stained Glass',
                text = {{
                    "{C:attention}Glass Cards{} create an",
                    "{C:attention}Art card{} when scored, and a",
                    "{C:attention}Creative Tag{} when shattered"
                }}
            },

            j_artb_paint_chips = {
                name = 'Paint Chips',
                text = {{
                    "{X:chips,C:white}X#2#{} Chips",
                    "{X:mult,C:white}X#1#{} Mult",
                }}
            },

            j_artb_heist = {
                name = 'Heist',
                text = {{
                    "When {C:attention}Blind{} is selected,",
                    "steals {C:attention}sell value{} of",
                    "the Joker to the right"
                },
                {
                    "gives Mult equal to three",
                    "times this Jokers {C:attention}sell value{}",
                    "{C:inactive}(Currently: {C:mult}+#1#{} {C:inactive}Mult)"
                }}
            },

            j_artb_null_pointer = {
                name = 'Null Pointer',
                text = {{
                    "Fills all empty consumable",
                    "slots with random rankless",
                    "{C:attention}Collectable enhancements{}",
                    "when {C:attention}obtained{} or {C:attention}sold{}"
                }}
            },

            j_artb_card_binder = {
                name = 'Card Binder',
                text = {{
                    "{C:attention}+#1#{} hand size when",
                    "not in a {C:attention}Blind{}"
                }}
            },

            j_artb_paint_bucket = {
                name = 'Paint Bucket',
                text = {{
                    "For the next {C:attention}#1#{} hands",
                    "give one random {C:attention}Enhancement{}",
                    "to all scored cards with same",
                    "{C:attention}Rank{} as first scoring card"
                }}
            },

            j_artb_sparkledog = {
                name = 'Sparkledog',
                text = {{
                    "{C:chips}#1#{} Chips for each",
                    "unique {C:attention}enhancement{}, {C:attention}seal{}",
                    "and {C:attention}edition{} in {C:attention}full deck{}",
                    "{C:inactive}(Currently: {C:chips}#2#{} {C:inactive}Chips)"
                }}
            },



        },
        collectable = {
            c_artb_joker_collectable = {
                name = 'Joker Collectable',
                text = {
                    "{C:attention}+1 consumable slot{} when held",
                    "If you already have",
                    "a {C:attention}Joker Collectable{}",
                    "destroys this and gives",
                    "the other one {C:money}+#1#{} sell value"
                }
            },

            c_artb_limited_edition_collectable = {
                name = 'Limited Edition',
                text = {
                    "{C:attention}+#2# consumable slots{} when held",
                    "If you already have",
                    "a {C:attention}Limited Edition{}",
                    "destroys this and gives",
                    "the other one {C:money}+#1#{} sell value",
                    "and {C:attention}+1 consumable slot{}"
                }
            },
            c_artb_mod_collectable = {
                name = 'Modifier Collectable',
                text = {
                    "Applies {C:attention}#1#{} to",
                    "{C:attention}1{} selected playing card",
                }
            },

            c_artb_mod_collectable_empty = {
                name = 'Modifier Collectable',
                text = {
                    "Applies {C:attention}???{} to",
                    "{C:attention}1{} selected playing card",
                }
            },
            c_artb_gros_michel_collectable = {
                name = 'Gros Michel Collectable',
                text = {
                    "{C:mult}+#1#{} Mult",
                    "If you already have",
                    "a {C:attention}Gros Michel Collectable{}",
                    "destroys this and gives",
                    "the other one {C:mult}+#2#{} Mult"
                }
            },
            c_artb_cavendish_collectable = {
                name = 'Cavendish Collectable',
                text = {
                    "{X:mult,C:white}X#1#{} Mult",
                    "If you already have",
                    "a {C:attention}Cavendish Collectable{}",
                    "destroys this and gives",
                    "the other one {X:mult,C:white}X#2#{} Mult"
                }
            },

        },
        Tag = {
            tag_artb_creative = {
                name = "Creative Tag",
                text = {
                    "Gives a free",
                    "Mega Arts & Crafts Pack"
                }
            }
        },
        art = {
            c_artb_art_paper = {
                name = 'Paper',
                text = {
                    "Enchances {C:attention}#1#{}",
                    "selected cards to",
                    "{C:attention}Pinata Cards{}",
                }
            },
            c_artb_art_art_block = {
                name = 'Art Block',
                text = {
                    "Enchances {C:attention}#1#{}",
                    "selected cards to",
                    "{C:attention}Stained Cards{}",
                }
            },
            c_artb_art_glitter = {
                name = 'Glitter',
                text = {
                    'Add a random edition to',
                    '{C:attention}1{} random card in hand'
                }
            },
            c_artb_art_blend = {
                name = 'Blend',
                text = {
                    'Select {C:attention}2{} cards,',
                    'they copy each others',
                    '{C:attention}enhancements{}, {C:attention}seals{} and {C:attention}editions{}',
                    '{C:inactive}ignores ones already on the card{}'
                }
            },

            c_artb_art_auction = {
                name = 'Auction',
                text = {
                    'Destroys {C:attention}1{} selected card,',
                    'gives {C:money}$#3#{} for its {C:attention}enhancement{},',
                    '{C:money}$#2#{} for its {C:attention}seal{},',
                    'and {C:money}$#1#{} for its {C:attention}edition{}'
                }
            },

            c_artb_art_appraisal = {
                name = 'Appraisal',
                text = {
                    'Gives the total sell',
                    'value of all held consumables',
                    '{C:inactive}(max of {C:money}$30{}){}',
                    'and creates a {C:attention}Collectable Joker{}',
                    '{C:inactive}(Currently: {C:money}$#2#{}){}'
                }
            },

            c_artb_art_plastic = {
                name = 'Plastic',
                text = {
                    'Add a {C:mult}Brick Seal{}',
                    'to {C:attention}1{} selected',
                    'card in your hand'
                }
            },

            c_artb_art_thread = {
                name = 'Thread',
                text = {
                    'Add a Button Seal',
                    'to {C:attention}1{} selected',
                    'card in your hand'
                }
            },

            c_artb_art_swatch = {
                name = 'Swatch',
                text = {
                    'Creates a random',
                    '{C:dark_edition}Negative{} {C:attention}Consumable{}',
                }
            },

            c_artb_art_carving = {
                name = 'Carving',
                text = {
                    "Enchances {C:attention}#1#{}",
                    "selected playing card to",
                    "{C:attention}Wood Card{}",
                }
            },

            c_artb_art_scissors = {
                name = 'Scissors',
                text = {
                    'Destroys {C:attention}1{} selected',
                    'playing card and',
                    'creates Collectables of its',
                    '{C:attention}Edition{}, {C:attention}Seal{} and {C:attention}Enhancement{}',
                    '{C:inactive}(Must have room){}'
                }
            },

            c_artb_art_imitation = {
                name = 'Imitation',
                text = {
                    'Select {C:attention}1{} playing card,',
                    'create an {C:attention}exact?{}',
                    'copy of it',
                }
            },

            c_artb_art_sculpting = {
                name = 'Sculpting',
                text = {
                    "Enchances {C:attention}#1#{}",
                    "selected playing card to",
                    "{C:attention}Marble Card{}",
                }
            },

            c_artb_art_mystery_box = {
                name = 'Mystery Box',
                text = {
                    "Fills all empty consumable",
                    "slots with random",
                    "{C:attention}Modifier Collectables{}",
                }
            },

            c_artb_art_still_life = {
                name = 'Still Life',
                text = {
                    "creates a",
                    "{C:attention}Gros Michel Collectable{}",
                    "{C:inactive}(Must have room, or another{}",
                    "{C:inactive}Gros Michel Collectable already){}"
                }
            }
        },
        Planet={
            c_artb_vesta={
                name="Vesta",
                text={
                    "{S:0.8}({S:0.8,V:1}lvl.#1#{S:0.8}){} Level up",
                    "{C:attention}Null",
                    "{C:mult}+3{} Mult and",
                    "{C:chips}+40{} chips",
                },
            },
        },
        Spectral = {
            c_artb_infinity = {
                name = 'Infinity',
                text = {
                    'Add an {C:dark_edition}Ouroboros Seal{}',
                    'to {C:attention}1{} selected',
                    'card in your hand'
                }
            },
        },
        Enhanced = {
            m_artb_pinata = {
                name = 'Pinata Card',
                text = {
                    'When this card is {C:attention}destroyed{},',
                    'gain {C:money}$#1#{}',
                    'and a random {C:attention}tag{}'
                }
            },
            m_artb_stained = {
                name = 'Stained Card',
                text = {
                    "No rank or suit,",
                    "When this card is {C:attention}discarded{},",
                    "{C:green}#1# in #2#{} chance",
                    "to create an {C:attention}Art card{},",
                    "{C:green}#3# in #4#{} chance",
                    "to create a {C:attention}Creative tag{}",
                }
            },
            m_artb_wood = {
                name = 'Wood Card',
                text = {
                    "When this card",
                    "is held in hand,",
                    "scored cards gain",
                    "permanent {C:chips}+#1#{} Chips"
                }
            },

            m_artb_marble = {
                name = 'Marble Card',
                text = {
                    "No rank or suit,",
                    "Gives {X:chips,C:white}X2{} Chips",
                    "after being played {C:attention}4{} times",
                    "{C:inactive}(#2#/4){}"
                }
            },
        },
        Voucher = {
            v_artb_booster_stack = {
                name = 'Booster Stack',
                text = {
                    "{C:attention}+1 Booster Pack{}",
                    "slot in the shop"
                },
            },
            v_artb_booster_ritual = {
                name = 'Booster Ritual',
                text = {
                    "Whenever you reroll,",
                    "a random {C:attention}Booster Pack{}",
                    "is added in the shop"
                },
            },
            v_artb_pen_holder = {
                name = 'Pen Holder',
                text = {
                    "{C:attention}+1{} consumable slot",
                },
            },
            v_artb_used_supplies = {
                name = 'Used Supplies',
                text = {
                    "When a card is destroyed,",
                    'get a {C:dark_edition}Negative{} collectable of its',
                    '{C:attention}Edition{}, {C:attention}Seal{} and {C:attention}Enhancement{}',
                },
            },
        },

        Back = {
            b_artb_handmade = {
                name = "Handmade Deck",
                text = {
                    "Start run with the",
                    "{C:attention,T:v_artb_pen_holder}#1#{} voucher",
                    "and a random {C:attention}enhancement{},",
                    "{C:attention}seal{} and {C:attention}edition{} Collectable"
                }
            },

            b_artb_box = {
                name = "Box Deck",
                text = {
                    "Start run with the",
                    "{C:attention,T:v_artb_booster_stack}#1#{} voucher",
                    "and a {C:attention,T:c_artb_joker_collectable}#2#{},"
                }
            },
        },
        Other = {
            artb_ouroboros_seal = {
                name = 'Ouroboros Seal',
                text = {
                    'When this card is {C:attention}destroyed{},',
                    'an exact copy is added to the {C:attention}deck{}'
                }
            },

            artb_brick_seal = {
                name = 'Brick Seal',
                text = {
                    'This card gains',
                    '{C:mult}+#1#{} extra Mult',
                    'when scored'
                }
            },

            artb_button_seal = {
                name = 'Button Seal',
                text = {
                    'When scored, {C:attention}suit{}',
                    'of a random card in hand',
                    'changes to this card\'s {C:attention}suit{}'
                }
            },

            p_artb_arts_crafts_small_1 = {
                name = "Arts and Crafts Pack",
                text = {
                    "Choose {C:attention}#1#{} of up to {C:attention}#2#",
                    "{C:be5e6e)}Art{} cards to use",
                },
            },

            p_artb_arts_crafts_small_2 = {
                name = "Arts and Crafts Pack",
                text = {
                    "Choose {C:attention}#1#{} of up to {C:attention}#2#",
                    "{C:be5e6e)}Art{} cards to use",
                },
            },

            p_artb_arts_crafts_jumbo = {
                name = "Jumbo Arts and Crafts Pack",
                text = {
                    "Choose {C:attention}#1#{} of up to {C:attention}#2#",
                    "{C:be5e6e)}Art{} cards to use",
                },
            },

            p_artb_arts_crafts_mega = {
                name = "Mega Arts and Crafts Pack",
                text = {
                    "Choose {C:attention}#1#{} of up to {C:attention}#2#",
                    "{C:be5e6e)}Art{} cards to use",
                },
            },
        },
    }
}
