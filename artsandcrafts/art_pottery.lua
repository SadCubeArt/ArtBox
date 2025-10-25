SMODS.Consumable ({
    object_type = "Consumable",
     atlas = 'arts_atlas',
	key = 'art_pottery',
	set = 'art',
	pos = { x = 3, y = 2 },
	cost = 4,
	unlocked = true,
	discovered = true,
	config = {mod_conv = "m_artb_clay", max_highlighted = 2},
    effect = 'Enhance',
    loc_vars = function(self, info_queue)
		info_queue[#info_queue + 1] = G.P_CENTERS[self.config.mod_conv]

		return { vars = { self.config.max_highlighted } }
	end,

})