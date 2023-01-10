if Config.EnableDamageModifier then
	CreateThread(function()
		while true do
			Wait(5)
			local ped = PlayerPedId()
			local cfg = Config.WeaponsDamage[GetSelectedPedWeapon(ped)]
			if cfg then
				if cfg.DisableCriticalHit then
					SetPedSuffersCriticalHits(ped, false)
				end
				SetWeaponDamageModifier(cfg.Hash, cfg.DamageModifier)
			else
				Wait(500)
			end
		end
	end)
end