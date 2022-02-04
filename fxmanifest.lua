-------------------------------------------------------------
--                 by 🗽 𝕴𝖒𝖆𝖌𝖎𝖓𝖊𝖊𝖗 🗿#3733                 --
-------------------------------------------------------------

fx_version 'cerulean'
games { 'gta5' };

name 'imagin_adverts'
version '1.0'
description 'Advertising system for citizens and companies'
author 'Imagineer'
url 'https://steamcommunity.com/id/imagineer_/'

ui_page "html/index.html"

client_scripts {
	"@RageUI/RMenu.lua",
	"@RageUI/menu/RageUI.lua",
	"@RageUI/menu/Menu.lua",
	"@RageUI/menu/MenuController.lua",
  
	"@RageUI/components/Audio.lua",
	"@RageUI/components/Enum.lua",
	"@RageUI/components/Keys.lua",
	"@RageUI/components/Rectangle.lua",
	"@RageUI/components/Sprite.lua",
	"@RageUI/components/Text.lua",
	"@RageUI/components/Visual.lua",
  
	"@RageUI/menu/elements/ItemsBadge.lua",
	"@RageUI/menu/elements/ItemsColour.lua",
	"@RageUI/menu/elements/PanelColour.lua",
  
	"@RageUI/menu/items/UIButton.lua",
	"@RageUI/menu/items/UICheckBox.lua",
	"@RageUI/menu/items/UIList.lua",
	"@RageUI/menu/items/UISeparator.lua",
	"@RageUI/menu/items/UISlider.lua",
	"@RageUI/menu/items/UISliderHeritage.lua",
	"@RageUI/menu/items/UISliderProgress.lua",
  
	"@RageUI/menu/panels/UIColourPanel.lua",
	"@RageUI/menu/panels/UIGridPanel.lua",
	"@RageUI/menu/panels/UIPercentagePanel.lua",
	"@RageUI/menu/panels/UIStatisticsPanel.lua",
  
	"@RageUI/menu/windows/UIHeritage.lua",
}

client_scripts {
	'@es_extended/locale.lua',
    'client/main.lua',
    'client/menu.lua'
}

server_scripts {
	'@es_extended/locale.lua',
    'server/main.lua'
}

files {
    "html/index.html",
    "html/style.css",
    "html/script.js"
}

shared_script 'config.lua'

-------------------------------------------------------------
--                 by 🗽 𝕴𝖒𝖆𝖌𝖎𝖓𝖊𝖊𝖗 🗿#3733                 --
-------------------------------------------------------------