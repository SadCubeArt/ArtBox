local igo = Game.init_game_object
Game.init_game_object = function(self)
    local ret = igo(self)
    ret.artb_recursives_used = 1
    ret.artb_spears_sold = 0
    ret.artb_spears_to_trigger = 0
    return ret
end

local atp_ref = SMODS.add_to_pool
function SMODS.add_to_pool(prototype_obj, args)
    local ret = atp_ref(prototype_obj, args)

    if not ArtBox_config.non_art and prototype_obj.artb_non_art then
        ret = false
    end

    return ret
end

local card_align_ref = Card.align
function Card:align()
    card_align_ref(self)

    if self.children.layered_floating_sprite then 
        self.children.layered_floating_sprite.T.y = self.T.y
        self.children.layered_floating_sprite.T.x = self.T.x
        self.children.layered_floating_sprite.T.r = self.T.r
    end
end
