local meta = FindMetaTable( "CSoundPatch" )
meta._SetDSP = meta._SetDSP or meta.SetDSP

local noop = function() end
function meta:SetDSP( dsp )
    self.SetDSP = noop
    self:_SetDSP( dsp )
end
