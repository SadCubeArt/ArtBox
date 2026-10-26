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
    collection_rows = { 2, 3 },
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

    ['aij_smiley'] = { atlas = 'artb_collectable_atlas_2', pos = { x = 6, y = 0 }, soul_pos = { x = 6, y = 1 } },
    ['aij_melted'] = { atlas = 'artb_collectable_atlas_2', pos = { x = 7, y = 0 }, soul_pos = { x = 7, y = 1 } },
    ['aij_eye'] = { atlas = 'artb_collectable_atlas_2', pos = { x = 5, y = 6 }, soul_pos = { x = 5, y = 7 } },

    ['akyrs_carmine'] = { atlas = 'artb_collectable_atlas_2', pos = { x = 5, y = 4 }, soul_pos = { x = 5, y = 5 } },

    ['pl_lavender'] = { atlas = 'artb_collectable_atlas', pos = { x = 6, y = 12 }, soul_pos = { x = 6, y = 13 } },

    ['mxms_black'] = { atlas = 'artb_collectable_atlas_2', pos = { x = 3, y = 6 }, soul_pos = { x = 3, y = 7 } },

    ['ortalab_cyan'] = { atlas = 'artb_collectable_atlas_2', pos = { x = 7, y = 6 }, soul_pos = { x = 7, y = 7 } },
    ['ortalab_magenta'] = { atlas = 'artb_collectable_atlas_2', pos = { x = 8, y = 6 }, soul_pos = { x = 8, y = 7 } },

    ['hnds_black'] = { atlas = 'artb_collectable_atlas_2', pos = { x = 2, y = 8 }, soul_pos = { x = 2, y = 9 } },
    ['hnds_spectralseal'] = { atlas = 'artb_collectable_atlas_2', pos = { x = 1, y = 8 }, soul_pos = { x = 1, y = 9 } },

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
    ['m_artb_clay'] = { atlas = 'artb_collectable_atlas', pos = { x = 5, y = 12 }, soul_pos = { x = 5, y = 13 } },

    ['m_paperback_bandaged'] = { atlas = 'artb_collectable_atlas', pos = { x = 5, y = 4 }, soul_pos = { x = 5, y = 5 } },
    ['m_paperback_soaked'] = { atlas = 'artb_collectable_atlas', pos = { x = 6, y = 4 }, soul_pos = { x = 6, y = 5 } },
    ['m_paperback_ceramic'] = { atlas = 'artb_collectable_atlas', pos = { x = 7, y = 4 }, soul_pos = { x = 7, y = 5 } },
    ['m_paperback_wrapped'] = { atlas = 'artb_collectable_atlas', pos = { x = 8, y = 4 }, soul_pos = { x = 8, y = 5 } },
    ['m_paperback_domino'] = { atlas = 'artb_collectable_atlas', pos = { x = 9, y = 4 }, soul_pos = { x = 9, y = 5 } },
    ['m_paperback_stained'] = { atlas = 'artb_collectable_atlas', pos = { x = 0, y = 6 }, soul_pos = { x = 0, y = 7 } },
    ['m_paperback_sleeved'] = { atlas = 'artb_collectable_atlas', pos = { x = 7, y = 12 }, soul_pos = { x = 7, y = 13 } },
    ['m_paperback_antique'] = { atlas = 'artb_collectable_atlas', pos = { x = 8, y = 12 }, soul_pos = { x = 8, y = 13 } },

    ['m_sarc_strawberry'] = { atlas = 'artb_collectable_atlas', pos = { x = 2, y = 6 }, soul_pos = { x = 2, y = 7 } },
    ['m_sarc_slime'] = { atlas = 'artb_collectable_atlas', pos = { x = 3, y = 6 }, soul_pos = { x = 3, y = 7 } },
    ['m_sarc_flow'] = { atlas = 'artb_collectable_atlas', pos = { x = 4, y = 6 }, soul_pos = { x = 4, y = 7 } },
    ['m_sarc_luminice'] = { atlas = 'artb_collectable_atlas', pos = { x = 5, y = 6 }, soul_pos = { x = 5, y = 7 } },

    ['m_gb_river'] = { atlas = 'artb_collectable_atlas', pos = { x = 6, y = 6 }, soul_pos = { x = 6, y = 7 } },
    ['m_gb_wooden'] = { atlas = 'artb_collectable_atlas', pos = { x = 7, y = 6 }, soul_pos = { x = 7, y = 7 } },
    ['m_gb_honey'] = { atlas = 'artb_collectable_atlas', pos = { x = 8, y = 6 }, soul_pos = { x = 8, y = 7 } },

    ['m_ortalab_recycled'] = { atlas = 'artb_collectable_atlas', pos = { x = 7, y = 8 }, soul_pos = { x = 7, y = 9 } },
    ['m_ortalab_rusty'] = { atlas = 'artb_collectable_atlas', pos = { x = 8, y = 8 }, soul_pos = { x = 8, y = 9 } },
    ['m_ortalab_index'] = { atlas = 'artb_collectable_atlas', pos = { x = 9, y = 8 }, soul_pos = { x = 9, y = 9 } },
    ['m_ortalab_post'] = { atlas = 'artb_collectable_atlas', pos = { x = 0, y = 10 }, soul_pos = { x = 0, y = 11 } },
    ['m_ortalab_bent'] = { atlas = 'artb_collectable_atlas', pos = { x = 1, y = 10 }, soul_pos = { x = 1, y = 11 } },
    ['m_ortalab_sand'] = { atlas = 'artb_collectable_atlas', pos = { x = 2, y = 10 }, soul_pos = { x = 2, y = 11 } },
    ['m_ortalab_iou'] = { atlas = 'artb_collectable_atlas', pos = { x = 3, y = 10 }, soul_pos = { x = 3, y = 11 } },
    ['m_ortalab_ore'] = { atlas = 'artb_collectable_atlas', pos = { x = 4, y = 10 }, soul_pos = { x = 4, y = 11 } },

    ['m_bunc_cracker'] = { atlas = 'artb_collectable_atlas', pos = { x = 9, y = 10 }, soul_pos = { x = 9, y = 11 } },
    ['m_bunc_copper'] = { atlas = 'artb_collectable_atlas', pos = { x = 0, y = 12 }, soul_pos = { x = 0, y = 13 } },

    ['m_aij_fervent'] = { atlas = 'artb_collectable_atlas_2', pos = { x = 0, y = 0 }, soul_pos = { x = 0, y = 1 } },
    ['m_aij_charged'] = { atlas = 'artb_collectable_atlas_2', pos = { x = 1, y = 0 }, soul_pos = { x = 1, y = 1 } },
    ['m_aij_ice'] = { atlas = 'artb_collectable_atlas_2', pos = { x = 2, y = 0 }, soul_pos = { x = 2, y = 1 } },
    ['m_aij_wood'] = { atlas = 'artb_collectable_atlas_2', pos = { x = 3, y = 0 }, soul_pos = { x = 3, y = 1 } },
    ['m_aij_canvas'] = { atlas = 'artb_collectable_atlas_2', pos = { x = 4, y = 0 }, soul_pos = { x = 4, y = 1 } },
    ['m_aij_simulated'] = { atlas = 'artb_collectable_atlas_2', pos = { x = 5, y = 0 }, soul_pos = { x = 5, y = 1 } },
    ['m_aij_scorched'] = { atlas = 'artb_collectable_atlas_2', pos = { x = 4, y = 6 }, soul_pos = { x = 4, y = 7 } },

    ['m_buf_porcelain'] = { atlas = 'artb_collectable_atlas_2', pos = { x = 2, y = 2 }, soul_pos = { x = 2, y = 3 } },
    ['m_buf_porcelain_g'] = { atlas = 'artb_collectable_atlas_2', pos = { x = 3, y = 2 }, soul_pos = { x = 3, y = 3 } },

    ['m_akyrs_scoreless'] = { atlas = 'artb_collectable_atlas_2', pos = { x = 4, y = 2 }, soul_pos = { x = 4, y = 3 } },
    ['m_akyrs_brick_card'] = { atlas = 'artb_collectable_atlas_2', pos = { x = 5, y = 2 }, soul_pos = { x = 5, y = 3 } },
    ['m_akyrs_ash_card'] = { atlas = 'artb_collectable_atlas_2', pos = { x = 6, y = 2 }, soul_pos = { x = 6, y = 3 } },
    ['m_akyrs_hatena'] = { atlas = 'artb_collectable_atlas_2', pos = { x = 7, y = 2 }, soul_pos = { x = 7, y = 3 } },
    ['m_akyrs_item_box'] = { atlas = 'artb_collectable_atlas_2', pos = { x = 8, y = 2 }, soul_pos = { x = 8, y = 3 } },
    ['m_akyrs_insolate_card'] = { atlas = 'artb_collectable_atlas_2', pos = { x = 9, y = 2 }, soul_pos = { x = 9, y = 3 } },
    ['m_akyrs_canopy_card'] = { atlas = 'artb_collectable_atlas_2', pos = { x = 0, y = 4 }, soul_pos = { x = 0, y = 5 } },
    ['m_akyrs_thai_tea_card'] = { atlas = 'artb_collectable_atlas_2', pos = { x = 1, y = 4 }, soul_pos = { x = 1, y = 5 } },
    ['m_akyrs_matcha_card'] = { atlas = 'artb_collectable_atlas_2', pos = { x = 2, y = 4 }, soul_pos = { x = 2, y = 5 } },
    ['m_akyrs_earl_grey_tea_card'] = { atlas = 'artb_collectable_atlas_2', pos = { x = 3, y = 4 }, soul_pos = { x = 3, y = 5 } },
    ['m_akyrs_zap_card'] = { atlas = 'artb_collectable_atlas_2', pos = { x = 4, y = 4 }, soul_pos = { x = 4, y = 5 } },

    ['m_mxms_footprint'] = { atlas = 'artb_collectable_atlas_2', pos = { x = 2, y = 6 }, soul_pos = { x = 2, y = 7 } },

    ['m_hnds_aberrant'] = { atlas = 'artb_collectable_atlas_2', pos = { x = 9, y = 6 }, soul_pos = { x = 9, y = 7 } },
    ['m_hnds_obsidian'] = { atlas = 'artb_collectable_atlas_2', pos = { x = 0, y = 8 }, soul_pos = { x = 0, y = 9 } },

    --Editions
    ['e_polychrome'] = { atlas = 'artb_collectable_atlas', pos = { x = 3, y = 2 }, soul_pos = { x = 3, y = 3 }, shader = 'polychrome', },
    ['e_foil'] = { atlas = 'artb_collectable_atlas', pos = { x = 6, y = 2 }, soul_pos = { x = 3, y = 3 }, shader = 'foil', },
    ['e_holo'] = { atlas = 'artb_collectable_atlas', pos = { x = 7, y = 2 }, soul_pos = { x = 7, y = 3 }, shader = 'holo', },
    ['e_negative'] = { atlas = 'artb_collectable_atlas', pos = { x = 4, y = 4 }, soul_pos = { x = 7, y = 3 }, shader = 'negative', },

    ['e_ortalab_greyscale'] = { atlas = 'artb_collectable_atlas', pos = { x = 5, y = 10 }, soul_pos = { x = 5, y = 11 }, shader = 'ortalab_greyscale', },
    ['e_ortalab_fluorescent'] = { atlas = 'artb_collectable_atlas', pos = { x = 6, y = 10 }, soul_pos = { x = 6, y = 11 }, shader = 'ortalab_fluorescent', },
    ['e_ortalab_anaglyphic'] = { atlas = 'artb_collectable_atlas', pos = { x = 7, y = 10 }, soul_pos = { x = 7, y = 11 }, shader = 'ortalab_anaglyphic', },
    ['e_ortalab_overexposed'] = { atlas = 'artb_collectable_atlas', pos = { x = 8, y = 10 }, soul_pos = { x = 8, y = 11 }, shader = 'ortalab_overexposed', },

    ['e_bunc_glitter'] = { atlas = 'artb_collectable_atlas', pos = { x = 1, y = 12 }, soul_pos = { x = 1, y = 13 }, shader = 'bunc_glitter', },
    ['e_bunc_fluorescent'] = { atlas = 'artb_collectable_atlas', pos = { x = 2, y = 12 }, soul_pos = { x = 2, y = 13 }, shader = 'bunc_fluorescent', },

    ['e_aij_glimmer'] = { atlas = 'artb_collectable_atlas_2', pos = { x = 8, y = 0 }, soul_pos = { x = 8, y = 1 }, shader = 'aij_glimmer', },
    ['e_aij_silver'] = { atlas = 'artb_collectable_atlas_2', pos = { x = 9, y = 0 }, soul_pos = { x = 9, y = 1 }, shader = 'aij_silver', },
    ['e_aij_stellar'] = { atlas = 'artb_collectable_atlas_2', pos = { x = 0, y = 2 }, soul_pos = { x = 0, y = 3 }, shader = 'aij_stellar', },
    ['e_aij_aureate'] = { atlas = 'artb_collectable_atlas_2', pos = { x = 1, y = 2 }, soul_pos = { x = 1, y = 3 }, shader = 'aij_aureate', },
    ['e_aij_misprint'] = { atlas = 'artb_collectable_atlas_2', pos = { x = 6, y = 6 }, soul_pos = { x = 6, y = 7 } },

    ['e_akyrs_texelated'] = { atlas = 'artb_collectable_atlas_2', pos = { x = 6, y = 4 }, soul_pos = { x = 6, y = 5 }, shader = 'akyrs_texelated', },
    ['e_akyrs_noire'] = { atlas = 'artb_collectable_atlas_2', pos = { x = 7, y = 4 }, soul_pos = { x = 7, y = 5 }, shader = 'akyrs_noire', },
    ['e_akyrs_sliced'] = { atlas = 'artb_collectable_atlas_2', pos = { x = 8, y = 4 }, soul_pos = { x = 8, y = 5 } },
    ['e_akyrs_burnt'] = { atlas = 'artb_collectable_atlas_2', pos = { x = 9, y = 4 }, soul_pos = { x = 9, y = 5 } },

    ['e_hnds_vintage'] = { atlas = 'artb_collectable_atlas_2', pos = { x = 3, y = 8 }, soul_pos = { x = 3, y = 9 }, shader = 'hnds_vintage', },
}

SMODS.DrawStep {
    key = 'collectable_shaders',
    order = 61,
    func = function(self, layer)
        if self.ability.set == 'collectable' then
            if self.config.center.key == 'c_artb_mod_collectable' and self.ability.extra.shader then
                local scale_mod = 0.07 + 0.02 * math.sin(1.8 * G.TIMERS.REAL) +
                0.00 * math.sin((G.TIMERS.REAL - math.floor(G.TIMERS.REAL)) * math.pi * 14) *
                (1 - (G.TIMERS.REAL - math.floor(G.TIMERS.REAL))) ^ 3
                local rotate_mod = 0.05 * math.sin(1.219 * G.TIMERS.REAL) +
                0.00 * math.sin((G.TIMERS.REAL) * math.pi * 5) * (1 - (G.TIMERS.REAL - math.floor(G.TIMERS.REAL))) ^ 2

                self.children.floating_sprite:draw_shader(self.ability.extra.shader, nil, self.ARGS.send_to_shader, nil,
                    self.children.center, scale_mod, rotate_mod)
                if self.ability.extra.shader == 'negative' then
                    self.children.floating_sprite:draw_shader('negative_shine', nil, self.ARGS.send_to_shader, nil,
                        self.children.center, scale_mod, rotate_mod)
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
    collection_rows = { 5, 5 },
    shop_rate = 0,
    default = 'c_artb_art_paper'
})
--#endregion