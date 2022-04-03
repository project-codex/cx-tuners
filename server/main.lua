local QBCore = exports['qb-core']:GetCoreObject()

-- Checks if the player has enough materials to craft the part
local function hasCraftItems(source, CostItems)
	local Player = QBCore.Functions.GetPlayer(source)
	for k, v in pairs(CostItems) do
		if Player.Functions.GetItemByName(k) ~= nil then
			if Player.Functions.GetItemByName(k).amount < v then
				return false
			end
		else
			return false
		end
	end
	return true
end

-- Checks if the vehicle is owned by anyone [ Used for saving the vehicle mods ]
local function IsVehicleOwned(plate)
    local retval = false
    local result = MySQL.Sync.fetchScalar('SELECT plate FROM player_vehicles WHERE plate = ?', {plate})
    if result then
        retval = true
    end
    return retval
end

-- Starts crafting or gives the item based on the passed params
RegisterNetEvent('tuners:server:craftItem', function(data)
    local _s = source
    local Player = QBCore.Functions.GetPlayer(_s)
    if data.action == 'start' then
        if hasCraftItems(_s, Config.Costs[data.item]) then
            local totalWeight = QBCore.Player.GetTotalWeight(Player.PlayerData.items)
            local itemInfo = QBCore.Shared.Items[data.item:lower()]
            if (totalWeight + itemInfo['weight']) >= QBCore.Config.Player.MaxWeight then
                TriggerClientEvent('QBCore:Notify', _s, 'Inventory too full', 'error')
                return
            end
            TriggerClientEvent('tuners:client:craftitem', _s, data.item)
        else
            TriggerClientEvent('QBCore:Notify', _s, 'You don\'t have enough materials')
        end
    elseif data.action == 'receive' then
        for k, v in pairs(Config.Costs[data.item]) do
            TriggerClientEvent('inventory:client:ItemBox', _s, QBCore.Shared.Items[k], 'remove')
            Player.Functions.RemoveItem(k, v)
        end
        Player.Functions.AddItem(data.item, 1)
    end
end)

-- Event for billing people
RegisterNetEvent("tuners:server:billplayer", function(playerId, amount)
    local _s = source
    local biller = QBCore.Functions.GetPlayer(_s)
    local billed = QBCore.Functions.GetPlayer(tonumber(playerId))
    local amount = tonumber(amount)
    if biller.PlayerData.job.name == Config.TunerJob then
        if billed ~= nil then
            if biller.PlayerData.citizenid ~= billed.PlayerData.citizenid then
                if amount and amount > 0 then
                    MySQL.insert(
                        'INSERT INTO phone_invoices (citizenid, amount, society, sender, sendercitizenid) VALUES (?, ?, ?, ?, ?)',
                        {billed.PlayerData.citizenid, amount, biller.PlayerData.job.name,
                         biller.PlayerData.charinfo.firstname, biller.PlayerData.citizenid})
                    TriggerClientEvent('qb-phone:RefreshPhone', billed.PlayerData.source)
                    TriggerClientEvent('QBCore:Notify', _s, 'Invoice Sent Successfully', 'success')
                    TriggerClientEvent('qb-phone:client:CustomNotification', billed.PlayerData.source, 'Tuners', 'New Invoice Received', 'fas fa-file-invoice', '#52ff91', 5000)
                else
                    TriggerClientEvent('QBCore:Notify', _s, 'Must Be A Valid Amount Above 0', 'error')
                end
            else
                TriggerClientEvent('QBCore:Notify', _s, 'You can not bill yourself', 'error')
            end
        else
            TriggerClientEvent('QBCore:Notify', _s, 'Player not online', 'error')
        end
    else
        TriggerClientEvent('QBCore:Notify', 'No Authorization', 'error')
    end
end)

-- Saves vehicle mods and remove the item
RegisterNetEvent('tuners:server:finish', function(item, mods)
    local _s = source
    local Player = QBCore.Functions.GetPlayer(_s)
    Player.Functions.RemoveItem(item, 1)
    if IsVehicleOwned(mods.plate) then
        MySQL.Async.execute('UPDATE player_vehicles SET mods = ? WHERE plate = ?', {json.encode(mods), mods.plate})
    end
end)

-- Items
QBCore.Functions.CreateUseableItem("engine_level1", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemByName('engine_level1') ~= nil then
        TriggerClientEvent("tuners:client:useitem", source, 'engine', item.name, 0)
    end
end)

QBCore.Functions.CreateUseableItem("engine_level2", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemByName('engine_level2') ~= nil then
        TriggerClientEvent("tuners:client:useitem", source, 'engine', item.name, 1)
    end
end)

QBCore.Functions.CreateUseableItem("engine_level3", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemByName('engine_level3') ~= nil then
        TriggerClientEvent("tuners:client:useitem", source, 'engine', item.name, 2)
    end
end)

QBCore.Functions.CreateUseableItem("engine_level4", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemByName('engine_level4') ~= nil then
        TriggerClientEvent("tuners:client:useitem", source, 'engine', item.name, 3)
    end
end)

QBCore.Functions.CreateUseableItem("transmission_level1", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemByName('transmission_level1') ~= nil then
        TriggerClientEvent("tuners:client:useitem", source, 'transmission', item.name, 0)
    end
end)

QBCore.Functions.CreateUseableItem("transmission_level2", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemByName('transmission_level2') ~= nil then
        TriggerClientEvent("tuners:client:useitem", source, 'transmission', item.name, 1)
    end
end)

QBCore.Functions.CreateUseableItem("transmission_level3", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemByName('transmission_level3') ~= nil then
        TriggerClientEvent("tuners:client:useitem", source, 'transmission', item.name, 2)
    end
end)

QBCore.Functions.CreateUseableItem("suspension_level1", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemByName('suspension_level1') ~= nil then
        TriggerClientEvent('tuners:client:useitem', source, 'suspension', item.name, 0)
    end
end)

QBCore.Functions.CreateUseableItem("suspension_level2", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemByName('suspension_level2') ~= nil then
        TriggerClientEvent("tuners:client:useitem", source, 'suspension', item.name, 1)
    end
end)

QBCore.Functions.CreateUseableItem("suspension_level3", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemByName('suspension_level3') ~= nil then
        TriggerClientEvent("tuners:client:useitem", source, 'suspension', item.name, 2)
    end
end)

QBCore.Functions.CreateUseableItem("suspension_level4", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemByName('suspension_level4') ~= nil then
        TriggerClientEvent("tuners:client:useitem", source, 'suspension', item.name, 3)
    end
end)

QBCore.Functions.CreateUseableItem("brakes_level1", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemByName('brakes_level1') ~= nil then
        TriggerClientEvent("tuners:client:useitem", source, 'brakes', item.name, 0)
    end
end)

QBCore.Functions.CreateUseableItem("brakes_level2", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemByName('brakes_level2') ~= nil then
        TriggerClientEvent("tuners:client:useitem", source, 'brakes', item.name, 1)
    end
end)

QBCore.Functions.CreateUseableItem("brakes_level3", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemByName('brakes_level3') ~= nil then
        TriggerClientEvent("tuners:client:useitem", source, 'brakes', item.name, 2)
    end
end)

QBCore.Functions.CreateUseableItem("turbo", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
	if Player.Functions.GetItemByName('turbo') ~= nil then
        TriggerClientEvent("tuners:client:useitem", source, 'turbo', item.name, 1)
    end
end)