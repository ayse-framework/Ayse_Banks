AyseCore = exports["Ayse_Core"]:GetCoreObject()

RegisterNetEvent("Ayse_Banks:withdraw", function(amount)
    local player = source
    local update = AyseCore.Functions.WithdrawMoney(amount, player)
    TriggerClientEvent("Ayse_Banks:update", player, update)
end)

RegisterNetEvent("Ayse_Banks:deposit", function(amount)
    local player = source
    local update = AyseCore.Functions.DepositMoney(amount, player)
    TriggerClientEvent("Ayse_Banks:update", player, update)
end)

RegisterNetEvent("Ayse_Banks:transfer", function(amount, target)
    local player = source
    local update = AyseCore.Functions.TransferBank(amount, player, target)
    TriggerClientEvent("Ayse_Banks:update", player, update)
end)
