local meta = FindMetaTable( "CSoundPatch" )
meta._SetDSP = meta._SetDSP or meta.SetDSP

function meta:SetDSP( dsp )
    if dsp > 0 and dsp < 17 then
        dsp = 0
    end

    self:_SetDSP( dsp )
end
