SMODS.Joker {
    key = 'layered',
    pos = { x = 3, y = 7 },
    soul_pos = { x = 4, y = 7 },
    layered_soul_pos = { x = 5, y = 7 },
    edition_for_soul = true,
    atlas = 'joker_atlas',
    unlocked = true,
    discovered = true,
}

SMODS.DrawStep {
    key = 'artb_layered_floating_sprite',
    order = 61,
    func = function(self)
        if self.config.center.layered_soul_pos and (self.config.center.discovered or self.bypass_discovery_center) then
            local scale_mod = 0.07 + 0.02*-math.cos(1.8*G.TIMERS.REAL) + 0.00*-math.cos((G.TIMERS.REAL - math.floor(G.TIMERS.REAL))*math.pi*14)*(1 - (G.TIMERS.REAL - math.floor(G.TIMERS.REAL)))^3
            local rotate_mod = 0.15*-math.cos(1.219*G.TIMERS.REAL) + 0.00*-math.cos((G.TIMERS.REAL)*math.pi*5)*(1 - (G.TIMERS.REAL - math.floor(G.TIMERS.REAL)))^2

            if type(self.config.center.layered_soul_pos.draw) == 'function' then
                self.config.center.layered_soul_pos.draw(self, scale_mod, rotate_mod)
            elseif self.children.layered_floating_sprite then
                self.children.layered_floating_sprite:draw_shader('dissolve', nil, nil, nil, self.children.center, scale_mod, rotate_mod)
            end
            if self.edition then
                local edition = G.P_CENTERS[self.edition.key]
                if (edition.apply_to_float or self.config.center.edition_for_soul) and self.children.layered_floating_sprite then
                    self.children.layered_floating_sprite:draw_shader(edition.shader, nil, nil, nil, self.children.center, scale_mod, rotate_mod)                    
                end
            end
        end
    end,
    conditions = { vortex = false, facing = 'front' },
}

SMODS.draw_ignore_keys['layered_floating_sprite'] = true