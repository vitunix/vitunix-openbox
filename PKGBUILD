####################################################################################
#     >>  Maintained by team Vitunix (https://github.com/vitunix)  <<              #
#             >> A Simple and lightweight Arch based distro <<                     #
#             -----> Mail us at (vitunix@proton.me) <-----                         #
#     ----> configured by heapbytes (https://github.com/heapbytes) <-----          #
####################################################################################
#
# Developer: G0urav <https://github.com/heapbytes>
# Developer: Mayur <https://github.com/bashlogs>
#

pkgname=vitunix-openbox
pkgver=1.0
pkgrel=1
pkgdesc="Openbox config for Vitunix"
arch=('any')
url="https://github.com/vitunix/vitunix-openbox"
license=('GPL3')
install=${pkgname}.install

depends=(
	'openbox' 'thunar' 'kitty' 'neovim' 'xdo'
	'rofi' 'polybar' 'feh' 'ksuperkey' 'betterlockscreen'
	'xfce4-power-manager' 'xsettingsd' 'xorg-xsetroot'
	'wmname' 'vlc' 'mplayer' 'lxappearance-obconf' 'lxappearance' 
  'xfce4-terminal' 'parcellite'
)

prepare() {

	cp -af ../config/. ${srcdir}

}

package() {

	local config_dir=${pkgdir}/etc/skel/.config
	local openbox_dir=${config_dir}/openbox

	mkdir -p "$config_dir" "$openbox_dir" 

  	cp -r ${srcdir}/*	"$config_dir"

	#chmod +x "$vitunix_dir"/*.sh

	install -Dm 755 ${srcdir}/openbox/autostart.sh   			"$openbox_dir"/autostart.sh
	install -Dm 644 ${srcdir}/openbox/menu.xml       			"$openbox_dir"/menu.xml
	install -Dm 644 ${srcdir}/openbox/rc.xml   			      	"$openbox_dir"/rc.xml
	
}
