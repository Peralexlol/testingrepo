local Theme = mUI:GetModule("mUI.Modules.General.Theme")

local _, playerClass = UnitClass("player")

if WOW_PROJECT_ID == WOW_PROJECT_MISTS_CLASSIC then
    Theme.bagsbackup = MainMenuBarBackpackButtonNormalTexture.SetVertexColor
end

function Theme:Achievements()
    -- Achievements Frame
    if AchievementFrame then
        if mUI:IsClassic() then
            -- Blacklist Frames
            Theme.blacklist[AchievementFrameHeaderShield] = true

            -- Skin frames
            mUI:Skin(AchievementFrame)
            mUI:Skin(AchievementFrameHeader)
            mUI:Skin(AchievementFrameSummary)
            mUI:Skin(AchievementFrameTab1)
            mUI:Skin(AchievementFrameTab2)
            mUI:Skin(AchievementFrameTab3)
            AchievementFrameHeaderPointBorder:SetAlpha(0)
        else
            -- Blacklist Frames
            Theme.blacklist[select(8, AchievementFrame.Header:GetRegions())] = true

            -- Skin frames
            mUI:Skin(AchievementFrame)
            mUI:Skin(AchievementFrame.Header)
            mUI:Skin(AchievementFrame.Searchbox)
            mUI:Skin(AchievementFrameSummary)
            mUI:Skin(AchievementFrameTab1)
            mUI:Skin(AchievementFrameTab2)
            mUI:Skin(AchievementFrameTab3)
            AchievementFrame.Header.PointBorder:SetAlpha(0)
        end
    end
end

function Theme:CraftingOrders()
    if mUI:IsClassic() then return end
    -- Crafting Orders
    if ProfessionsCustomerOrdersFrame then
        mUI:Skin(ProfessionsCustomerOrdersFrame)
        mUI:Skin(ProfessionsCustomerOrdersFrame.NineSlice)
        mUI:Skin(ProfessionsCustomerOrdersFrame.BrowseOrders.CategoryList.NineSlice)
        mUI:Skin(ProfessionsCustomerOrdersFrame.BrowseOrders.RecipeList.NineSlice)
        mUI:Skin(ProfessionsCustomerOrdersFrame.MyOrdersPage.OrderList.NineSlice)
        mUI:Skin(ProfessionsCustomerOrdersFrame.MoneyFrameBorder)
        mUI:Skin(ProfessionsCustomerOrdersFrame.MoneyFrameInset.NineSlice)
        mUI:Skin(ProfessionsCustomerOrdersFrameBrowseTab)
        mUI:Skin(ProfessionsCustomerOrdersFrameOrdersTab)
    end
end

function Theme:AuctionHouse()
    -- Auction House
    if AuctionHouseFrame then
        if mUI:IsClassic() then
            mUI:Skin(AuctionHouseFrame)
            mUI:Skin(AuctionHouseFrameBuyTab)
            mUI:Skin(AuctionHouseFrameSellTab)
            mUI:Skin(AuctionHouseFrameAuctionsTab)
            mUI:Skin(AuctionHouseFrame.CategoriesList)
            mUI:Skin(AuctionHouseFrame.CategoriesList.NineSlice)
            mUI:Skin(AuctionHouseFrame.BrowseResultsFrame.ItemList)
            mUI:Skin(AuctionHouseFrame.BrowseResultsFrame.ItemList.NineSlice)
            mUI:Skin(AuctionHouseFrame.CategoriesList.ScrollBar)
            mUI:Skin(AuctionHouseFrame.CategoriesList.ScrollBar.Background)
            mUI:Skin(AuctionHouseFrame.BrowseResultsFrame.ItemList.ScrollBar)
            mUI:Skin(AuctionHouseFrame.BrowseResultsFrame.ItemList.ScrollBar.Background)
            mUI:Skin(AuctionHouseFrame.MoneyFrameInset)
            mUI:Skin(AuctionHouseFrame.MoneyFrameBorder)
        else
            if AuctionHouseFrame then
                mUI:Skin(AuctionHouseFrame)
                mUI:Skin(AuctionHouseFrame.NineSlice)
                mUI:Skin(AuctionHouseFrame.NineSlice)
                mUI:Skin(AuctionHouseFrame.WoWTokenResults.GameTimeTutorial.NineSlice)
                mUI:Skin(AuctionHouseFrame.BuyDialog)
                mUI:Skin(AuctionHouseFrame.BuyDialog.Border)
                mUI:Skin(AuctionHouseFrame.MoneyFrameBorder)
                mUI:Skin(AuctionHouseFrame.MoneyFrameInset.NineSlice)
                mUI:Skin(AuctionHouseFrame.CategoriesList)
                mUI:Skin(AuctionHouseFrameBuyTab)
                mUI:Skin(AuctionHouseFrameSellTab)
                mUI:Skin(AuctionHouseFrameAuctionsTab)
                mUI:Skin(AuctionHouseFrameAuctionsFrameAuctionsTab)
                mUI:Skin(AuctionHouseFrameAuctionsFrameBidsTab)

                if C_AddOns.IsAddOnLoaded("Auctionator") then
                    C_Timer.After(0, function()
                        mUI:Skin(_G["LibAHFrame-1.0-AuctionatorTabs_Shopping"])
                        mUI:Skin(_G["LibAHFrame-1.0-AuctionatorTabs_Selling"])
                        mUI:Skin(_G["LibAHFrame-1.0-AuctionatorTabs_Cancelling"])
                        mUI:Skin(_G["LibAHFrame-1.0-AuctionatorTabs_Auctionator"])
                    end)
                end
            end
        end
    end
end

function Theme:AlliedRaces()
    -- Allied Races
    if mUI:IsClassic() then return end
    if AlliedRacesFrame then
        mUI:Skin(AlliedRacesFrame)
        mUI:Skin(AlliedRacesFrame.NineSlice)
        mUI:Skin(AlliedRacesFrameInset.NineSlice)
    end
end

function Theme:Archaeology()
    -- Archaeology Frame
    if ArchaeologyFrame then
        if mUI:IsClassic() then
            -- Blacklist Frames
            Theme.blacklist[ArchaeologyFrameBgLeft] = true
            Theme.blacklist[ArchaeologyFrameBgRight] = true

            mUI:Skin(ArchaeologyFrame)
            mUI:Skin(ArchaeologyFrame.NineSlice)
        else
            mUI:Skin(ArchaeologyFrame.NineSlice)
        end
    end
end

function Theme:Calendar()
    -- Calendar
    if CalendarFrame then
        -- Blacklist frames
        Theme.blacklist[select(3, CalendarClassButton1:GetRegions())] = true
        Theme.blacklist[select(3, CalendarClassButton2:GetRegions())] = true
        Theme.blacklist[select(3, CalendarClassButton3:GetRegions())] = true
        Theme.blacklist[select(3, CalendarClassButton4:GetRegions())] = true
        Theme.blacklist[select(3, CalendarClassButton5:GetRegions())] = true
        Theme.blacklist[select(3, CalendarClassButton6:GetRegions())] = true
        Theme.blacklist[select(3, CalendarClassButton7:GetRegions())] = true
        Theme.blacklist[select(3, CalendarClassButton8:GetRegions())] = true
        Theme.blacklist[select(3, CalendarClassButton9:GetRegions())] = true
        Theme.blacklist[select(3, CalendarClassButton10:GetRegions())] = true
        Theme.blacklist[select(3, CalendarClassButton11:GetRegions())] = true
        if not mUI:IsClassic() then
            Theme.blacklist[select(3, CalendarClassButton12:GetRegions())] = true
            Theme.blacklist[select(3, CalendarClassButton13:GetRegions())] = true
        end

        -- Skin frames
        mUI:Skin(CalendarFrame)
        mUI:Skin(CalendarCreateEventFrame)
        mUI:Skin(CalendarCreateEventFrame.Header)
        mUI:Skin(CalendarCreateEventFrame.Border)
        mUI:Skin(CalendarViewHolidayFrame)
        mUI:Skin(CalendarViewHolidayFrame.Header)
        mUI:Skin(CalendarViewHolidayFrame.Border)
        mUI:Skin(CalendarClassButton1)
        mUI:Skin(CalendarClassButton2)
        mUI:Skin(CalendarClassButton3)
        mUI:Skin(CalendarClassButton4)
        mUI:Skin(CalendarClassButton5)
        mUI:Skin(CalendarClassButton6)
        mUI:Skin(CalendarClassButton7)
        mUI:Skin(CalendarClassButton8)
        mUI:Skin(CalendarClassButton9)
        mUI:Skin(CalendarClassButton10)
        mUI:Skin(CalendarClassButton11)
        mUI:Skin(CalendarClassButton12)
        mUI:Skin(CalendarClassButton13)
        mUI:Skin(CalendarClassTotalsButton)
        mUI:Skin({
            CalendarCreateEventDivider,
            CalendarCreateEventFrameButtonBackground,
            CalendarCreateEventMassInviteButtonBorder,
            CalendarCreateEventCreateButtonBorder
        }, true)
    end
end

function Theme:Challenges()
    -- Challenges Frame
    if ChallengesFrame then
        mUI:Skin(ChallengesFrameInset.NineSlice)
    end
end

function Theme:Socketing()
    -- Socketing Frame
    if ItemSocketingFrame then
        mUI:Skin(ItemSocketingFrame)
        mUI:Skin(ItemSocketingFrame.NineSlice)

        if mUI:IsClassic() then
            mUI:Skin(ItemSocketingScrollFrame.ScrollBar)
            mUI:Skin(ItemSocketingScrollFrame.ScrollBar.Background)
        end
    end
end

function Theme:Trainer()
    -- Profession/Class Trainer
    if ClassTrainerFrame then
        if mUI:IsClassic() then
            -- Blacklist Frames
            Theme.blacklist[ClassTrainerFramePortrait] = true

            mUI:Skin(ClassTrainerFrame)
            mUI:Skin(ClassTrainerFrame.NineSlice)
            mUI:Skin({
                select(1, ClassTrainerListScrollFrame:GetRegions()):Hide(),
                select(2, ClassTrainerListScrollFrame:GetRegions()):Hide()
            }, true)
        else
            mUI:Skin(ClassTrainerFrame)
            mUI:Skin(ClassTrainerFrame.NineSlice)
            mUI:Skin(ClassTrainerFrameBottomInset.NineSlice)
            mUI:Skin(ClassTrainerFrameInset.NineSlice)
        end
    end
end

function Theme:Collections()
    if CollectionsJournal then
        -- Blacklist frames
        if mUI:IsClassic() then
            Theme.blacklist[select(3, CollectionsJournal:GetRegions())] = true
        else
            Theme.blacklist[select(2, MountJournal.BottomLeftInset.SlotButton:GetRegions())] = true
        end

        -- Skin frames
        -- Collections Frame
        mUI:Skin(CollectionsJournal)
        mUI:Skin(CollectionsJournal.NineSlice)

        -- Mount Journal
        mUI:Skin(MountJournal)
        mUI:Skin(MountJournal.MountDisplay)
        mUI:Skin(MountJournal.LeftInset.NineSlice)
        mUI:Skin(MountJournal.RightInset.NineSlice)
        if mUI:IsClassic() then
            mUI:Skin(MountJournal.ScrollBar.Background)
            MountJournalMountButton_RightSeparator:Hide()
        else
            mUI:Skin(MountJournal.BottomLeftInset)
            mUI:Skin(MountJournal.BottomLeftInset.NineSlice)
            mUI:Skin(MountJournal.RightInset.NineSlice)
            mUI:Skin(MountJournal.BottomLeftInset.SlotButton)
            mUI:Skin({
                MountJournal.ToggleDynamicFlightFlyoutButton.Border,
                MountJournalSummonRandomFavoriteButtonBorder
            }, true)
        end

        -- ToyBox
        mUI:Skin(ToyBox)
        mUI:Skin(ToyBox.iconsFrame)
        mUI:Skin(ToyBox.iconsFrame.NineSlice)

        -- Heirlooms Journal
        mUI:Skin(HeirloomsJournal)
        mUI:Skin(HeirloomsJournal.iconsFrame)
        mUI:Skin(HeirloomsJournal.iconsFrame.NineSlice)

        -- Pet Journal
        mUI:Skin(PetJournalLeftInset)
        mUI:Skin(PetJournalLeftInset.NineSlice)
        mUI:Skin(PetJournalPetCardInset)
        mUI:Skin(PetJournalPetCardInset.NineSlice)
        mUI:Skin(PetJournalPetCard)
        mUI:Skin(PetJournalLoadoutPet1)
        mUI:Skin(PetJournalLoadoutPet2)
        mUI:Skin(PetJournalLoadoutPet3)
        mUI:Skin(PetJournalLoadoutBorder)
        mUI:Skin(PetJournalRightInset.NineSlice)
        mUI:Skin({
            PetJournalSummonRandomFavoritePetButtonBorder,
            PetJournalHealPetButtonBorder
        }, true)
        if mUI:IsClassic() then
            PetJournalSummonButton_RightSeparator:Hide()
        end

        -- Wardrobe
        mUI:Skin(WardrobeCollectionFrame)
        mUI:Skin(WardrobeCollectionFrame.ItemsCollectionFrame)
        mUI:Skin(WardrobeCollectionFrame.ItemsCollectionFrame.NineSlice)
        mUI:Skin(WardrobeCollectionFrame.SetsCollectionFrame)
        mUI:Skin(WardrobeCollectionFrame.SetsCollectionFrame.LeftInset)
        mUI:Skin(WardrobeCollectionFrame.SetsCollectionFrame.LeftInset.NineSlice)
        mUI:Skin(WardrobeCollectionFrame.SetsCollectionFrame.RightInset)
        mUI:Skin(WardrobeCollectionFrame.SetsCollectionFrame.RightInset.NineSlice)
        mUI:Skin(WardrobeCollectionFrame.SetsTransmogFrame)
        mUI:Skin(WardrobeFrame)
        mUI:Skin(WardrobeFrame.NineSlice)
        mUI:Skin(WardrobeTransmogFrame)
        mUI:Skin(WardrobeTransmogFrame.Inset)
        mUI:Skin(WardrobeTransmogFrame.Inset.NineSlice)
        WardrobeTransmogFrame.Inset.BG:SetVertexColor(1, 1, 1) -- Reset Background Color
        mUI:Skin({
            WardrobeCollectionFrameScrollFrameScrollBarBottom,
            WardrobeCollectionFrameScrollFrameScrollBarMiddle,
            WardrobeCollectionFrameScrollFrameScrollBarTop,
            WardrobeCollectionFrameScrollFrameScrollBarThumbTexture
        }, true)

        if not mUI:IsClassic() then
            -- Campsites
            mUI:Skin(WarbandSceneJournal)
            mUI:Skin(WarbandSceneJournal.IconsFrame.NineSlice)
        end

        -- Specific Frames
        mUI:Skin({
            CollectionsJournalBg,
            MountJournalListScrollFrameScrollBarThumbTexture,
            MountJournalListScrollFrameScrollBarTop,
            MountJournalListScrollFrameScrollBarMiddle,
            MountJournalListScrollFrameScrollBarBottom,
            PetJournalListScrollFrameScrollBarThumbTexture,
            PetJournalListScrollFrameScrollBarTop,
            PetJournalListScrollFrameScrollBarMiddle,
            PetJournalListScrollFrameScrollBarBottom,
        }, true)

        if not mUI:IsClassic() then
            mUI:Skin({ WarbandSceneJournal.IconsFrame.BackgroundTile }, true)
        end

        -- Tabs
        mUI:Skin(CollectionsJournalTab1)
        mUI:Skin(CollectionsJournalTab2)
        mUI:Skin(CollectionsJournalTab3)
        mUI:Skin(CollectionsJournalTab4)
        mUI:Skin(CollectionsJournalTab5)
        mUI:Skin(CollectionsJournalTab6)
        mUI:Skin(WardrobeCollectionFrameTab1)
        mUI:Skin(WardrobeCollectionFrameTab2)
    end
end

function Theme:EncounterJournal()
    -- Encounter Journal
    if EncounterJournal then
        mUI:Skin(EncounterJournal)
        mUI:Skin(EncounterJournal.NineSlice)
        mUI:Skin(EncounterJournalInset)
        mUI:Skin(EncounterJournalInset.NineSlice)
        mUI:Skin(EncounterJournalNavBar)
        mUI:Skin(EncounterJournalNavBar.overlay)
        mUI:Skin(EncounterJournalMonthlyActivitiesTab)
        mUI:Skin(EncounterJournalSuggestTab)
        mUI:Skin(EncounterJournalDungeonTab)
        mUI:Skin(EncounterJournalRaidTab)
        mUI:Skin(EncounterJournalLootJournalTab)
    end
end

function Theme:FlightMap()
    -- Flightmap
    if mUI:IsClassic() then
        if TaxiFrame then
            mUI:Skin(TaxiFrame)
        end
    else
        if FlightMapFrame then
            mUI:Skin(FlightMapFrame)
            mUI:Skin(FlightMapFrame.BorderFrame)
            mUI:Skin(FlightMapFrame.BorderFrame.NineSlice)
        end
    end
end

function Theme:Garrison()
    -- Garrison
    if GarrisonCapacitiveDisplayFrame then
        mUI:Skin(GarrisonCapacitiveDisplayFrame)
        mUI:Skin(GarrisonCapacitiveDisplayFrame.NineSlice)
        mUI:Skin(GarrisonCapacitiveDisplayFrameInset)
        mUI:Skin(GarrisonCapacitiveDisplayFrameInset.NineSlice)
    end
end

function Theme:Inspect()
    -- Inspect Frame
    if InspectFrame then
        mUI:Skin(InspectFrame)
        mUI:Skin(InspectFrame.NineSlice)
        mUI:Skin(InspectFrameInset)
        mUI:Skin(InspectFrameInset.NineSlice)
        mUI:Skin(InspectPaperDollItemsFrame)
        mUI:Skin(InspectPaperDollItemsFrame.InspectTalents)
        mUI:Skin(InspectPVPFrame)
        mUI:Skin({
            InspectModelFrameBorderLeft,
            InspectModelFrameBorderRight,
            InspectModelFrameBorderTop,
            InspectModelFrameBorderTopLeft,
            InspectModelFrameBorderTopRight,
            InspectModelFrameBorderBottom,
            InspectModelFrameBorderBottomLeft,
            InspectModelFrameBorderBottomRight,
            InspectModelFrameBorderBottom2,
            InspectFeetSlotFrame,
            InspectHandsSlotFrame,
            InspectWaistSlotFrame,
            InspectLegsSlotFrame,
            InspectFinger0SlotFrame,
            InspectFinger1SlotFrame,
            InspectTrinket0SlotFrame,
            InspectTrinket1SlotFrame,
            InspectWristSlotFrame,
            InspectTabardSlotFrame,
            InspectShirtSlotFrame,
            InspectChestSlotFrame,
            InspectBackSlotFrame,
            InspectShoulderSlotFrame,
            InspectNeckSlotFrame,
            InspectHeadSlotFrame,
            InspectSecondaryHandSlotFrame,
        }, true)
        mUI:Skin(InspectFrameTab1)
        mUI:Skin(InspectFrameTab2)
        mUI:Skin(InspectFrameTab3)
        mUI:Skin(InspectFrameTab4)
        InspectMainHandSlotFrame:Hide()
        InspectSecondaryHandSlotFrame:Hide()
        _G.select(InspectMainHandSlot:GetNumRegions(), InspectMainHandSlot:GetRegions()):Hide()
        _G.select(InspectSecondaryHandSlot:GetNumRegions(), InspectSecondaryHandSlot:GetRegions()):Hide()
    end
end

function Theme:GuildBank()
    -- Guild Bank
    if GuildBankFrame then
        mUI:Skin(GuildBankFrameTab1)
        mUI:Skin(GuildBankFrameTab2)
        mUI:Skin(GuildBankFrameTab3)
        mUI:Skin(GuildBankFrameTab4)
        mUI:Skin(GuildBankFrame)

        if mUI:IsClassic() then
            mUI:Skin({
                GuildBankFrameLeft,
                GuildBankFrameMiddle,
                GuildBankFrameRight,
                select(1, GuildBankInfoScrollFrame:GetRegions()),
                select(2, GuildBankInfoScrollFrame:GetRegions())
            }, true)

            mUI:Skin(GuildBankTab1)
            mUI:Skin(GuildBankTab2)
            mUI:Skin(GuildBankTab3)
            mUI:Skin(GuildBankTab4)
            mUI:Skin(GuildBankTab5)
            mUI:Skin(GuildBankTab6)
            mUI:Skin(GuildBankTab7)
            mUI:Skin(GuildBankTab8)
        else
            mUI:Skin({
                GuildBankFrameLeft,
                GuildBankFrameMiddle,
                GuildBankFrameRight
            }, true)
        end
        mUI:Skin(GuildBankFrame.MoneyFrameBG)
        mUI:Skin(GuildBankFrame.Column1)
        mUI:Skin(GuildBankFrame.Column2)
        mUI:Skin(GuildBankFrame.Column3)
        mUI:Skin(GuildBankFrame.Column4)
        mUI:Skin(GuildBankFrame.Column5)
        mUI:Skin(GuildBankFrame.Column6)
        mUI:Skin(GuildBankFrame.Column7)
    end
end

function Theme:Professions()
    -- Professions
    if mUI:IsClassic() then
        if TradeSkillFrame then
            -- Blacklist Frames
            Theme.blacklist[TradeSkillFramePortrait] = true
            mUI:Skin(TradeSkillFrame)
            mUI:Skin({
                select(1, TradeSkillListScrollFrame:GetRegions()),
                select(2, TradeSkillListScrollFrame:GetRegions()),
            }, true)
        end
    else
        if ProfessionsFrame then
            mUI:Skin(InspectRecipeFrame)
            mUI:Skin(InspectRecipeFrame.NineSlice)
            mUI:Skin(ProfessionsFrame)
            mUI:Skin(ProfessionsFrame.NineSlice)
            mUI:Skin(ProfessionsFrame.SpecPage.PanelFooter)
            mUI:Skin(ProfessionsFrame.CraftingPage.RecipeList.BackgroundNineSlice)
            mUI:Skin(ProfessionsFrame.CraftingPage.SchematicForm.NineSlice)
            mUI:Skin(ProfessionsFrame.CraftingPage.SchematicForm.Details)
            mUI:Skin(ProfessionsFrame.OrdersPage.BrowseFrame.OrderList.NineSlice)
            mUI:Skin(ProfessionsFrame.OrdersPage.BrowseFrame.RecipeList.BackgroundNineSlice)
            mUI:Skin(ProfessionsFrame.TabSystem.tabs[1])
            mUI:Skin(ProfessionsFrame.TabSystem.tabs[2])
            mUI:Skin(ProfessionsFrame.TabSystem.tabs[3])
            mUI:Skin(ProfessionsFrame.OrdersPage.BrowseFrame.PublicOrdersButton)
            mUI:Skin(ProfessionsFrame.OrdersPage.BrowseFrame.GuildOrdersButton)
            mUI:Skin(ProfessionsFrame.OrdersPage.BrowseFrame.NpcOrdersButton)
            mUI:Skin(ProfessionsFrame.OrdersPage.BrowseFrame.PersonalOrdersButton)
            mUI:Skin(ProfessionsFrame.CraftingPage.CraftingOutputLog)
            mUI:Skin(ProfessionsFrame.CraftingPage.CraftingOutputLog.TitleContainer)
            mUI:Skin(ProfessionsFrame.CraftingPage.CraftingOutputLog.NineSlice)
            mUI:Skin({
                ProfessionsFrame.CraftingPage.RankBar.Border
            }, true)
        end
    end
end

function Theme:Islands()
    -- Islands
    if IslandsQueueFrame then
        mUI:Skin(IslandsQueueFrame)
        mUI:Skin(IslandsQueueFrame.NineSlice)
        mUI:Skin(IslandsQueueFrame.ArtOverlayFrame)
    end
end

function Theme:PVP()
    -- PVP UI
    if HonorFrame then
        if mUI:IsClassic() then
            mUI:Skin(HonorFrame)
            mUI:Skin(WorldStateScoreFrame)
            mUI:Skin(WorldStateScoreScrollFrame)
            mUI:Skin(WorldStateScoreFrameTab1)
            mUI:Skin(WorldStateScoreFrameTab2)
            mUI:Skin(WorldStateScoreFrameTab3)
        else
            Theme.blacklist[select(4, HonorFrame.ConquestBar:GetRegions())] = true
            Theme.blacklist[select(4, ConquestFrame.ConquestBar:GetRegions())] = true

            mUI:Skin(PlunderstormFrame.Inset)
            mUI:Skin(PlunderstormFrame.Inset.NineSlice)
            mUI:Skin(HonorFrame)
            mUI:Skin(HonorFrame.ConquestFrame)
            mUI:Skin(HonorFrame.Inset)
            mUI:Skin(HonorFrame.Inset.NineSlice)
            mUI:Skin(HonorFrame.BonusFrame)
            mUI:Skin(HonorFrame.ConquestBar)
            mUI:Skin(ConquestFrame)
            mUI:Skin(ConquestFrame.ConquestBar)
            mUI:Skin(ConquestFrame.Inset)
            mUI:Skin(ConquestFrame.Inset.NineSlice)
            mUI:Skin(PVPQueueFrame)
            mUI:Skin(PVPQueueFrame.HonorInset)
            mUI:Skin(PVPQueueFrame.HonorInset.NineSlice)
            PVPQueueFrame.HonorInset:Hide()
        end
    end

    if mUI:IsClassic() then
        if HonorQueueFrame then
            mUI:Skin(HonorQueueFrame.Inset)
            mUI:Skin(HonorQueueFrame.Inset.NineSlice)
            mUI:Skin(HonorQueueFrame.RoleInset)
            mUI:Skin(HonorQueueFrame.RoleInset.NineSlice)
            mUI:Skin(WarGamesQueueFrame)
            mUI:Skin(WarGamesQueueFrame.RightInset)
            mUI:Skin(WarGamesQueueFrame.RightInset.NineSlice)
            mUI:Skin(WarGamesQueueFrame.HorizontalBar)
            mUI:Skin(WarGamesQueueFrameInfoScrollFrame.ScrollBar.Background)
            mUI:Skin({
                WarGamesQueueFrameScrollFrameScrollBarTop,
                WarGamesQueueFrameScrollFrameScrollBarMiddle,
                WarGamesQueueFrameScrollFrameScrollBarBottom
            }, true)
            HonorQueueFrameGroupQueueButton_LeftSeparator:Hide()
            HonorQueueFrameSoloQueueButton_RightSeparator:Hide()
            WarGameStartButton_LeftSeparator:Hide()
            WarGameStartButton_RightSeparator:Hide()
        end

        if ConquestQueueFrame then
            mUI:Skin(ConquestQueueFrame)
            mUI:Skin(ConquestQueueFrame.Inset)
            mUI:Skin(ConquestQueueFrame.Inset.NineSlice)
            ConquestJoinButton_LeftSeparator:Hide()
            ConquestJoinButton_RightSeparator:Hide()
        end
    end
end

function Theme:Macros()
    -- Macros
    if MacroFrame then
        -- Blacklist frames
        Theme.blacklist[select(9, MacroFrameTextBackground.NineSlice:GetRegions())] = true
        if mUI:IsClassic() then
            Theme.blacklist[select(18, MacroFrame:GetRegions())] = true
        end

        -- Skin frames
        mUI:Skin(MacroFrame)
        mUI:Skin(MacroFrame.NineSlice)
        mUI:Skin(MacroFrameInset)
        mUI:Skin(MacroFrameInset.NineSlice)
        mUI:Skin(MacroFrameTextBackground)
        mUI:Skin(MacroFrameTextBackground.NineSlice)
        if mUI:IsClassic() then
            mUI:Skin(MacroFrame.MacroSelector.ScrollBar.Background)
        end
        mUI:Skin(MacroPopupFrame)
        mUI:Skin(MacroPopupFrame.BorderBox)
        mUI:Skin(MacroFrameTab1)
        mUI:Skin(MacroFrameTab2)
        mUI:Skin({
            MacroButtonScrollFrameTop,
            MacroButtonScrollFrameMiddle,
            MacroButtonScrollFrameBottom,
            MacroButtonScrollFrameScrollBarThumbTexture
        }, true)
    end
end

function Theme:Scrapping()
    -- Scrapping Machine
    if ScrappingMachineFrame then
        mUI:Skin(ScrappingMachineFrame)
        mUI:Skin(ScrappingMachineFrame.NineSlice)
    end
end

function Theme:ProfessionsBook()
    if mUI:IsClassic() then return end
    -- Professions Book
    if ProfessionsBookFrame then
        mUI:Skin(ProfessionsBookFrame)
        mUI:Skin(ProfessionsBookFrame.NineSlice)
        mUI:Skin(ProfessionsBookFrameInset)
        mUI:Skin(ProfessionsBookFrameInset.NineSlice)
        mUI:Skin({
            ProfessionsBookPage1,
            ProfessionsBookPage2
        }, true)
        for i, v in pairs({
            SecondaryProfession1Missing,
            SecondaryProfession1.missingText,
            SecondaryProfession2Missing,
            SecondaryProfession2.missingText,
            SecondaryProfession3Missing,
            SecondaryProfession3.missingText,
        }) do
            v:SetVertexColor(0.8, 0.8, 0.8)
        end
    end
end

function Theme:PlayerSpells()
    if mUI:IsClassic() then return end
    -- Spellbook / Talent Frame
    if PlayerSpellsFrame then
        -- Blacklist frames
        Theme.blacklist[select(4, PlayerSpellsFrame.TalentsFrame:GetRegions())] = true

        -- Skin frames
        mUI:Skin(PlayerSpellsFrame)
        mUI:Skin(PlayerSpellsFrame.SpellBookFrame)
        mUI:Skin(PlayerSpellsFrame.NineSlice)
        mUI:Skin(PlayerSpellsFrame.SpellBookFrame.CategoryTabSystem.tabs[1])
        mUI:Skin(PlayerSpellsFrame.SpellBookFrame.CategoryTabSystem.tabs[2])
        mUI:Skin(PlayerSpellsFrame.SpellBookFrame.CategoryTabSystem.tabs[3])
        PlayerSpellsFrame.SpellBookFrame.PagedSpellsFrame.PagingControls.PageText:SetVertexColor(0.8, 0.8, 0.8)
        mUI:Skin(PlayerSpellsFrame)
        mUI:Skin(PlayerSpellsFrame.TalentsFrame)
        mUI:Skin(PlayerSpellsFrame.TalentsFrame.SearchPreviewContainer)
        mUI:Skin(PlayerSpellsFrame.TalentsFrame.SearchPreviewContainer.DefaultResultButton)
        mUI:Skin(PlayerSpellsFrame.TalentsFrame.SearchBox)
        mUI:Skin(PlayerSpellsFrame.TalentsFrame.LoadSystem)
        mUI:Skin(HeroTalentsSelectionDialog)
        mUI:Skin(HeroTalentsSelectionDialog.NineSlice)
        mUI:Skin(PlayerSpellsFrame.TabSystem.tabs[1])
        mUI:Skin(PlayerSpellsFrame.TabSystem.tabs[2])
        mUI:Skin(PlayerSpellsFrame.TabSystem.tabs[3])
        mUI:Skin({
            ClassTalentFrameTitleBg,
            ClassTalentFrameBg,
            ClassTalentFrameTalentsPvpTalentFrameTalentListBg
        }, true)

        if not Theme:IsHooked(SpellBookItemMixin, "UpdateVisuals") then
            Theme:SecureHook(SpellBookItemMixin, "UpdateVisuals", function(frame)
                if Theme.db.theme == "Disabled" then
                    frame.Name:SetTextColor(0.1803921610117, 0.10588236153126, 0.05882353335619)
                    frame.SubName:SetTextColor(0.1803921610117, 0.10588236153126, 0.05882353335619)
                    frame.Button.Border:SetVertexColor(1, 1, 1)
                    frame.Button.Border:SetDesaturated(false)
                else
                    frame.Name:SetTextColor(0.8, 0.8, 0.8)
                    frame.SubName:SetTextColor(0.8, 0.8, 0.8)
                    frame.Button.Border:SetVertexColor(0.5, 0.5, 0.5)
                    frame.Button.Border:SetDesaturated(true)
                end
            end)
        end
    end
end

function Theme:Talents()
    if PlayerTalentFrame then
        -- Blacklist Frames
        Theme.blacklist[select(2, PlayerSpecTab1:GetRegions())] = true
        Theme.blacklist[select(2, PlayerSpecTab2:GetRegions())] = true

        mUI:Skin(PlayerTalentFrame)
        mUI:Skin(PlayerTalentFrameInset)
        mUI:Skin(PlayerTalentFrameInset.NineSlice)
        mUI:Skin(PlayerTalentFrameTalents)
        mUI:Skin(PlayerTalentFrameTab1)
        mUI:Skin(PlayerTalentFrameTab2)
        mUI:Skin(PlayerTalentFrameTab3)
        mUI:Skin(PlayerTalentFrameTab4)
        mUI:Skin(PlayerSpecTab1)
        mUI:Skin(PlayerSpecTab2)

        if GlyphFrame then
            mUI:Skin(GlyphFrameSideInset)
            mUI:Skin(GlyphFrameSideInset.NineSlice)
            mUI:Skin({
                GlyphFrameScrollFrameScrollBarTop,
                GlyphFrameScrollFrameScrollBarMiddle,
                GlyphFrameScrollFrameScrollBarBottom,
            }, true)
        end

        PlayerTalentFrameSpecializationLearnButton_LeftSeparator:Hide()
        PlayerTalentFrameSpecializationLearnButton_RightSeparator:Hide()
        PlayerTalentFrameTalentsLearnButton_LeftSeparator:Hide()
        PlayerTalentFrameTalentsLearnButton_RightSeparator:Hide()
        PlayerTalentFramePetSpecializationLearnButton_LeftSeparator:Hide()
        PlayerTalentFramePetSpecializationLearnButton_RightSeparator:Hide()
    end
end

function Theme:Spellbook()
    -- Spellbook
    if SpellBookFrame then
        SpellBookFrame:Show()
        SpellBookFrame:Hide()

        mUI:Skin(SpellBookFrame)
        mUI:Skin(SpellBookFrame.NineSlice)
        mUI:Skin(SpellBookFrameInset)
        mUI:Skin(SpellBookFrameInset.NineSlice)
        mUI:Skin(SpellBookProfessionFrame)
        mUI:Skin(SpellBookProfessionFrame.NineSlice)
        mUI:Skin({
            ProfessionsBookPage1,
            ProfessionsBookPage2,
            select(1, SpellBookSkillLineTab1:GetRegions()),
            select(1, SpellBookSkillLineTab2:GetRegions()),
            select(1, SpellBookSkillLineTab3:GetRegions()),
            select(1, SpellBookSkillLineTab4:GetRegions()),
            select(1, SpellBookSkillLineTab5:GetRegions())
        }, true)
        mUI:Skin(SpellBookFrameTabButton1)
        mUI:Skin(SpellBookFrameTabButton2)
        mUI:Skin(SpellBookFrameTabButton3)
        mUI:Skin(SpellBookFrameTabButton4)
        mUI:Skin(SpellBookFrameTabButton5)

        -- Reset Icon Colors
        select(2, SpellBookSkillLineTab1:GetRegions()):SetVertexColor(1, 1, 1)
        select(2, SpellBookSkillLineTab2:GetRegions()):SetVertexColor(1, 1, 1)
        select(2, SpellBookSkillLineTab3:GetRegions()):SetVertexColor(1, 1, 1)
        select(2, SpellBookSkillLineTab4:GetRegions()):SetVertexColor(1, 1, 1)
        select(2, SpellBookSkillLineTab5:GetRegions()):SetVertexColor(1, 1, 1)
    end
end

function Theme:TimeManager()
    -- Time Manager
    if TimeManagerFrame then
        if mUI:IsClassic() then
            -- Blacklist Frames
            Theme.blacklist[select(18, TimeManagerFrame:GetRegions())] = true
        end

        mUI:Skin(TimeManagerFrame)
        mUI:Skin(TimeManagerFrame.NineSlice)
        mUI:Skin(TimeManagerFrameInset)
        mUI:Skin(TimeManagerFrameInset.NineSlice)
        mUI:Skin(TimeManagerClockButton)
        if mUI:IsClassic() then
            mUI:Skin({ StopwatchFrameBackgroundLeft, select(2, StopwatchFrame:GetRegions()) }, true)
        else
            mUI:Skin({ StopwatchFrameBackgroundLeft }, true)
        end
    end
end

function Theme:Actionbars()
    -- Actionbars
    if mUI:IsClassic() then
        mUI:Skin(MainMenuBarArtFrame)
        mUI:Skin(ActionBarUpButton)
        mUI:Skin(ActionBarDownButton)
        mUI:Skin(OverrideActionBarPitchFrame)
        mUI:Skin(OverrideActionBarExpBar)
        mUI:Skin(StanceBarFrame)
        mUI:Skin(PetActionBarFrame)
        mUI:Skin({
            OverrideActionBarHealthBarOverlay,
            OverrideActionBarPowerBarOverlay,
            MainMenuXPBarTexture0,
            MainMenuXPBarTexture1,
            MainMenuXPBarTexture2,
            MainMenuXPBarTexture3,
            ExhaustionTickNormal,
            ExhaustionTickHighlight
        }, true)
    else
        mUI:Skin(MainMenuBar)
        mUI:Skin(MainMenuBar.EndCaps)
        mUI:Skin(MainMenuBar.ActionBarPageNumber.UpButton)
        mUI:Skin(MainMenuBar.ActionBarPageNumber.DownButton)
        MainMenuBar.ActionBarPageNumber.Text:SetVertexColor(unpack(mUI:Color(0.15)))
        mUI:Skin(StatusTrackingBarManager)
        mUI:Skin(StatusTrackingBarManager.BottomBarFrameTexture)
        mUI:Skin(StatusTrackingBarManager.MainStatusTrackingBarContainer)
        mUI:Skin(StatusTrackingBarManager.SecondaryStatusTrackingBarContainer)

        if not Theme:IsHooked(SpellFlyout, "Toggle") then
            Theme:SecureHook(SpellFlyout, "Toggle", function(_, _, id)
                local _, _, numSlots = GetFlyoutInfo(id)

                for i = 1, numSlots do
                    local button = _G["SpellFlyoutPopupButton" .. i .. "NormalTexture"]
                    if button then
                        mUI:Skin({ button }, true)
                    end
                end

                mUI:Skin(SpellFlyout.Background)
            end)
        end
    end
    mUI:Skin(OverrideActionBar)
    mUI:Skin({ OverrideActionBarLeaveFrameDivider3 }, true)

    -- Actionbars
    for j = 1, #Theme.Bars do
        local Bar = Theme.Bars[j]
        local Num
        if Bar then
            if mUI:IsClassic() then
                Num = 12
            else
                Num = Bar.numButtonsShowable
            end
            Theme:StyleAction(Bar, Num)
        end
    end

    local DefaultActionBarShowable = _G["MainMenuBar"].numButtonsShowable

    for i = 1, 12 do
        local Button = _G["ActionButton" .. i]

        if C_AddOns.IsAddOnLoaded("Masque") and C_AddOns.IsAddOnLoaded("MasqueBlizzBars") then return end
        Theme:StyleButton(Button, "Actionbar")
    end

    for i = 1, 10 do
        local StanceButton = _G["StanceButton" .. i]
        local PetButton = _G["PetActionButton" .. i]

        Theme:StyleButton(StanceButton, "StanceOrPet")
        Theme:StyleButton(PetButton, "StanceOrPet")
    end

    if C_AddOns.IsAddOnLoaded("Dominos") then
        if C_AddOns.IsAddOnLoaded("Masque") then return end
        for i = 1, 140 do
            local ActionButton = _G["DominosActionButton" .. i]
            if ActionButton then
                Theme:StyleButton(ActionButton)
            end
        end

        for i = 1, 10 do
            local PetButton = _G["DominosPetActionButton" .. i]
            local StanceButton = _G["DominosStanceButton" .. i]

            if PetButton then
                Theme:StyleButton(PetButton)
            end

            if StanceButton then
                Theme:StyleButton(StanceButton)
            end
        end
    end

    if C_AddOns.IsAddOnLoaded("Bartender4") then
        if C_AddOns.IsAddOnLoaded("Masque") then return end
        for i = 1, 180 do
            local ActionButton = _G["BT4Button" .. i]
            if ActionButton then
                Theme:StyleButton(ActionButton)
            end
        end

        for i = 1, 10 do
            local PetButton = _G["BT4PetButton" .. i]
            local StanceButton = _G["BT4StanceButton" .. i]

            if PetButton then
                Theme:StyleButton(PetButton, "StanceOrPet")
            end

            if StanceButton then
                Theme:StyleButton(StanceButton, "StanceOrPet")
            end
        end
    end
end

function Theme:AddonList()
    -- AddOn List
    mUI:Skin(AddonList.NineSlice)
    mUI:Skin(AddonList)
    mUI:Skin(AddonListInset.NineSlice)
    if mUI:IsClassic() then
        mUI:Skin(
            { AddonListBg, AddonListScrollFrameScrollBarTop, AddonListScrollFrameScrollBarMiddle,
                AddonListScrollFrameScrollBarBottom }, true)
        AddonListEnableAllButton_RightSeparator:Hide()
        AddonListDisableAllButton_RightSeparator:Hide()
        AddonListOkayButton_LeftSeparator:Hide()
        AddonListCancelButton_LeftSeparator:Hide()
    else
        mUI:Skin({ AddonListBg }, true)
    end
end

function Theme:Bags()
    -- Bags
    if mUI:IsClassic() then
        mUI:Skin(BackpackTokenFrame)
        mUI:Skin({ ContainerFrame1BackgroundBottom }, true)
        mUI:Skin(ContainerFrame1)
        mUI:Skin(ContainerFrame2)
        mUI:Skin(ContainerFrame3)
        mUI:Skin(ContainerFrame4)
        mUI:Skin(ContainerFrame5)
        mUI:Skin(ContainerFrame6)
        mUI:Skin(ContainerFrame7)
        mUI:Skin(ContainerFrame8)
        mUI:Skin(ContainerFrame9)
        mUI:Skin(ContainerFrame10)
        mUI:Skin(ContainerFrame11)
        mUI:Skin(ContainerFrame12)
        mUI:Skin(ContainerFrame13)

        MainMenuBarBackpackButtonNormalTexture.SetVertexColor = Theme.bagsbackup
        CharacterBag0SlotNormalTexture.SetVertexColor = Theme.bagsbackup
        CharacterBag1SlotNormalTexture.SetVertexColor = Theme.bagsbackup
        CharacterBag2SlotNormalTexture.SetVertexColor = Theme.bagsbackup
        CharacterBag3SlotNormalTexture.SetVertexColor = Theme.bagsbackup

        mUI:Skin({
            MainMenuBarBackpackButtonNormalTexture,
            CharacterBag0SlotNormalTexture,
            CharacterBag1SlotNormalTexture,
            CharacterBag2SlotNormalTexture,
            CharacterBag3SlotNormalTexture
        }, true)

        MainMenuBarBackpackButtonNormalTexture.SetVertexColor = function() end
        CharacterBag0SlotNormalTexture.SetVertexColor = function() end
        CharacterBag1SlotNormalTexture.SetVertexColor = function() end
        CharacterBag2SlotNormalTexture.SetVertexColor = function() end
        CharacterBag3SlotNormalTexture.SetVertexColor = function() end

        C_Timer.After(0.1, function()
            MainMenuBarBackpackButtonCount:SetFont(STANDARD_TEXT_FONT, 10, "OUTLINE")
        end)
    else
        mUI:Skin(ContainerFrameCombinedBags.NineSlice)
        mUI:Skin(ContainerFrameCombinedBags.Bg)
        mUI:Skin(ContainerFrameCombinedBags.MoneyFrame.Border)
        mUI:Skin(ContainerFrame1MoneyFrame.Border)
        mUI:Skin(BackpackTokenFrame.Border)
        mUI:Skin(ContainerFrame1.NineSlice)
        mUI:Skin(ContainerFrame1.Bg)
        mUI:Skin(ContainerFrame2.NineSlice)
        mUI:Skin(ContainerFrame2.Bg)
        mUI:Skin(ContainerFrame3.NineSlice)
        mUI:Skin(ContainerFrame3.Bg)
        mUI:Skin(ContainerFrame4.NineSlice)
        mUI:Skin(ContainerFrame4.Bg)
        mUI:Skin(ContainerFrame5.NineSlice)
        mUI:Skin(ContainerFrame5.Bg)
        mUI:Skin(ContainerFrame6.NineSlice)
        mUI:Skin(ContainerFrame6.Bg)
    end
end

function Theme:Bank()
    -- Bank
    if mUI:IsClassic() then
        -- Blacklist Frames
        Theme.blacklist[select(15, BankFrame:GetRegions())] = true
        mUI:Skin(BankFrame)
        mUI:Skin(BankFrame.NineSlice)
        mUI:Skin(BankSlotsFrame.NineSlice)
        mUI:Skin(BankFrameMoneyFrameBorder)
        mUI:Skin(BankFrameMoneyFrameInset)
        mUI:Skin(BankFrameMoneyFrameInset.NineSlice)
    else
        mUI:Skin(BankFrame)
        mUI:Skin(BankFrame.NineSlice)
        mUI:Skin(BankPanel)
        mUI:Skin(BankPanel.NineSlice)
        mUI:Skin(BankFrameMoneyFrameBorder)
        mUI:Skin(BankFrame.TabSystem.tabs[1])
        mUI:Skin(BankFrame.TabSystem.tabs[2])
    end
end

function Theme:Character()
    -- Character Frame
    mUI:Skin(CharacterFrame)
    mUI:Skin(CharacterFrame.NineSlice)
    mUI:Skin(CharacterFrameInset)
    mUI:Skin(CharacterFrameInset.NineSlice)
    mUI:Skin(CharacterFrameInsetRight)
    mUI:Skin(CharacterFrameInsetRight.NineSlice)
    mUI:Skin(TokenFramePopup)
    mUI:Skin(TokenFramePopup.Border)
    mUI:Skin(CharacterStatsPane)
    if mUI:IsClassic() then
        mUI:Skin(ReputationFrame)
        mUI:Skin(ReputationListScrollFrame)
        mUI:Skin(CharacterFrameTab4)
        mUI:Skin(GearManagerPopupFrame.IconSelector.ScrollBar.Background)
        mUI:Skin({
            PetPaperDollXPBar1,
            select(2, PetPaperDollFrameExpBar:GetRegions())
        }, true)
    else
        mUI:Skin(ReputationFrame.ReputationDetailFrame)
        mUI:Skin(ReputationFrame.ReputationDetailFrame.Border)
        mUI:Skin(CurrencyTransferLog)
        mUI:Skin(CurrencyTransferLog.TitleContainer)
        mUI:Skin(CurrencyTransferLog.NineSlice)
        mUI:Skin(CurrencyTransferLogInset.NineSlice)
    end
    mUI:Skin(GearManagerPopupFrame)
    mUI:Skin(GearManagerPopupFrame.BorderBox)
    mUI:Skin(CharacterFrameTab1)
    mUI:Skin(CharacterFrameTab2)
    mUI:Skin(CharacterFrameTab3)

    mUI:Skin({
        CharacterFeetSlotFrame,
        CharacterHandsSlotFrame,
        CharacterWaistSlotFrame,
        CharacterLegsSlotFrame,
        CharacterFinger0SlotFrame,
        CharacterFinger1SlotFrame,
        CharacterTrinket0SlotFrame,
        CharacterTrinket1SlotFrame,
        CharacterWristSlotFrame,
        CharacterTabardSlotFrame,
        CharacterShirtSlotFrame,
        CharacterChestSlotFrame,
        CharacterBackSlotFrame,
        CharacterShoulderSlotFrame,
        CharacterNeckSlotFrame,
        CharacterHeadSlotFrame,
        CharacterMainHandSlotFrame,
        CharacterSecondaryHandSlotFrame,
        _G.select(CharacterMainHandSlot:GetNumRegions(), CharacterMainHandSlot:GetRegions()),
        _G.select(CharacterSecondaryHandSlot:GetNumRegions(), CharacterSecondaryHandSlot:GetRegions()),
        PaperDollInnerBorderLeft,
        PaperDollInnerBorderRight,
        PaperDollInnerBorderTop,
        PaperDollInnerBorderTopLeft,
        PaperDollInnerBorderTopRight,
        PaperDollInnerBorderBottom,
        PaperDollInnerBorderBottomLeft,
        PaperDollInnerBorderBottomRight,
        PaperDollInnerBorderBottom2
    }, true)
end

function Theme:Chat()
    -- Chat
    mUI:Skin(ChatFrame1EditBox)
    mUI:Skin(ChatFrame2EditBox)
    mUI:Skin(ChatFrame3EditBox)
    mUI:Skin(ChatFrame4EditBox)
    mUI:Skin(ChatFrame5EditBox)
    mUI:Skin(ChatFrame6EditBox)
    mUI:Skin(ChatFrame7EditBox)
    mUI:Skin(ChannelFrame)
    mUI:Skin(ChannelFrame.NineSlice)
    mUI:Skin(ChannelFrame.LeftInset.NineSlice)
    mUI:Skin(ChannelFrame.RightInset.NineSlice)
    mUI:Skin(ChannelFrameInset.NineSlice)
    mUI:Skin(ChatConfigFrame)
    mUI:Skin(ChatConfigFrame.Header)
    mUI:Skin(ChatConfigFrame.Border)
    mUI:Skin(ChatConfigBackgroundFrame)
    mUI:Skin(ChatConfigBackgroundFrame.NineSlice)
    mUI:Skin(ChatConfigCategoryFrame)
    mUI:Skin(ChatConfigCategoryFrame.NineSlice)
end

function Theme:Communities()
    -- Community Frame
    mUI:Skin(CommunitiesFrame)
    mUI:Skin(CommunitiesFrame.GuildMemberDetailFrame)
    mUI:Skin(CommunitiesFrame.GuildMemberDetailFrame.Border)
    mUI:Skin(CommunitiesFrame.ChatEditBox)
    mUI:Skin(CommunitiesFrame.Chat.InsetFrame)
    mUI:Skin(CommunitiesFrame.Chat.InsetFrame.NineSlice)
    mUI:Skin(CommunitiesFrame.MemberList.InsetFrame)
    mUI:Skin(CommunitiesFrame.MemberList.InsetFrame.NineSlice)
    mUI:Skin(CommunitiesFrame.NineSlice)
    mUI:Skin(CommunitiesFrame.MemberList.ColumnDisplay)
    mUI:Skin(CommunitiesFrame.ChatTab)
    mUI:Skin(CommunitiesFrame.RosterTab)
    mUI:Skin(CommunitiesFrame.GuildBenefitsTab)
    mUI:Skin(CommunitiesFrame.GuildInfoTab)
    mUI:Skin(CommunitiesFrameInset)
    mUI:Skin(CommunitiesFrameInset.NineSlice)
    mUI:Skin(CommunitiesFrameCommunitiesList)
    mUI:Skin(CommunitiesFrameCommunitiesList.InsetFrame)
    mUI:Skin(CommunitiesFrameCommunitiesList.InsetFrame.NineSlice)
    mUI:Skin(CommunitiesFrameGuildDetailsFrame)
    mUI:Skin(CommunitiesFrame.GuildBenefitsFrame)
    mUI:Skin(CommunitiesFrame.GuildBenefitsFrame.FactionFrame.Bar)
    mUI:Skin(CommunitiesFrame.RecruitmentDialog.BG)
    mUI:Skin(CommunitiesGuildLogFrame)
    mUI:Skin(CommunitiesGuildLogFrame.Container.NineSlice)
    mUI:Skin(ClubFinderGuildFinderFrame.InsetFrame)
    mUI:Skin(ClubFinderGuildFinderFrame.InsetFrame.NineSlice)
    mUI:Skin(ClubFinderGuildFinderFrame.ClubFinderSearchTab)
    mUI:Skin(ClubFinderGuildFinderFrame.ClubFinderPendingTab)
    mUI:Skin(ClubFinderCommunityAndGuildFinderFrame.InsetFrame)
    mUI:Skin(ClubFinderCommunityAndGuildFinderFrame.InsetFrame.NineSlice)
    mUI:Skin(ClubFinderCommunityAndGuildFinderFrame.ClubFinderSearchTab)
    mUI:Skin(ClubFinderCommunityAndGuildFinderFrame.ClubFinderPendingTab)
    mUI:Skin({
        CommunitiesFrameCommunitiesListListScrollFrameThumbTexture,
        CommunitiesFrameCommunitiesListListScrollFrameTop,
        CommunitiesFrameCommunitiesListListScrollFrameMiddle,
        CommunitiesFrameCommunitiesListListScrollFrameBottom,
    }, true)
end

function Theme:DressUp()
    -- Dressup Frame
    mUI:Skin(DressUpFrame)
    mUI:Skin(DressUpFrame.NineSlice)
    mUI:Skin(DressUpFrame.OutfitDetailsPanel)
    mUI:Skin(DressUpFrameInset)
    mUI:Skin(DressUpFrameInset.NineSlice)
end

function Theme:Friendlist()
    -- Friendlist
    mUI:Skin(AddFriendEntryFrame)
    mUI:Skin(AddFriendFrame.Border)
    mUI:Skin(FriendsFrame)
    mUI:Skin(FriendsFrame.NineSlice)
    mUI:Skin(FriendsFrameInset)
    mUI:Skin(FriendsFrameInset.NineSlice)
    mUI:Skin(FriendsFriendsFrame)
    mUI:Skin(FriendsFriendsFrame.Border)
    if mUI:IsClassic() then
        mUI:Skin(FriendsFrameFriendsScrollFrame)
        mUI:Skin(WhoListScrollFrame)
    else
        mUI:Skin(RecruitAFriendFrame)
        mUI:Skin(RecruitAFriendFrame.RecruitList)
        mUI:Skin(RecruitAFriendFrame.RecruitList.Header)
        mUI:Skin(RecruitAFriendFrame.RecruitList.ScrollFrameInset)
        mUI:Skin(RecruitAFriendFrame.RecruitList.ScrollFrameInset.NineSlice)
        mUI:Skin(RecruitAFriendFrame.RewardClaiming)
        mUI:Skin(RecruitAFriendFrame.RewardClaiming.Inset)
        mUI:Skin(RecruitAFriendFrame.RewardClaiming.Inset.NineSlice)
        mUI:Skin(RecruitAFriendRecruitmentFrame)
        mUI:Skin(RecruitAFriendRecruitmentFrame.Border)
    end
    mUI:Skin(WhoFrameListInset)
    mUI:Skin(WhoFrameListInset.NineSlice)
    mUI:Skin(WhoFrameColumnHeader1)
    mUI:Skin(WhoFrameColumnHeader3)
    mUI:Skin(WhoFrameColumnHeader4)
    mUI:Skin(FriendsFrameBattlenetFrame.BroadcastFrame)
    mUI:Skin(FriendsFrameBattlenetFrame.BroadcastFrame.Border)
    mUI:Skin(FriendsTabHeaderTab1)
    mUI:Skin(FriendsTabHeaderTab2)
    mUI:Skin(FriendsTabHeaderTab3)
    mUI:Skin(FriendsFrameTab1)
    mUI:Skin(FriendsFrameTab2)
    mUI:Skin(FriendsFrameTab3)
    mUI:Skin(FriendsFrameTab4)
    mUI:Skin(RaidInfoFrame)
    mUI:Skin(RaidInfoFrame.Header)
    mUI:Skin(RaidInfoFrame.Border)
    mUI:Skin(FriendsTooltip.NineSlice)
end

function Theme:Guild()
    -- Guild
    mUI:Skin(GuildRegistrarFrame)
    mUI:Skin(GuildRegistrarFrame.NineSlice)
    mUI:Skin(GuildRegistrarFrameInset)
    mUI:Skin(GuildRegistrarFrameInset.NineSlice)
    mUI:Skin(TabardFrame)
    mUI:Skin(TabardFrame.NineSlice)
    mUI:Skin(TabardFrameInset)
    mUI:Skin(TabardFrameInset.NineSlice)
    if mUI:IsClassic() then
        mUI:Skin(TabardFrameMoneyBg)
        mUI:Skin(TabardFrameMoneyInset)
        mUI:Skin(TabardFrameMoneyInset.NineSlice)
    end

    select(3, GuildRegistrarButton1:GetRegions()):SetTextColor(0.9, 0.9, 0.9)
    select(3, GuildRegistrarButton2:GetRegions()):SetTextColor(0.9, 0.9, 0.9)
    select(1, GuildRegistrarGreetingFrame:GetRegions()):SetTextColor(0.9, 0.9, 0.9)
    select(1, GuildRegistrarPurchaseFrame:GetRegions()):SetTextColor(0.9, 0.9, 0.9)
end

function Theme:Gossip()
    -- Gossip
    mUI:Skin(GossipFrame)
    mUI:Skin(GossipFrame.NineSlice)
    mUI:Skin(GossipFrameInset)
    mUI:Skin(GossipFrameInset.NineSlice)
    if mUI:IsClassic() then
        mUI:Skin(GossipFrame.GreetingPanel.ScrollBar.Background)
    end
end

function Theme:Item()
    -- Item
    mUI:Skin(ItemTextFrame)
    mUI:Skin(ItemTextFrame.NineSlice)

    if mUI:IsClassic() then
        mUI:Skin(ItemTextScrollFrame)
        mUI:Skin(ItemTextFrameInset)
        mUI:Skin(ItemTextFrameInset.NineSlice)
    end
end

function Theme:LFG()
    -- LFG
    mUI:Skin(PVEFrame)
    mUI:Skin(PVEFrame.shadows)
    mUI:Skin(PVEFrame.NineSlice)
    mUI:Skin(LFGListFrame.SearchPanel.ResultsInset)
    mUI:Skin(LFGListFrame.SearchPanel.ResultsInset.NineSlice)
    mUI:Skin(PVEFrameLeftInset)
    mUI:Skin(PVEFrameLeftInset.NineSlice)
    mUI:Skin(LFDParentFrameInset)
    mUI:Skin(LFDParentFrameInset.NineSlice)
    mUI:Skin(RaidFinderFrameRoleInset)
    mUI:Skin(RaidFinderFrameRoleInset.NineSlice)
    mUI:Skin(RaidFinderFrameBottomInset)
    mUI:Skin(RaidFinderFrameBottomInset.NineSlice)
    mUI:Skin(LFGListFrame)
    mUI:Skin(LFGListFrame.CategorySelection)
    mUI:Skin(LFGListFrame.CategorySelection.Inset)
    mUI:Skin(LFGListFrame.CategorySelection.Inset.NineSlice)
    mUI:Skin(LFGListFrame.ApplicationViewer)
    mUI:Skin(LFGListFrame.ApplicationViewer.Inset)
    mUI:Skin(LFGListFrame.ApplicationViewer.Inset.NineSlice)
    mUI:Skin(LFGListFrame.EntryCreation)
    mUI:Skin(LFGListFrame.EntryCreation.Inset)
    mUI:Skin(LFGListFrame.EntryCreation.Inset.NineSlice)
    mUI:Skin(LFGListFrame.ApplicationViewer.NameColumnHeader)
    mUI:Skin(LFGListFrame.ApplicationViewer.RoleColumnHeader)
    mUI:Skin(LFGListFrame.ApplicationViewer.ItemLevelColumnHeader)
    mUI:Skin(ScenarioFinderFrameInset)
    mUI:Skin(ScenarioFinderFrameInset.NineSlice)
    mUI:Skin(LFGApplicationViewerRatingColumnHeader)
    mUI:Skin(LFDRoleCheckPopup)
    mUI:Skin(LFDRoleCheckPopup.Border)
    mUI:Skin(PVPReadyDialog)
    mUI:Skin(PVPReadyDialog.Border)
    mUI:Skin(PVEFrameTab1)
    mUI:Skin(PVEFrameTab2)
    mUI:Skin(PVEFrameTab3)
    mUI:Skin(PVEFrameTab4)
    mUI:Skin({
        LFDQueueFrameBackground,
        LFDParentFrameRoleBackground,
        PVEFrameTopFiligree,
        PVEFrameBottomFiligree,
        PVEFrameBlueBg,
    }, true)

    if mUI:IsClassic() then
        LFGListFrame.CategorySelection.StartGroupButton.RightSeparator:Hide()
        LFGListFrame.CategorySelection.FindGroupButton.LeftSeparator:Hide()
        LFGListFrame.SearchPanel.BackButton.RightSeparator:Hide()
        LFGListFrame.SearchPanel.SignUpButton.LeftSeparator:Hide()
        ScenarioQueueFrameFindGroupButton_LeftSeparator:Hide()
        ScenarioQueueFrameFindGroupButton_RightSeparator:Hide()
        LFDQueueFrameFindGroupButton_LeftSeparator:Hide()
        LFDQueueFrameFindGroupButton_RightSeparator:Hide()
        LFGListFrame.EntryCreation.CancelButton.RightSeparator:Hide()
        LFGListFrame.EntryCreation.ListGroupButton.LeftSeparator:Hide()
        LFGListFrame.SearchPanel.BackToGroupButton.RightSeparator:Hide()
    end
end

function Theme:Loot()
    -- Loot
    mUI:Skin(LootFrame)
    mUI:Skin(LootFrame.NineSlice)

    if mUI:IsClassic() then
        mUI:Skin(LootFrameInset)
        mUI:Skin(LootFrameInset.NineSlice)
        mUI:Skin(GroupLootFrame1)
        mUI:Skin(GroupLootFrame2)
        mUI:Skin(GroupLootFrame3)
        mUI:Skin(GroupLootFrame4)

        if not Theme:IsHooked("LootFrame_OnShow") then
            Theme:SecureHook("LootFrame_OnShow", function(frame)
                GroupLootFrame1:SetBackdropColor(unpack(mUI:Color(0.15)))
                GroupLootFrame1:SetBackdropBorderColor(unpack(mUI:Color(0.15)))

                GroupLootFrame2:SetBackdropColor(unpack(mUI:Color(0.15)))
                GroupLootFrame2:SetBackdropBorderColor(unpack(mUI:Color(0.15)))

                GroupLootFrame3:SetBackdropColor(unpack(mUI:Color(0.15)))
                GroupLootFrame3:SetBackdropBorderColor(unpack(mUI:Color(0.15)))

                GroupLootFrame4:SetBackdropColor(unpack(mUI:Color(0.15)))
                GroupLootFrame4:SetBackdropBorderColor(unpack(mUI:Color(0.15)))
            end)
        end
    end

    if not mUI:IsClassic() then
        mUI:Skin(GroupLootHistoryFrame)
        mUI:Skin(GroupLootHistoryFrameBg)
        mUI:Skin(GroupLootHistoryFrame.TitleContainer)
        mUI:Skin(GroupLootHistoryFrame.NineSlice)
    end
end

function Theme:Mail()
    -- Mail
    mUI:Skin(MailFrame)
    mUI:Skin(MailFrame.NineSlice)
    mUI:Skin(OpenMailFrame)
    mUI:Skin(OpenMailFrame.NineSlice)
    mUI:Skin(MailFrameInset)
    mUI:Skin(MailFrameInset.NineSlice)
    if mUI:IsClassic() then
        mUI:Skin(MailEditBoxScrollBar.Background)
        mUI:Skin(OpenMailScrollFrame)
    end
    mUI:Skin(OpenMailFrameInset)
    mUI:Skin(OpenMailFrameInset.NineSlice)
    mUI:Skin(SendMailMoneyInset)
    mUI:Skin(SendMailMoneyInset.NineSlice)
    mUI:Skin(SendMailMoneyBg)
    mUI:Skin(SendMailFrame)
    mUI:Skin(MailFrameTab1)
    mUI:Skin(MailFrameTab2)
end

function Theme:Merchant()
    -- Merchant
    mUI:Skin(MerchantFrame)
    mUI:Skin(MerchantFrame.NineSlice)
    mUI:Skin(MerchantFrameInset)
    mUI:Skin(MerchantFrameInset.NineSlice)
    mUI:Skin(StackSplitFrame)
    mUI:Skin(MerchantMoneyBg)
    mUI:Skin(MerchantMoneyInset)
    mUI:Skin(MerchantMoneyInset.NineSlice)
    if not mUI:IsClassic() then
        mUI:Skin(MerchantExtraCurrencyBg)
        mUI:Skin(MerchantExtraCurrencyInset.NineSlice)
        mUI:Skin(MerchantRepairItemButton)
        mUI:Skin(MerchantRepairAllButton)
    end
    mUI:Skin(MerchantFrameTab1)
    mUI:Skin(MerchantFrameTab2)
    mUI:Skin(MerchantGuildBankRepairButton)
    mUI:Skin(MerchantSellAllJunkButton)
    mUI:Skin({
        MerchantBuyBackItemSlotTexture
    }, true)
end

function Theme:Map()
    -- Map
    if mUI:IsClassic() then
        mUI:Skin(WorldMapFrame)
        mUI:Skin(WorldMapFrame.MiniBorderFrame)
        mUI:Skin(MinimapZoomIn)
        mUI:Skin(MinimapZoomOut)

        -- Minimap
        mUI:Skin({
            MinimapBorder,
            MiniMapTrackingButtonBorder,
            MiniMapMailBorder,
            MiniMapLFGFrameBorder
        }, true)
    else
        mUI:Skin(WorldMapFrame)
        mUI:Skin(WorldMapFrame.BorderFrame)
        mUI:Skin(WorldMapFrame.BorderFrame.NineSlice)
        mUI:Skin(WorldMapFrame.NavBar)
        mUI:Skin(WorldMapFrame.NavBar.overlay)
        mUI:Skin({
            QuestMapFrame.QuestsTab.Background,
            QuestMapFrame.EventsTab.Background,
            QuestMapFrame.MapLegendTab.Background
        }, true)

        -- Minimap
        mUI:Skin({
            MinimapCompassTexture
        }, true)
    end
end

function Theme:Reforging()
    -- Reforging
    if ReforgingFrame then
        mUI:Skin(ReforgingFrame)
        mUI:Skin(ReforgingFrame.NineSlice)
        mUI:Skin(ReforgingFrameButtonFrame)

        ReforgingFrameRestoreButton_LeftSeparator:Hide()
        ReforgingFrameRestoreButton_RightSeparator:Hide()
    end
end

function Theme:ItemUpgrade()
    -- Item Upgrade
    if ItemUpgradeFrame then
        mUI:Skin(ItemUpgradeFrame)
        mUI:Skin(ItemUpgradeFrame.NineSlice)
        mUI:Skin(ItemUpgradeFramePlayerCurrenciesBorder)
        mUI:Skin(ItemUpgradeFrameLeftItemPreviewFrame.NineSlice)
        mUI:Skin(ItemUpgradeFrameRightItemPreviewFrame.NineSlice)
        mUI:Skin({
            ItemUpgradeFrame.UpgradeItemButton.ButtonFrame
        }, true)
    end
end

function Theme:Petition()
    -- Petition
    mUI:Skin(PetitionFrame)
    mUI:Skin(PetitionFrame.NineSlice)
    mUI:Skin(PetitionFrameInset)
    mUI:Skin(PetitionFrameInset.NineSlice)

    if mUI:IsClassic() then
        PetitionFrameCharterTitle:SetTextColor(0.9, 0.9, 0.9)
        PetitionFrameCharterName:SetTextColor(0.9, 0.9, 0.9)
        PetitionFrameMasterTitle:SetTextColor(0.9, 0.9, 0.9)
        PetitionFrameMasterName:SetTextColor(0.9, 0.9, 0.9)
        PetitionFrameMemberTitle:SetTextColor(0.9, 0.9, 0.9)
        PetitionFrameMemberName1:SetTextColor(0.9, 0.9, 0.9)
        PetitionFrameMemberName2:SetTextColor(0.9, 0.9, 0.9)
        PetitionFrameMemberName3:SetTextColor(0.9, 0.9, 0.9)
        PetitionFrameMemberName4:SetTextColor(0.9, 0.9, 0.9)
        PetitionFrameInstructions:SetTextColor(0.9, 0.9, 0.9)
    else
        select(5, PetitionFrame:GetRegions()):SetTextColor(0.9, 0.9, 0.9)
        select(6, PetitionFrame:GetRegions()):SetTextColor(0.9, 0.9, 0.9)
        select(7, PetitionFrame:GetRegions()):SetTextColor(0.9, 0.9, 0.9)
        select(8, PetitionFrame:GetRegions()):SetTextColor(0.9, 0.9, 0.9)
        select(9, PetitionFrame:GetRegions()):SetTextColor(0.9, 0.9, 0.9)
        select(9, PetitionFrame:GetRegions()):SetTextColor(0.9, 0.9, 0.9)
        select(10, PetitionFrame:GetRegions()):SetTextColor(0.9, 0.9, 0.9)
        select(11, PetitionFrame:GetRegions()):SetTextColor(0.9, 0.9, 0.9)
        select(12, PetitionFrame:GetRegions()):SetTextColor(0.9, 0.9, 0.9)
        select(13, PetitionFrame:GetRegions()):SetTextColor(0.9, 0.9, 0.9)
        select(19, PetitionFrame:GetRegions()):SetTextColor(0.9, 0.9, 0.9)
    end
end

function Theme:Quest()
    -- Quest
    mUI:Skin(QuestFrame)
    mUI:Skin(QuestFrame.NineSlice)
    mUI:Skin(QuestFrameInset)
    mUI:Skin(QuestFrameInset.NineSlice)
    if mUI:IsClassic() then
        mUI:Skin(QuestLogFrame)
        mUI:Skin(QuestLogFrame.NineSlice)
        mUI:Skin(QuestLogFrameInset)
        mUI:Skin(QuestLogFrameInset.NineSlice)
        mUI:Skin(QuestLogDetailFrame)
        mUI:Skin(QuestLogDetailFrame.NineSlice)
        mUI:Skin(QuestLogDetailFrameInset)
        mUI:Skin(QuestLogDetailFrameInset.NineSlice)
        mUI:Skin(QuestLogListScrollFrame)
        mUI:Skin(QuestLogDetailScrollFrame)
        mUI:Skin(QuestRewardScrollFrame)
        mUI:Skin(QuestDetailScrollFrame)
        mUI:Skin(QuestProgressScrollFrame)
        mUI:Skin(QuestModelScene)
    else
        mUI:Skin(QuestLogPopupDetailFrame)
        mUI:Skin(QuestLogPopupDetailFrame.NineSlice)
        mUI:Skin(ObjectiveTrackerFrame)
        mUI:Skin(ObjectiveTrackerFrame.Header)
        mUI:Skin(AchievementObjectiveTracker.Header)
        mUI:Skin(CampaignQuestObjectiveTracker)
        mUI:Skin(CampaignQuestObjectiveTracker.Header)
        mUI:Skin(QuestObjectiveTracker)
        mUI:Skin(QuestObjectiveTracker.Header)
        mUI:Skin(ProfessionsRecipeTracker)
        mUI:Skin(ProfessionsRecipeTracker.Header)
        mUI:Skin(ScenarioObjectiveTracker)
        mUI:Skin(ScenarioObjectiveTracker.Header)
    end
    mUI:Skin({
        QuestNPCModelTopBorder,
        QuestNPCModelRightBorder,
        QuestNPCModelTopRightCorner,
        QuestNPCModelBottomRightCorner,
        QuestNPCModelBottomBorder,
        QuestNPCModelBottomLeftCorner,
        QuestNPCModelLeftBorder,
        QuestNPCModelTopLeftCorner,
        QuestNPCModelTextTopBorder,
        QuestNPCModelTextRightBorder,
        QuestNPCModelTextTopRightCorner,
        QuestNPCModelTextBottomRightCorner,
        QuestNPCModelTextBottomBorder,
        QuestNPCModelTextBottomLeftCorner,
        QuestNPCModelTextLeftBorder,
        QuestNPCModelTextTopLeftCorner
    }, true)
end

function Theme:Settings()
    -- Settings Panel
    mUI:Skin(SettingsPanel)
    mUI:Skin(SettingsPanel.Bg)
    mUI:Skin(SettingsPanel.NineSlice)
end

function Theme:Raidframe()
    -- Raidframe
    mUI:Skin(CompactRaidFrameManager)
    mUI:Skin(CompactPartyFrameBorderFrame)

    if mUI:IsClassic() then
        mUI:Skin(CompactRaidFrameContainerBorderFrame)

        for i = 1, 40 do
            mUI:Skin({
                _G["CompactRaidFrame" .. i .. "HorizDivider"],
                _G["CompactPartyFrameMember" .. i .. "HorizDivider"]
            }, true)
        end
    end
end

function Theme:Trade()
    -- Trade
    mUI:Skin(TradeFrame)
    mUI:Skin(TradeFrame.NineSlice)
    mUI:Skin(TradeFrame.RecipientOverlay)
    mUI:Skin(TradeFrameInset.NineSlice)
    mUI:Skin(TradePlayerEnchantInset)
    mUI:Skin(TradePlayerEnchantInset.NineSlice)
    mUI:Skin(TradePlayerItemsInset.NineSlice)
    mUI:Skin(TradeRecipientItemsInset.NineSlice)
    mUI:Skin(TradeRecipientMoneyBg)
    mUI:Skin(TradeRecipientMoneyInset.NineSlice)
    mUI:Skin(TradeRecipientEnchantInset)
    mUI:Skin(TradeRecipientEnchantInset.NineSlice)
end

function Theme:Rewards()
    -- Weekly Rewards
    if WeeklyRewardsFrame then
        mUI:Skin(WeeklyRewardsFrame)
        mUI:Skin(WeeklyRewardsFrame.BorderContainer)
    end
end

function Theme:ClassBars()
    -- Class Bars
    if (playerClass == "ROGUE") then
        if (not Theme:IsHooked(RogueComboPointBarFrame, "OnUpdate")) and (not mUI:IsClassic()) then
            Theme:SecureHookScript(RogueComboPointBarFrame, "OnUpdate", Theme.ClassBar)
        end

        Theme:ClassBar()
    elseif (playerClass == "MAGE") then
        if (not Theme:IsHooked(MageArcaneChargesFrame, "OnUpdate")) and (not mUI:IsClassic()) then
            Theme:SecureHookScript(MageArcaneChargesFrame, "OnUpdate", Theme.ClassBar)
        end

        Theme:ClassBar()
    elseif (playerClass == "WARLOCK") then
        if (not Theme:IsHooked(WarlockPowerFrame, "OnUpdate")) and (not mUI:IsClassic()) then
            Theme:SecureHookScript(WarlockPowerFrame, "OnUpdate", Theme.ClassBar)
        end

        Theme:ClassBar()
    elseif (playerClass == "DRUID") then
        if (not Theme:IsHooked(DruidComboPointBarFrame, "OnUpdate")) and (not mUI:IsClassic()) then
            Theme:SecureHookScript(DruidComboPointBarFrame, "OnUpdate", Theme.ClassBar)
        end

        Theme:ClassBar()
    elseif (playerClass == "MONK") then
        if (not Theme:IsHooked(MonkHarmonyBarFrame, "OnUpdate")) and (not mUI:IsClassic()) then
            Theme:SecureHookScript(MonkHarmonyBarFrame, "OnUpdate", Theme.ClassBar)
        end

        Theme:ClassBar()
    elseif (playerClass == "DEATHKNIGHT") then
        if (not Theme:IsHooked(RuneFrame, "OnUpdate")) then
            Theme:SecureHookScript(RuneFrame, "OnUpdate", Theme.ClassBar)
        end
    elseif (playerClass == "EVOKER") then
        if (not Theme:IsHooked(EssencePlayerFrame, "OnUpdate")) and (not mUI:IsClassic()) then
            Theme:SecureHookScript(EssencePlayerFrame, "OnUpdate", Theme.ClassBar)
        end

        Theme:ClassBar()
    elseif (playerClass == "PALADIN") then
        Theme:ClassBar()
    elseif (playerClass == "PRIEST" and mUI:IsClassic()) then
        Theme:ClassBar()
    end

    if (playerClass == "SHAMAN" or playerClass == "PALADIN" or (playerClass == "PRIEST" and not mUI:IsClassic()) or playerClass == "DRUID") then
        -- Totem Bar
        if (not Theme:IsHooked(TotemFrame, "OnUpdate")) then
            Theme:SecureHookScript(TotemFrame, "OnUpdate", function(frame)
                if mUI:IsClassic() then
                    local borderFrame1 = select(2, TotemFrameTotem1:GetChildren())
                    local borderFrame2 = select(2, TotemFrameTotem2:GetChildren())
                    local borderFrame3 = select(2, TotemFrameTotem3:GetChildren())

                    mUI:Skin(borderFrame1)
                    mUI:Skin(borderFrame2)
                    mUI:Skin(borderFrame3)
                else
                    for totem, _ in frame.totemPool:EnumerateActive() do
                        mUI:Skin({ totem.Border }, true)
                    end
                end
            end)
        end

        Theme:ClassBar()
    end
end

function Theme:Unitframes()
    -- Unitframes
    if mUI:IsClassic() then
        mUI:Skin({
            PlayerFrameTexture,
            PlayerFrameVehicleTexture,
            PetFrameTexture,
            TargetFrameTextureFrameTexture,
            FocusFrameTextureFrameTexture,
            Boss1TargetFrameTextureFrameTexture,
            Boss2TargetFrameTextureFrameTexture,
            Boss3TargetFrameTextureFrameTexture,
            Boss4TargetFrameTextureFrameTexture,
            Boss5TargetFrameTextureFrameTexture,
            TargetFrameToTTextureFrameTexture,
            FocusFrameToTTextureFrameTexture,
        }, true)
        mUI:Skin(PlayerFrameAlternateManaBar)
        mUI:Skin(PlayerFrameGroupIndicator)
    else
        mUI:Skin(PlayerFrame.PlayerFrameContainer)
        mUI:Skin(TargetFrame.TargetFrameContainer)
        mUI:Skin(FocusFrame.TargetFrameContainer)
        mUI:Skin(Boss1TargetFrame.TargetFrameContainer)
        mUI:Skin(Boss2TargetFrame.TargetFrameContainer)
        mUI:Skin(Boss3TargetFrame.TargetFrameContainer)
        mUI:Skin(Boss4TargetFrame.TargetFrameContainer)
        mUI:Skin(Boss5TargetFrame.TargetFrameContainer)
        mUI:Skin({
            PetFrameTexture,
            TargetFrameToT.FrameTexture,
            FocusFrameToT.FrameTexture,
            PlayerFrame.PlayerFrameContent.PlayerFrameContentContextual.PlayerPortraitCornerIcon
        }, true)
    end
end

function Theme:Castbars()
    -- Castbars
    if mUI:IsClassic() then
        mUI:Skin({
            CastingBarFrame.Border,
            TargetFrameSpellBar.Border,
            TargetFrameSpellBar.BorderShield,
            FocusFrameSpellBar.Border,
            FocusFrameSpellBar.BorderShield,
            Boss1TargetFrameSpellBar.Border,
            Boss1TargetFrameSpellBar.BorderShield,
            Boss2TargetFrameSpellBar.Border,
            Boss2TargetFrameSpellBar.BorderShield,
            Boss3TargetFrameSpellBar.Border,
            Boss3TargetFrameSpellBar.BorderShield,
            Boss4TargetFrameSpellBar.Border,
            Boss4TargetFrameSpellBar.BorderShield,
            Boss5TargetFrameSpellBar.Border,
            Boss5TargetFrameSpellBar.BorderShield
        }, true)
    else
        mUI:Skin({
            PlayerCastingBarFrame.Background,
            TargetFrameSpellBar.Background,
            TargetFrameSpellBar.Border,
            FocusFrameSpellBar.Background,
            FocusFrameSpellBar.Border,
            Boss1TargetFrameSpellBar.Background,
            Boss1TargetFrameSpellBar.Border,
            Boss2TargetFrameSpellBar.Background,
            Boss2TargetFrameSpellBar.Border,
            Boss3TargetFrameSpellBar.Background,
            Boss3TargetFrameSpellBar.Border,
            Boss4TargetFrameSpellBar.Background,
            Boss4TargetFrameSpellBar.Border,
            Boss5TargetFrameSpellBar.Background,
            Boss5TargetFrameSpellBar.Border
        }, true)
    end

    -- Castbar Icon Skinning
    for castbar in pairs(Theme.castbarIcons) do
        castbar.mUIBorder:SetVertexColor(unpack(mUI:Color(0.15)))
    end
end

function Theme:Auras()
    if not mUI:IsClassic() then
        -- BuffFrame Expand/Collapse Button
        mUI:Skin(BuffFrame.CollapseAndExpandButton)
    end

    -- Aura Skinning
    for button, type in pairs(Theme.aurabuttons) do
        if type == "playerbuff" or type == "unitframebuff" then
            button.mUIBorder:SetVertexColor(unpack(mUI:Color(0.25)))
        end
    end
end

function Theme:Frames()
    -- Bnet Toast
    Theme.blacklist[BNToastFrameIconTexture] = true
    mUI:Skin(BNToastFrame)

    -- Game Menu
    mUI:Skin(GameMenuFrame)
    mUI:Skin(GameMenuFrame.Header)
    mUI:Skin(GameMenuFrame.Border)

    -- StaticPopups
    mUI:Skin(StaticPopup1)
    mUI:Skin(StaticPopup2)
    mUI:Skin(StaticPopup3)
    if not mUI:IsClassic() then
        mUI:Skin(StaticPopup1.BG)
        mUI:Skin(StaticPopup2.BG)
        mUI:Skin(StaticPopup3.BG)
    end
    mUI:Skin({
        StaticPopup1EditBoxLeft,
        StaticPopup1EditBoxMid,
        StaticPopup1EditBoxRight,
        StaticPopup2EditBoxLeft,
        StaticPopup2EditBoxMid,
        StaticPopup2EditBoxRight,
        StaticPopup3EditBoxLeft,
        StaticPopup3EditBoxMid,
        StaticPopup3EditBoxRight,
    }, true)

    if not mUI:IsClassic() then
        -- EditMode
        mUI:Skin(EditModeManagerFrame)
        mUI:Skin(EditModeManagerFrame.Border)
    end

    -- Vehicle Seat
    mUI:Skin(VehicleSeatIndicator)

    -- ReportFrame
    mUI:Skin(ReportFrame)
    mUI:Skin(ReportFrame.Border)

    -- LFG Ready/Invite Dialogs
    if not mUI:IsClassic() then
        mUI:Skin(ReadyStatus.Border)
    end
    mUI:Skin(LFGDungeonReadyStatus.Border)
    mUI:Skin(LFGDungeonReadyDialog)
    mUI:Skin(LFGDungeonReadyDialog.Border)
    mUI:Skin(LFGListApplicationDialog)
    mUI:Skin(LFGListApplicationDialog.Border)
    mUI:Skin(LFGListInviteDialog)
    mUI:Skin(LFGListInviteDialog.Border)
    mUI:Skin(QueueStatusFrame)
    mUI:Skin(QueueStatusFrame.NineSlice)
    mUI:Skin(LFGInvitePopup)
    mUI:Skin(LFGInvitePopup.Border)

    -- PVP Scoreboard
    if not mUI:IsClassic() then
        mUI:Skin(PVPMatchScoreboard.Content)
        mUI:Skin(PVPScoreboardTab1)
        mUI:Skin(PVPScoreboardTab2)
        mUI:Skin(PVPScoreboardTab3)
    end

    -- ReadyCheck
    mUI:Skin(ReadyCheckListenerFrame)
    mUI:Skin(ReadyCheckListenerFrame.NineSlice)
end

function Theme:Update()
    Theme:Achievements()
    Theme:AuctionHouse()
    Theme:AlliedRaces()
    Theme:Archaeology()
    Theme:Calendar()
    Theme:Challenges()
    Theme:Socketing()
    Theme:Trainer()
    Theme:Collections()
    Theme:EncounterJournal()
    Theme:FlightMap()
    Theme:Garrison()
    Theme:Inspect()
    Theme:GuildBank()
    Theme:Professions()
    Theme:Islands()
    Theme:PVP()
    Theme:Macros()
    Theme:Scrapping()
    Theme:Spellbook()
    Theme:ProfessionsBook()
    Theme:PlayerSpells()
    Theme:TimeManager()
    Theme:Actionbars()
    Theme:AddonList()
    Theme:Bags()
    Theme:Bank()
    Theme:Character()
    Theme:Chat()
    Theme:Communities()
    Theme:DressUp()
    Theme:Friendlist()
    Theme:Guild()
    Theme:Gossip()
    Theme:Item()
    Theme:LFG()
    Theme:Loot()
    Theme:Mail()
    Theme:Merchant()
    Theme:Map()
    Theme:Reforging()
    Theme:ItemUpgrade()
    Theme:Petition()
    Theme:Quest()
    Theme:Settings()
    Theme:Raidframe()
    Theme:Trade()
    Theme:Rewards()
    Theme:ClassBars()
    Theme:Unitframes()
    Theme:Castbars()
    Theme:Auras()
    Theme:Frames()

    -- Tooltips
    for _, tooltip in next, Theme.tooltips do
        Theme:StyleTooltip(tooltip)
    end
end
