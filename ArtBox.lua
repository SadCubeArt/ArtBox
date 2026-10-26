ArtBox = SMODS.current_mod
ArtBox_config = ArtBox.config

--#region File Loading
local path = SMODS.current_mod.path .. 'src/'
for _, v in pairs(NFS.getDirectoryItems(path)) do
    assert(SMODS.load_file('src/' .. v))()
end

path = SMODS.current_mod.path .. 'jokers/'
for _, v in pairs(NFS.getDirectoryItems(path)) do
    assert(SMODS.load_file('jokers/' .. v))()
end

path = SMODS.current_mod.path .. 'collectable/'
for _, v in pairs(NFS.getDirectoryItems(path)) do
    assert(SMODS.load_file('collectable/' .. v))()
end

path = SMODS.current_mod.path .. 'upgrades/'
for _, v in pairs(NFS.getDirectoryItems(path)) do
    assert(SMODS.load_file('upgrades/' .. v))()
end

path = SMODS.current_mod.path .. 'artsandcrafts/'
for _, v in pairs(NFS.getDirectoryItems(path)) do
    assert(SMODS.load_file('artsandcrafts/' .. v))()
end

path = SMODS.current_mod.path .. 'challenges/'
for _, v in pairs(NFS.getDirectoryItems(path)) do
    assert(SMODS.load_file('challenges/' .. v))()
end

path = SMODS.current_mod.path .. 'other/'
for _, v in pairs(NFS.getDirectoryItems(path)) do
    assert(SMODS.load_file('other/' .. v))()
end
--#endregion
