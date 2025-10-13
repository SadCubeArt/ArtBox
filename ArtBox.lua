ArtBox = SMODS.current_mod
ArtBox_config = ArtBox.config

--#region Colors

ArtBox.C = {
    ARTB_PRIMARY = HEX('be5e6e'),
    ARTB_SECONDARY = HEX('86d4c9'),
}

--#endregion

--#region Menu

local oldfunc = Game.main_menu
Game.main_menu = function(change_context)
    local ret = oldfunc(change_context)

    if ArtBox_config.menu then
        -- adds a Blend to the main menu
        local newcard = Card(
			G.title_top.T.x,
			G.title_top.T.y,
			G.CARD_W,
			G.CARD_H,
			G.P_CARDS.empty,
			G.P_CENTERS['c_artb_art_blend'],
			{ bypass_discovery_center = true }
		)

        -- recenter the title
        G.title_top.T.w = G.title_top.T.w * 1.7675
        G.title_top.T.x = G.title_top.T.x - 0.8
        G.title_top:emplace(newcard)

        -- make the card look the same way as the title screen Ace of Spades
        newcard.T.w = newcard.T.w * 1.1 * 1.2
        newcard.T.h = newcard.T.h * 1.1 * 1.2
        newcard.no_ui = true
		newcard.states.visible = false

        -- make the title screen use different background colors
        G.SPLASH_BACK:define_draw_steps({ {
            shader = 'splash',
            send = {
                { name = 'time',       ref_table = G.TIMERS,  ref_value = 'REAL_SHADER' },
                { name = 'vort_speed', val = 0.4 },
                { name = 'colour_1',   ref_table = ArtBox.C, ref_value = 'ARTB_PRIMARY' },
                { name = 'colour_2',   ref_table = ArtBox.C, ref_value = 'ARTB_SECONDARY' },
            }
        } })

        -- materialize blend card
		G.E_MANAGER:add_event(Event({
			trigger = "after",
			delay = 0,
			blockable = false,
			blocking = false,
			func = function()
				if change_context == "splash" then
					newcard.states.visible = true
					newcard:start_materialize({ G.C.WHITE, ArtBox.C.ARTB_SECONDARY }, true, 2.5)
				else
					newcard.states.visible = true
					newcard:start_materialize({ G.C.WHITE, ArtBox.C.ARTB_SECONDARY }, nil, 1.2)
				end
				return true
			end,
		}))
    end

    return ret
end

--#endregion

--#region Atlases
SMODS.Atlas {
    key = 'modicon',
    px = 34,
    py = 34,
    path = 'modicon.png'
}

SMODS.Atlas {
    key = "joker_atlas",
    path = "jokers.png",
    px = 71,
    py = 95
}

SMODS.Atlas {
    key = "collectable_atlas",
    path = "collectable.png",
    px = 71,
    py = 95
}

SMODS.Atlas {
    key = "collectable_atlas_2",
    path = "collectable_2.png",
    px = 71,
    py = 95
}

SMODS.Atlas {
    key = "spectral_atlas",
    path = "spectrals.png",
    px = 71,
    py = 95
}

SMODS.Atlas {
    key = "seal_atlas",
    path = "seals.png",
    px = 71,
    py = 95
}

SMODS.Atlas {
    key = "enhancers_atlas",
    path = "enhancers.png",
    px = 71,
    py = 95
}

SMODS.Atlas {
    key = "boosters_atlas",
    path = "boosters.png",
    px = 71,
    py = 95
}

SMODS.Atlas {
    key = "arts_atlas",
    path = "artsandcrafts.png",
    px = 71,
    py = 95
}

SMODS.Atlas {
    key = "vouchers_atlas",
    path = "vouchers.png",
    px = 71,
    py = 95
}

SMODS.Atlas {
    key = "tags_atlas",
    path = "tags.png",
    px = 34,
    py = 34
}

--#endregion

--#region Config
ArtBox.config_tab = function()
    return {
        n = G.UIT.ROOT,
        config = { align = "m", r = 0.1, padding = 0.1, colour = G.C.BLACK, minw = 8, minh = 6 },
        nodes = {
            { n = G.UIT.R, config = { align = "cl", padding = 0, minh = 0.1 },      nodes = {} },

            -- Collectible Shine Toggle
            {
                n = G.UIT.R,
                config = { align = "cl", padding = 0 },
                nodes = {
                    {
                        n = G.UIT.C,
                        config = { align = "cl", padding = 0.05 },
                        nodes = {
                            create_toggle { col = true, label = "", scale = 1, w = 0, shadow = true, ref_table = ArtBox_config, ref_value = "collectable_shine" },
                        }
                    },
                    {
                        n = G.UIT.C,
                        config = { align = "c", padding = 0 },
                        nodes = {
                            { n = G.UIT.T, config = { text = localize('artb_collectable_shine'), scale = 0.45, colour = G.C.UI.TEXT_LIGHT } },
                        }
                    },
                }
            },

            -- Menu Toggle
            {
                n = G.UIT.R,
                config = { align = "cl", padding = 0 },
                nodes = {
                    {
                        n = G.UIT.C,
                        config = { align = "cl", padding = 0.05 },
                        nodes = {
                            create_toggle { col = true, label = "", scale = 1, w = 0, shadow = true, ref_table = ArtBox_config, ref_value = "menu" },
                        }
                    },
                    {
                        n = G.UIT.C,
                        config = { align = "c", padding = 0 },
                        nodes = {
                            { n = G.UIT.T, config = { text = localize('artb_menu'), scale = 0.45, colour = G.C.UI.TEXT_LIGHT } },
                        }
                    },
                }
            },

            -- Null Hand Toggle
            {
                n = G.UIT.R,
                config = { align = "cl", padding = 0 },
                nodes = {
                    {
                        n = G.UIT.C,
                        config = { align = "cl", padding = 0.05 },
                        nodes = {
                            create_toggle { col = true, label = "", scale = 1, w = 0, shadow = true, ref_table = ArtBox_config, ref_value = "null_hand" },
                        }
                    },
                    {
                        n = G.UIT.C,
                        config = { align = "c", padding = 0 },
                        nodes = {
                            { n = G.UIT.T, config = { text = localize('artb_null_hand_toggle'), scale = 0.45, colour = G.C.UI.TEXT_LIGHT } },
                        }
                    },
                }
            },
        }
    }
end

SMODS.current_mod.optional_features = function()
    return {
        retrigger_joker = true
    }
end
--#endregion

--#region Collectable Stuff

SMODS.ConsumableType({
    key = "collectable",
    primary_colour = HEX("60b2be"),
    secondary_colour = HEX("60b2be"),
    loc_txt = {
        name = "Collectable",
        collection = "Collectables",
        undiscovered = {
            name = 'Unknown Collectable',
            text = { 'Find this card in an unseeded', 'run to find out what it does' }
        }
    },
    collection_rows = { 2,3 },
    shop_rate = 0,
    default = 'c_artb_joker_collectable'
})

ArtBox.Collectables = {
    --Seals
    ['Red'] = { atlas = 'artb_collectable_atlas', pos = { x = 0, y = 0 }, soul_pos = { x = 0, y = 1 } },
    ['Blue'] = { atlas = 'artb_collectable_atlas', pos = { x = 5, y = 0 }, soul_pos = { x = 5, y = 1 } },
    ['Gold'] = { atlas = 'artb_collectable_atlas', pos = { x = 2, y = 4 }, soul_pos = { x = 2, y = 5 }, shader = 'voucher' },
    ['Purple'] = { atlas = 'artb_collectable_atlas', pos = { x = 3, y = 4 }, soul_pos = { x = 3, y = 5 } },
    ['artb_brick'] = { atlas = 'artb_collectable_atlas', pos = { x = 7, y = 0 }, soul_pos = { x = 7, y = 1 } },
    ['artb_button'] = { atlas = 'artb_collectable_atlas', pos = { x = 0, y = 4 }, soul_pos = { x = 0, y = 5 } },
    ['artb_ouroboros'] = { atlas = 'artb_collectable_atlas', pos = { x = 1, y = 4 }, soul_pos = { x = 1, y = 5 } },

    ['gb_dual'] = { atlas = 'artb_collectable_atlas', pos = { x = 9, y = 6 }, soul_pos = { x = 9, y = 7 } },
    ['gb_fortune'] = { atlas = 'artb_collectable_atlas', pos = { x = 0, y = 8 }, soul_pos = { x = 0, y = 9 } },
    ['gb_infinite'] = { atlas = 'artb_collectable_atlas', pos = { x = 1, y = 8 }, soul_pos = { x = 1, y = 9 } },

    ['aij_smiley'] = { atlas = 'artb_collectable_atlas_2', pos = { x = 6, y = 0 }, soul_pos = { x = 6, y = 1 }},
    ['aij_melted'] = { atlas = 'artb_collectable_atlas_2', pos = { x = 7, y = 0 }, soul_pos = { x = 7, y = 1 }},

    --Enhancements
    ['m_bonus'] = { atlas = 'artb_collectable_atlas', pos = { x = 1, y = 0 }, soul_pos = { x = 1, y = 1 } },
    ['m_mult'] = { atlas = 'artb_collectable_atlas', pos = { x = 4, y = 0 }, soul_pos = { x = 4, y = 1 } },
    ['m_stone'] = { atlas = 'artb_collectable_atlas', pos = { x = 6, y = 0 }, soul_pos = { x = 6, y = 1 } },
    ['m_lucky'] = { atlas = 'artb_collectable_atlas', pos = { x = 8, y = 0 }, soul_pos = { x = 8, y = 1 } },
    ['m_steel'] = { atlas = 'artb_collectable_atlas', pos = { x = 9, y = 0 }, soul_pos = { x = 9, y = 1 } },
    ['m_gold'] = { atlas = 'artb_collectable_atlas', pos = { x = 0, y = 2 }, soul_pos = { x = 0, y = 3 } },
    ['m_glass'] = { atlas = 'artb_collectable_atlas', pos = { x = 1, y = 2 }, soul_pos = { x = 1, y = 3 } },
    ['m_wild'] = { atlas = 'artb_collectable_atlas', pos = { x = 2, y = 2 }, soul_pos = { x = 2, y = 3 } },
    ['m_artb_pinata'] = { atlas = 'artb_collectable_atlas', pos = { x = 4, y = 2 }, soul_pos = { x = 4, y = 3 } },
    ['m_artb_wood'] = { atlas = 'artb_collectable_atlas', pos = { x = 9, y = 2 }, soul_pos = { x = 9, y = 3 } },
    ['m_artb_stained'] = { atlas = 'artb_collectable_atlas', pos = { x = 8, y = 2 }, soul_pos = { x = 8, y = 3 } },
    ['m_artb_marble'] = { atlas = 'artb_collectable_atlas', pos = { x = 1, y = 6 }, soul_pos = { x = 1, y = 7 } },

    ['m_paperback_bandaged'] = { atlas = 'artb_collectable_atlas', pos = { x = 5, y = 4 }, soul_pos = { x = 5, y = 5 } },
    ['m_paperback_soaked'] = { atlas = 'artb_collectable_atlas', pos = { x = 6, y = 4 }, soul_pos = { x = 6, y = 5 } },
    ['m_paperback_ceramic'] = { atlas = 'artb_collectable_atlas', pos = { x = 7, y = 4 }, soul_pos = { x = 7, y = 5 } },
    ['m_paperback_wrapped'] = { atlas = 'artb_collectable_atlas', pos = { x = 8, y = 4 }, soul_pos = { x = 8, y = 5 } },
    ['m_paperback_domino'] = { atlas = 'artb_collectable_atlas', pos = { x = 9, y = 4 }, soul_pos = { x = 9, y = 5 } },
    ['m_paperback_stained'] = { atlas = 'artb_collectable_atlas', pos = { x = 0, y = 6 }, soul_pos = { x = 0, y = 7 } },

    ['m_sarc_strawberry'] = { atlas = 'artb_collectable_atlas', pos = { x = 2, y = 6 }, soul_pos = { x = 2, y = 7 } },
    ['m_sarc_slime'] = { atlas = 'artb_collectable_atlas', pos = { x = 3, y = 6 }, soul_pos = { x = 3, y = 7 } },
    ['m_sarc_flow'] = { atlas = 'artb_collectable_atlas', pos = { x = 4, y = 6 }, soul_pos = { x = 4, y = 7 } },
    ['m_sarc_luminice'] = { atlas = 'artb_collectable_atlas', pos = { x = 5, y = 6 }, soul_pos = { x = 5, y = 7 } },

    ['m_gb_river'] = { atlas = 'artb_collectable_atlas', pos = { x = 6, y = 6 }, soul_pos = { x = 6, y = 7 } },
    ['m_gb_wooden'] = { atlas = 'artb_collectable_atlas', pos = { x = 7, y = 6 }, soul_pos = { x = 7, y = 7 } },
    ['m_gb_honey'] = { atlas = 'artb_collectable_atlas', pos = { x = 8, y = 6 }, soul_pos = { x = 8, y = 7 } },

    ['m_ortalab_recycled'] = { atlas = 'artb_collectable_atlas', pos = { x = 7, y = 8 }, soul_pos = { x = 7, y = 9 }},
    ['m_ortalab_rusty'] = { atlas = 'artb_collectable_atlas', pos = { x = 8, y = 8 }, soul_pos = { x = 8, y = 9 }},
    ['m_ortalab_index'] = { atlas = 'artb_collectable_atlas', pos = { x = 9, y = 8 }, soul_pos = { x = 9, y = 9 }},
    ['m_ortalab_post'] = { atlas = 'artb_collectable_atlas', pos = { x = 0, y = 10 }, soul_pos = { x = 0, y = 11 }},
    ['m_ortalab_bent'] = { atlas = 'artb_collectable_atlas', pos = { x = 1, y = 10 }, soul_pos = { x = 1, y = 11 }},
    ['m_ortalab_sand'] = { atlas = 'artb_collectable_atlas', pos = { x = 2, y = 10 }, soul_pos = { x = 2, y = 11 }},
    ['m_ortalab_iou'] = { atlas = 'artb_collectable_atlas', pos = { x = 3, y = 10 }, soul_pos = { x = 3, y = 11 }},
    ['m_ortalab_ore'] = { atlas = 'artb_collectable_atlas', pos = { x = 4, y = 10 }, soul_pos = { x = 4, y = 11 }},

    ['m_bunc_cracker'] = { atlas = 'artb_collectable_atlas', pos = { x = 9, y = 10 }, soul_pos = { x = 9, y = 11 }},
    ['m_bunc_copper'] = { atlas = 'artb_collectable_atlas', pos = { x = 0, y = 12 }, soul_pos = { x = 0, y = 13 }},

    ['m_aij_fervent'] = { atlas = 'artb_collectable_atlas_2', pos = { x = 0, y = 0 }, soul_pos = { x = 0, y = 1 }},
    ['m_aij_charged'] = { atlas = 'artb_collectable_atlas_2', pos = { x = 1, y = 0 }, soul_pos = { x = 1, y = 1 }},
    ['m_aij_ice'] = { atlas = 'artb_collectable_atlas_2', pos = { x = 2, y = 0 }, soul_pos = { x = 2, y = 1 }},
    ['m_aij_wood'] = { atlas = 'artb_collectable_atlas_2', pos = { x = 3, y = 0 }, soul_pos = { x = 3, y = 1 }},
    ['m_aij_canvas'] = { atlas = 'artb_collectable_atlas_2', pos = { x = 4, y = 0 }, soul_pos = { x = 4, y = 1 }},
    ['m_aij_simulated'] = { atlas = 'artb_collectable_atlas_2', pos = { x = 5, y = 0 }, soul_pos = { x = 5, y = 1 }},

    ['m_buf_porcelain'] = { atlas = 'artb_collectable_atlas_2', pos = { x = 2, y = 2 }, soul_pos = { x = 2, y = 3 }},
    ['m_buf_porcelain_g'] = { atlas = 'artb_collectable_atlas_2', pos = { x = 3, y = 2 }, soul_pos = { x = 3, y = 3 }},
    
    --Editions
    ['e_polychrome'] = { atlas = 'artb_collectable_atlas', pos = { x = 3, y = 2 }, soul_pos = { x = 3, y = 3 }, shader = 'polychrome', },
    ['e_foil'] = { atlas = 'artb_collectable_atlas', pos = { x = 6, y = 2 }, soul_pos = { x = 3, y = 3 }, shader = 'foil', },
    ['e_holo'] = { atlas = 'artb_collectable_atlas', pos = { x = 7, y = 2 }, soul_pos = { x = 7, y = 3 }, shader = 'holo', },
    ['e_negative'] = { atlas = 'artb_collectable_atlas', pos = { x = 4, y = 4 }, soul_pos = { x = 7, y = 3 }, shader = 'negative', },

    ['e_ortalab_greyscale'] = { atlas = 'artb_collectable_atlas', pos = { x = 5, y = 10 }, soul_pos = { x = 5, y = 11 }, shader = 'ortalab_greyscale', },
    ['e_ortalab_fluorescent'] = { atlas = 'artb_collectable_atlas', pos = { x = 6, y = 10 }, soul_pos = { x = 6, y = 11 }, shader = 'ortalab_fluorescent', },
    ['e_ortalab_anaglyphic'] = { atlas = 'artb_collectable_atlas', pos = { x = 7, y = 10 }, soul_pos = { x = 7, y = 11 }, shader = 'ortalab_anaglyphic', },
    ['e_ortalab_overexposed'] = { atlas = 'artb_collectable_atlas', pos = { x = 8, y = 10 }, soul_pos = { x = 8, y = 11 }, shader = 'ortalab_overexposed', },

    ['e_bunc_glitter'] = { atlas = 'artb_collectable_atlas', pos = { x = 2, y = 12 }, soul_pos = { x = 2, y = 13 }, shader = 'bunc_glitter', },
    ['e_bunc_fluorescent'] = { atlas = 'artb_collectable_atlas', pos = { x = 3, y = 12 }, soul_pos = { x = 3, y = 13 }, shader = 'bunc_fluorescent', },

    ['e_aij_glimmer'] = { atlas = 'artb_collectable_atlas_2', pos = { x = 8, y = 0 }, soul_pos = { x = 8, y = 1 }, shader = 'aij_glimmer',},
    ['e_aij_silver'] = { atlas = 'artb_collectable_atlas_2', pos = { x = 9, y = 0 }, soul_pos = { x = 9, y = 1 }, shader = 'aij_silver',},
    ['e_aij_stellar'] = { atlas = 'artb_collectable_atlas_2', pos = { x = 0, y = 2 }, soul_pos = { x = 0, y = 3 }, shader = 'aij_stellar',},
    ['e_aij_aureate'] = { atlas = 'artb_collectable_atlas_2', pos = { x = 1, y = 2 }, soul_pos = { x = 1, y = 3 }, shader = 'aij_aureate',},
}

function ArtBox.add_collectible(key, args)
    if G.P_SEALS[key] or G.P_CENTERS[key] then
        ArtBox.Collectables[key] = args
        sendDebugMessage('A Collectable type ' .. key .. ' has been be loaded', 'ArtBox')
    else
        sendWarnMessage('A Collectable type ' .. key .. ' could not properly be loaded', 'ArtBox')
    end
end
    

function ArtBox.create_collectable(key)
    local collectable = SMODS.add_card({ key = 'c_artb_mod_collectable' })

    if G.P_SEALS[key] then
        collectable.ability.extra.seal = key
    end

    if G.P_CENTERS[key] then
        if key:sub(1, 2) == 'm_' then
            collectable.ability.extra.enhancement = key
        elseif key:sub(1, 2) == 'e_' then
            collectable.ability.extra.edition = key
        end
    end

    local ref_values = ArtBox.Collectables[key]
    if ref_values then
        collectable.children.center.atlas = G.ASSET_ATLAS[ref_values.atlas]
        collectable.children.center:set_sprite_pos(ref_values.pos)

        collectable.children.floating_sprite = Sprite(collectable.T.x, collectable.T.y, collectable.T.w, collectable.T.h, G.ASSET_ATLAS[ref_values.atlas], ref_values.soul_pos)
        collectable.children.floating_sprite.role.draw_major = collectable
        collectable.children.floating_sprite.states.hover.can = false
        collectable.children.floating_sprite.states.click.can = false

        collectable.ability.extra.shader = ref_values.shader
    end

    return collectable
end

SMODS.DrawStep {
  key = 'collectable_shaders',
  order = 61,
  func = function(self, layer)
    if self.ability.set == 'collectable' then
      if self.config.center.key == 'c_artb_mod_collectable' and self.ability.extra.shader then
        local scale_mod = 0.07 + 0.02 * math.sin(1.8 * G.TIMERS.REAL) + 0.00 * math.sin((G.TIMERS.REAL - math.floor(G.TIMERS.REAL)) * math.pi * 14) * (1 - (G.TIMERS.REAL - math.floor(G.TIMERS.REAL))) ^ 3
        local rotate_mod = 0.05 * math.sin(1.219 * G.TIMERS.REAL) + 0.00 * math.sin((G.TIMERS.REAL) * math.pi * 5) * (1 - (G.TIMERS.REAL - math.floor(G.TIMERS.REAL))) ^ 2

        self.children.floating_sprite:draw_shader(self.ability.extra.shader, nil, self.ARGS.send_to_shader, nil, self.children.center, scale_mod, rotate_mod)
        if self.ability.extra.shader == 'negative' then
          self.children.floating_sprite:draw_shader('negative_shine', nil, self.ARGS.send_to_shader, nil, self.children.center, scale_mod, rotate_mod)
        end
      end
      if self:should_draw_base_shader() and ArtBox_config.collectable_shine then
        self.children.center:draw_shader('voucher', nil, self.ARGS.send_to_shader)
      end
    end
  end,
  conditions = { vortex = false, facing = 'front' },
}

--#endregion

--#region Art Card stuff
SMODS.ConsumableType({
    key = "art",
    primary_colour = HEX("be5e6e"),
    secondary_colour = HEX("be5e6e"),
    loc_txt = {
        name = "Art Card",
        collection = "Art Cards",
        undiscovered = {
            name = 'Unknown Art Card',
            text = { 'Find this card in an unseeded', 'run to find out what it does' }
        }
    },
    collection_rows = { 5,5 },
    shop_rate = 0,
    default = 'c_artb_art_paper'
})
--#endregion

--#region File Loading
local path = SMODS.current_mod.path .. 'jokers/'
for _, v in pairs(NFS.getDirectoryItems(path)) do
    assert(SMODS.load_file('jokers/' .. v))()
end

local path = SMODS.current_mod.path .. 'collectable/'
for _, v in pairs(NFS.getDirectoryItems(path)) do
    assert(SMODS.load_file('collectable/' .. v))()
end

local path = SMODS.current_mod.path .. 'upgrades/'
for _, v in pairs(NFS.getDirectoryItems(path)) do
    assert(SMODS.load_file('upgrades/' .. v))()
end

local path = SMODS.current_mod.path .. 'artsandcrafts/'
for _, v in pairs(NFS.getDirectoryItems(path)) do
    assert(SMODS.load_file('artsandcrafts/' .. v))()
end

local path = SMODS.current_mod.path .. 'challenges/'
for _, v in pairs(NFS.getDirectoryItems(path)) do
    assert(SMODS.load_file('challenges/' .. v))()
end

local path = SMODS.current_mod.path .. 'other/'
for _, v in pairs(NFS.getDirectoryItems(path)) do
    assert(SMODS.load_file('other/' .. v))()
end
--#endregion