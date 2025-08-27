local Theme = mUI:GetModule("mUI.Modules.General.Theme")

function Theme:StyleDragonriding()
    if UnitPowerBarID("player") == 631 then
        for _, child in ipairs({ UIWidgetPowerBarContainerFrame:GetChildren() }) do
            mUI:Skin(child)
            for _, vigor in ipairs({ child:GetChildren() }) do
                if select(5, vigor:GetRegions()) then
                    Theme.dragonridingDefault = select(5, vigor:GetRegions()):GetVertexColor()
                end
                mUI:Skin(vigor)
            end
        end
    end
end
