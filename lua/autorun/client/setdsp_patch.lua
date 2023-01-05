local meta = FindMetaTable( "CSoundPatch" )
meta._SetDSP = meta._SetDSP or meta.SetDSP

local disabledSoundPatches = {}

function meta:SetDSP( dsp )
    if disabledSoundPatches[self] then return end
    disabledSoundPatches[self] = true
    self:_SetDSP( dsp )
end
