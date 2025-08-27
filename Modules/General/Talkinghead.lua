local TalkingHead = mUI:NewModule("mUI.Modules.General.TalkingHead", "AceHook-3.0")

function TalkingHead:OnInitialize()
    TalkingHead.talkinghead = CreateFrame("Frame")

    function TalkingHead:Update(event)
        if not event == "TALKINGHEAD_REQUESTED" then return end
        TalkingHeadFrame:CloseImmediately()
    end
end

function TalkingHead:OnEnable()
    if not mUI:IsClassic() then
        TalkingHead.talkinghead:RegisterEvent("TALKINGHEAD_REQUESTED")
        TalkingHead:SecureHookScript(TalkingHead.talkinghead, "OnEvent", function(_, event)
            TalkingHead:Update(event)
        end)
    end
end

function TalkingHead:OnDisable()
    if not mUI:IsClassic() then
        TalkingHead.talkinghead:UnregisterEvent("TALKINGHEAD_REQUESTED")
        TalkingHead:UnhookAll()
    end
end
