# $NetBSD: Makefile,v 1.1 2013/04/03 11:13:10 markd Exp $

DISTNAME=	kscd-${_KDE_VERSION}
CATEGORIES=	multimedia
COMMENT=	KDE CD player

.include "../../meta-pkgs/kde4/Makefile.kde4"

.include "../../mk/bsd.prefs.mk"
.include "options.mk"

.include "../../meta-pkgs/kde4/kde4.mk"

.include "../../audio/libmusicbrainz/buildlink3.mk"
.include "../../graphics/hicolor-icon-theme/buildlink3.mk"
.include "../../sysutils/desktop-file-utils/desktopdb.mk"
.include "../../x11/kdelibs4/buildlink3.mk"

.include "../../mk/bsd.pkg.mk"
