dir="$HOME/.config/rofi"
theme="cyberpunk"

canva="Canva\0icon\x1f~/OneDrive/Documentos/Configuraciones/Iconos/canva.ico"
deviantart="Deviantart\0icon\x1f~/OneDrive/Documentos/Configuraciones/Iconos/deviantart.ico"
drive="One Drive\0icon\x1f~/OneDrive/Documentos/Configuraciones/Iconos/sharepoint.ico"
facebook="Facebook\0icon\x1fweb-facebook"
github="Github\0icon\x1fgithub"
instagram="Instagram\0icon\x1f~/OneDrive/Documentos/Configuraciones/Iconos/instagram.ico"
linkedin="Linkedin\0icon\x1f~/OneDrive/Documentos/Configuraciones/Iconos/linkedin.ico"
mercadolibre="Mercado Libre\0icon\x1f~/OneDrive/Documentos/Configuraciones/Iconos/mercado.ico"
partquest="PartQuest\0icon\x1f~/OneDrive/Documentos/Configuraciones/Iconos/partquest.ico"
paypal="Paypal\0icon\x1f~/OneDrive/Documentos/Configuraciones/Iconos/paypal.ico"
spotify="Spotify\0icon\x1f~/OneDrive/Documentos/Configuraciones/Iconos/spotify.ico"
tinkercad="Tinkercad\0icon\x1f~/OneDrive/Documentos/Configuraciones/Iconos/Tinker.ico"
twitter="Twitter\0icon\x1fweb-twitter"
whatsapp="Whatsapp\0icon\x1fwhatsapp"
youtube="Youtube\0icon\x1fyoutube"

rofi_cmd(){
	rofi -dmenu -p "Browser menu" -theme $dir/"$theme".rasi
}

run_rofi() {
  echo -en "$canva\n$deviantart\n$drive\n$facebook\n$github\n$instagram\n$linkedin\n$mercadolibre\n$partquest\n$paypal\n$spotify\n$tinkercad\n$twitter\n$whatsapp\n$youtube" | rofi_cmd
}

chosen="$(run_rofi)"
case $chosen in
	"Canva")
		brave --app=https://www.canva.com/
		;;
	"Deviantart")
		brave --app=https://www.deviantart.com/
		;;
	"One Drive")
		brave --app=https://onedrive.live.com/
		;;
	"Facebook")
		brave --app=https://www.facebook.com/
		;;
	"Github")
		brave --app=https://github.com
		;;
	"Instagram")
		brave --app=https://www.instagram.com/
		;;
	"Linkedin")
		brave --app=https://www.linkedin.com/feed/
		;;
	"Mercado Libre")
		brave --app=https://www.mercadolibre.com.mx/
		;;
	"PartQuest")
		brave --app=https://us-east-1.app.portal.partquest.com/
		;;
	"Paypal")
		brave --app=https://www.paypal.com/mx/home
		;;
	"Spotify")
		brave --app=https://open.spotify.com/
		;;
	"Tinkercad")
		brave --app=https://www.tinkercad.com/
		;;
	"Twitter")
		brave --app=https://twitter.com/
		;;
	"Whatsapp")
		brave --app=https://web.whatsapp.com/
		;;
	"Youtube")
		brave --app=https://www.youtube.com/
		;;
esac
