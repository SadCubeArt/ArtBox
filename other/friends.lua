SMODS.Atlas {
	key = "inscryption_LC",
	path = "collabs/inscryption_face_cards_lc.png",
	px = 71,
	py = 95
}

SMODS.Atlas {
	key = "inscryption_HC",
	path = "collabs/inscryption_face_cards_hc.png",
	px = 71,
	py = 95
}

SMODS.DeckSkin {
    key = 'inscryption',
    suit = 'Spades',
	loc_txt = "Inscryption",
    palettes = {
        {
            key = 'Low Contrast Colours',
            ranks = {'Jack', 'Queen', 'King'},
            display_ranks = {'King', 'Queen', 'Jack'},
            pos_style = 'collab',
            atlas = 'artb_inscryption_LC'
        },
        {
            key = 'High Contrast Colours',
            ranks = {'Jack', 'Queen', 'King'},
            display_ranks = {'King', 'Queen', 'Jack'},
            pos_style = 'collab',
            atlas = 'artb_inscryption_HC',
        }
    }
}