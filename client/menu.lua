-------------------------------------------------------------
--                 by 🗽 𝕴𝖒𝖆𝖌𝖎𝖓𝖊𝖊𝖗 🗿#3733                 --
-------------------------------------------------------------

-- Initalisation des Menus
RMenu.Add('imagin_adverts', 'menuaccueil', RageUI.CreateMenu("Publicité", "~b~Créer sa publicité."))
RMenu.Add('imagin_adverts', 'menupersoadvert', RageUI.CreateSubMenu(RMenu:Get('imagin_adverts', 'menuaccueil'), "Publicité", "~b~Personalise ta publicité."))
RMenu.Add('imagin_adverts', 'menupaiement', RageUI.CreateSubMenu(RMenu:Get('imagin_adverts', 'menupersoadvert'), "Paiement", "~b~Paiement de la publicité."))

-- Touche pour les tests de menu
-- Keys.Register('F1', 'F1', 'Ouvrez le menu de publicité.', function()
--     RageUI.Visible(RMenu:Get('imagin_adverts', 'menuaccueil'), not RageUI.Visible(RMenu:Get('imagin_adverts', 'menuaccueil')))
-- end)

-- Programme du Menu
Citizen.CreateThread(function()
    while (true) do
		-- Optimisation
		if vStatusMenu == true then
			Citizen.Wait(3)
			
			-- Menu Accueil
			RageUI.IsVisible(RMenu:Get('imagin_adverts', 'menuaccueil'), function()
				RageUI.Separator('~y~↓ Offres classiques ↓')
				RageUI.Button('Publicité classique', 'Passez votre message une seule fois à la vue de tous.', { RightLabel = Config.LabelClassic }, true, {
					onSelected = function()
						offer = "classic"
						if offer == "classic" then
							vRightLabelConfirm = Config.LabelClassic
						elseif offer == "classic3" then
							vRightLabelConfirm = Config.LabelClassic3
						elseif offer == "classic5" then
							vRightLabelConfirm = Config.LabelClassic5
						elseif offer == "spam" then
							vRightLabelConfirm = Config.LabelSpam
						elseif offer == "anonymous" then
							vRightLabelConfirm = Config.LabelAnonymous
						elseif offer == "journalist" then
							vRightLabelConfirm = Config.LabelJournalist
						end
					end,
				}, RMenu:Get('imagin_adverts', 'menupersoadvert'))
				RageUI.Button('Publicité classique x3', 'Passez votre message trois fois à la vue de tous.', { RightLabel = Config.LabelClassic3 }, true, {
					onSelected = function()
						offer = "classic3"
						if offer == "classic" then
							vRightLabelConfirm = Config.LabelClassic
						elseif offer == "classic3" then
							vRightLabelConfirm = Config.LabelClassic3
						elseif offer == "classic5" then
							vRightLabelConfirm = Config.LabelClassic5
						elseif offer == "spam" then
							vRightLabelConfirm = Config.LabelSpam
						elseif offer == "anonymous" then
							vRightLabelConfirm = Config.LabelAnonymous
						elseif offer == "journalist" then
							vRightLabelConfirm = Config.LabelJournalist
						end
					end,
				}, RMenu:Get('imagin_adverts', 'menupersoadvert'))
				RageUI.Button('Publicité classique x5', 'Passez votre message cinq fois à la vue de tous.', { RightLabel = Config.LabelClassic5 }, true, {
					onSelected = function()
						offer = "classic5"
						if offer == "classic" then
							vRightLabelConfirm = Config.LabelClassic
						elseif offer == "classic3" then
							vRightLabelConfirm = Config.LabelClassic3
						elseif offer == "classic5" then
							vRightLabelConfirm = Config.LabelClassic5
						elseif offer == "spam" then
							vRightLabelConfirm = Config.LabelSpam
						elseif offer == "anonymous" then
							vRightLabelConfirm = Config.LabelAnonymous
						elseif offer == "journalist" then
							vRightLabelConfirm = Config.LabelJournalist
						end
					end,
				}, RMenu:Get('imagin_adverts', 'menupersoadvert'))
				RageUI.Separator('~y~↓ Offres spéciales ↓')
				RageUI.Button('Publicité SPAM', 'Passez votre message en mode "spam" (Majuscules et Fond Rouge) pour un effet immédiat.', { RightLabel = Config.LabelSpam }, true, {
					onSelected = function()
						offer = "spam"
						if offer == "classic" then
							vRightLabelConfirm = Config.LabelClassic
						elseif offer == "classic3" then
							vRightLabelConfirm = Config.LabelClassic3
						elseif offer == "classic5" then
							vRightLabelConfirm = Config.LabelClassic5
						elseif offer == "spam" then
							vRightLabelConfirm = Config.LabelSpam
						elseif offer == "anonymous" then
							vRightLabelConfirm = Config.LabelAnonymous
						elseif offer == "journalist" then
							vRightLabelConfirm = Config.LabelJournalist
						end
					end,
				}, RMenu:Get('imagin_adverts', 'menupersoadvert'))
				RageUI.Button('Publicité anonyme', 'Passez votre message anonymement, aucun abus ne sera toléré par notre agence.', { RightLabel = Config.LabelAnonymous }, true, {
					onSelected = function()
						offer = "anonymous"
						vTitle = "Anonyme"
						vSubtitle = "~r~** Transmission sous VPN **"
						vChooseNotif = "CHAR_HUMANDEFAULT"
						if offer == "classic" then
							vRightLabelConfirm = Config.LabelClassic
						elseif offer == "classic3" then
							vRightLabelConfirm = Config.LabelClassic3
						elseif offer == "classic5" then
							vRightLabelConfirm = Config.LabelClassic5
						elseif offer == "spam" then
							vRightLabelConfirm = Config.LabelSpam
						elseif offer == "anonymous" then
							vRightLabelConfirm = Config.LabelAnonymous
						elseif offer == "journalist" then
							vRightLabelConfirm = Config.LabelJournalist
						end
					end,
				}, RMenu:Get('imagin_adverts', 'menupersoadvert'))
				RageUI.Separator('~y~↓ Offre journaliste ↓')
				RageUI.Button('Publicité journalistique', 'Passer votre message en "BREAKING NEWS" à tous les citoyens.', { RightLabel = Config.LabelJournalist }, true, {
					onSelected = function()
						offer = "journalist"
						if offer == "classic" then
							vRightLabelConfirm = Config.LabelClassic
						elseif offer == "classic3" then
							vRightLabelConfirm = Config.LabelClassic3
						elseif offer == "classic5" then
							vRightLabelConfirm = Config.LabelClassic5
						elseif offer == "spam" then
							vRightLabelConfirm = Config.LabelSpam
						elseif offer == "anonymous" then
							vRightLabelConfirm = Config.LabelAnonymous
						elseif offer == "journalist" then
							vRightLabelConfirm = Config.LabelJournalist
						end
					end,
				}, RMenu:Get('imagin_adverts', 'menupersoadvert'))
			end)

			-- Menu Personalisation Advert
			RageUI.IsVisible(RMenu:Get('imagin_adverts', 'menupersoadvert'), function()
				-- Titre
				if offer == "classic" or offer == "classic3" or offer == "classic5" or offer == "spam" then
					RageUI.Separator('~y~↓ Titre ↓')
					RageUI.Button('Editer le titre', nil, { RightLabel = "~b~" .. vTitle }, true, {
						onSelected = function()
							vTitle = PressInsertBox("Titre:", 30)
							RequestStreamedTextureDict(vChooseNotif,  true)
							while not HasStreamedTextureDictLoaded(vChooseNotif) do Wait(1) end
							ESX.ShowAdvancedNotification(vTitle, "~b~" .. vSubtitle, vMessage, vChooseNotif, vChooseIcon)
						end,
					})
				end
				-- Sous-Titre
				if offer == "classic" or offer == "classic3" or offer == "classic5" or offer == "spam" then
					RageUI.Separator('~y~↓ Sous-Titre ↓')
					RageUI.Button('Editer le sous-titre', nil, { RightLabel = "~b~" .. vSubtitle }, true, {
						onSelected = function()
							vSubtitle = PressInsertBox("Sous-Titre:", 30)
							RequestStreamedTextureDict(vChooseNotif,  true)
							while not HasStreamedTextureDictLoaded(vChooseNotif) do Wait(1) end
							ESX.ShowAdvancedNotification(vTitle, "~b~" .. vSubtitle, vMessage, vChooseNotif, vChooseIcon)
						end,
					})
				end
				-- Message
				RageUI.Separator('~y~↓ Message ↓')
				RageUI.Button('Editer votre message', nil, { RightLabel = "→" }, true, {
					onSelected = function()
						if offer == "journalist" then
							vMessage = PressInsertBox("Message:", 125)
							ESX.ShowAdvancedNotification("Prévisualisation", "~b~Annonce journalistique", vMessage, "CHAR_LIFEINVADER", 8)
						else
							vMessage = PressInsertBox("Message:", 150)
							RequestStreamedTextureDict(vChooseNotif,  true)
							while not HasStreamedTextureDictLoaded(vChooseNotif) do Wait(1) end
							ESX.ShowAdvancedNotification(vTitle, "~b~" .. vSubtitle, vMessage, vChooseNotif, vChooseIcon)
						end
					end,
				})
				-- Bannière de Notification
				if offer == "classic" or offer == "classic3" or offer == "classic5" or offer == "spam" then
					RageUI.Separator('~y~↓ Image de Notification ↓')
					RageUI.List("Image", vLabelNotif, vIndexNotif, "Cliquer sur '~y~ENTRER~s~' pour tester l'image sélectionnée ou rendez-vous sur le site: ~r~https://wiki.rage.mp/index.php?title=Notification_Pictures~s~.", {}, true, {
						onListChange = function(Index, Items)
							vIndexNotif = Index
							vChooseNotif = Items
						end,
						onSelected = function(Items)
							RequestStreamedTextureDict(vChooseNotif,  true)
							while not HasStreamedTextureDictLoaded(vChooseNotif) do Wait(1) end
							ESX.ShowAdvancedNotification(vTitle, "~b~" .. vSubtitle, vMessage, vChooseNotif, vChooseIcon)
						end,
					})
				end
				-- Icône
				if offer == "classic" or offer == "classic3" or offer == "classic5" or offer == "spam" or offer == "anonymous" then
					RageUI.Separator('~y~↓ Icône ↓')
					RageUI.List("Image", { "Bulle", "Email", "Demande d'ami", "Flèche", "Icône RP", "Icône $" }, vIndexIcon, "Cliquer sur '~y~ENTRER~s~' pour tester l'icone sélectionnée.", {}, true, {
						onListChange = function(Index, Items)
							vIndexIcon = Index
							if Items == "Bulle" then
								vChooseIcon = 1
							elseif Items == "Email" then
								vChooseIcon = 2
							elseif Items == "Demande d'ami" then
								vChooseIcon = 3
							elseif Items == "Flèche" then
								vChooseIcon = 7
							elseif Items == "Icône RP" then
								vChooseIcon = 8
							elseif Items == "Icône $" then
								vChooseIcon = 9
							end
						end,
						onSelected = function(Items)
							if Items == "Bulle" then
								vChooseIcon = 1
							elseif Items == "Email" then
								vChooseIcon = 2
							elseif Items == "Demande d'ami" then
								vChooseIcon = 3
							elseif Items == "Flèche" then
								vChooseIcon = 7
							elseif Items == "Icône RP" then
								vChooseIcon = 8
							elseif Items == "Icône $" then
								vChooseIcon = 9
							end
							RequestStreamedTextureDict(vChooseNotif,  true)
							while not HasStreamedTextureDictLoaded(vChooseNotif) do Wait(1) end
							ESX.ShowAdvancedNotification(vTitle, "~b~" .. vSubtitle, vMessage, vChooseNotif, vChooseIcon)
						end,
					})
				end
				RageUI.Separator('~y~↓ Confirmation ↓')
				RageUI.Button('Confirmer la publication', 'Confirmer la publication pour passer au paiement et la publication de votre publicité.', { RightLabel = vRightLabelConfirm }, true, {
				}, RMenu:Get('imagin_adverts', 'menupaiement'))
			end)

			-- Menu Paiement
			RageUI.IsVisible(RMenu:Get('imagin_adverts', 'menupaiement'), function()
				RageUI.Separator('~y~↓ Méthodes de paiement ↓')
				RageUI.Button('Espèces', 'Payer avec votre argent liquide présent sur vous.', { RightLabel = "→" }, true, {
					onSelected = function()
						-- Paramétrage du Prix
						local price = nil
						if offer == "classic" then
							price = Config.PriceClassic
						elseif offer == "classic3" then
							price = Config.PriceClassic3
						elseif offer == "classic5" then
							price = Config.PriceClassic5
						elseif offer == "spam" then
							price = Config.PriceSpam
						elseif offer == "anonymous" then
							price = Config.PriceAnonymous
						elseif offer == "journalist" then
							price = Config.PriceJournalist
						end
						-- Méthode de paiement
						local method = "money"
						ESX.TriggerServerCallback('imagin_adverts:pay', function(hasMoney)
							if hasMoney then
								RageUI.CloseAll()
								ESX.ShowAdvancedNotification('Publicité', '~b~Publication', '~o~Votre publicité est en cours d\'envoi...~n~~n~~g~Merci de patienter.', 'CHAR_MP_FM_CONTACT', 1)
								Citizen.Wait(12000)
								ESX.ShowAdvancedNotification('Publicité', '~b~Publication', '~g~Votre publicité vient d\'être posté à tout le monde.~n~~n~~o~À bientôt !', 'CHAR_MP_FM_CONTACT', 8)
								if offer == "journalist" then
									sendJournalistNotification(vMessage)
								else
									TriggerServerEvent('imagin_adverts:postadvert', vTitle, vSubtitle, vMessage, vChooseNotif, vChooseIcon, offer)
								end
							else
								ESX.ShowAdvancedNotification('Publicité', '~b~Publication', '~r~Désolé, mais vous n\'avez pas l\'argent nécessaire sur vous.', 'CHAR_MP_FM_CONTACT', 9)
							end
						end, price, method)
					end,
				})
				RageUI.Button('Carte bancaire', 'Payer avec votre compte courant grâce à votre carte bancaire.', { RightLabel = "→" }, true, {
					onSelected = function()
						-- Paramétrage du Prix
						local price = nil
						if offer == "classic" then
							price = Config.PriceClassic
						elseif offer == "classic3" then
							price = Config.PriceClassic3
						elseif offer == "classic5" then
							price = Config.PriceClassic5
						elseif offer == "spam" then
							price = Config.PriceSpam
						elseif offer == "anonymous" then
							price = Config.PriceAnonymous
						elseif offer == "journalist" then
							price = Config.PriceJournalist
						end
						-- Méthode de paiement
						local method = "bank"
						ESX.TriggerServerCallback('imagin_adverts:pay', function(hasMoney)
							if hasMoney then
								RageUI.CloseAll()
								ESX.ShowAdvancedNotification('Publicité', '~b~Publication', '~o~Votre publicité est en cours d\'envoi...~n~~n~~g~Merci de patienter.', 'CHAR_MP_FM_CONTACT', 1)
								Citizen.Wait(12000)
								ESX.ShowAdvancedNotification('Publicité', '~b~Publication', '~g~Votre publicité vient d\'être posté à tout le monde.~n~~n~~o~À bientôt !', 'CHAR_MP_FM_CONTACT', 8)
								if offer == "journalist" then
									sendJournalistNotification(vMessage)
								else
									TriggerServerEvent('imagin_adverts:postadvert', vTitle, vSubtitle, vMessage, vChooseNotif, vChooseIcon, offer)
								end
							else
								ESX.ShowAdvancedNotification('Publicité', '~b~Publication', '~r~Désolé, mais vous n\'avez pas l\'argent nécessaire sur votre compte courant.', 'CHAR_MP_FM_CONTACT', 9)
							end
						end, price, method)
					end,
				})
			end)

        else
			Citizen.Wait(1000)
		end
    end
end)

-------------------------------------------------------------
--                 by 🗽 𝕴𝖒𝖆𝖌𝖎𝖓𝖊𝖊𝖗 🗿#3733                 --
-------------------------------------------------------------