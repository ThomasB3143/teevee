# Maintainer: Thomas Blair <https://github.com/ThomasB3143>

pkgname=telly
pkgver=0.1.0
pkgrel=1
pkgdesc="Single-button cyclic launcher using dunst notifications"
arch=('any')
url="https://github.com/yourusername/telly"
license=('MIT')
depends=('bash' 'dunst')
source=("telly-${pkgver}.tar.gz::https://github.com/ThomasB3143/telly/archive/v${pkgver}.tar.gz")
sha256sums=('SKIP')

package() {
    cd "${srcdir}/${pkgname}-${pkgver}"

    # Main executable
    install -Dm755 telly "${pkgdir}/usr/bin/telly"

    # Library files
    install -d "${pkgdir}/usr/share/telly/lib"
    install -m644 lib/*.sh "${pkgdir}/usr/share/telly/lib/"2
}
