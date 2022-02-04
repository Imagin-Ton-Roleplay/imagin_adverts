-------------------------------------------------------------
--                 by 🗽 𝕴𝖒𝖆𝖌𝖎𝖓𝖊𝖊𝖗 🗿#3733                 --
-------------------------------------------------------------

----- ESX

ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

----- Callback

ESX.RegisterServerCallback('imagin_adverts:pay', function(source, cb, price, method)
    local xPlayer = ESX.GetPlayerFromId(source)
    local money = xPlayer.getAccount(method)
    if money.money >= price then
        xPlayer.removeAccountMoney(method, price)
        cb(true)
    else
        cb(false)
    end
end)

----- Trigger

RegisterServerEvent('imagin_adverts:postadvert')
AddEventHandler('imagin_adverts:postadvert', function(vTitle, vSubtitle, vMessage, vChooseNotif, vChooseIcon, offer)
    local xPlayers = ESX.GetPlayers()
    for i=1, #xPlayers, 1 do
        local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
        if offer == "anonymous" then
            TriggerClientEvent('esx:showAdvancedNotification', xPlayers[i], vTitle, "~b~" .. vSubtitle, vMessage, vChooseNotif, vChooseIcon, false, true, 222)
        elseif offer == "journalist" then
            -- NOTIF BREAKING NEWS
            TriggerClientEvent('imagin_adverts:sendJournalistNotification', vMessage)
        elseif offer == "spam" then
            TriggerClientEvent('esx:showAdvancedNotification', xPlayers[i], string.upper(vTitle), "~b~" .. string.upper(vSubtitle), string.upper(vMessage), vChooseNotif, vChooseIcon, false, true, 222)
        elseif offer == "classic3" then
            TriggerClientEvent('esx:showAdvancedNotification', xPlayers[i], vTitle, "~b~" .. vSubtitle, vMessage, vChooseNotif, vChooseIcon)
            Wait(300000)
            TriggerClientEvent('esx:showAdvancedNotification', xPlayers[i], vTitle, "~b~" .. vSubtitle, vMessage, vChooseNotif, vChooseIcon)
            Wait(300000)
            TriggerClientEvent('esx:showAdvancedNotification', xPlayers[i], vTitle, "~b~" .. vSubtitle, vMessage, vChooseNotif, vChooseIcon)
        elseif offer == "classic5" then
            TriggerClientEvent('esx:showAdvancedNotification', xPlayers[i], vTitle, "~b~" .. vSubtitle, vMessage, vChooseNotif, vChooseIcon)
            Wait(300000)
            TriggerClientEvent('esx:showAdvancedNotification', xPlayers[i], vTitle, "~b~" .. vSubtitle, vMessage, vChooseNotif, vChooseIcon)
            Wait(300000)
            TriggerClientEvent('esx:showAdvancedNotification', xPlayers[i], vTitle, "~b~" .. vSubtitle, vMessage, vChooseNotif, vChooseIcon)
            Wait(300000)
            TriggerClientEvent('esx:showAdvancedNotification', xPlayers[i], vTitle, "~b~" .. vSubtitle, vMessage, vChooseNotif, vChooseIcon)
            Wait(300000)
            TriggerClientEvent('esx:showAdvancedNotification', xPlayers[i], vTitle, "~b~" .. vSubtitle, vMessage, vChooseNotif, vChooseIcon)
        else
            TriggerClientEvent('esx:showAdvancedNotification', xPlayers[i], vTitle, "~b~" .. vSubtitle, vMessage, vChooseNotif, vChooseIcon)
        end
    end
end)

-------------------------------------------------------------
--                 by 🗽 𝕴𝖒𝖆𝖌𝖎𝖓𝖊𝖊𝖗 🗿#3733                 --
-------------------------------------------------------------