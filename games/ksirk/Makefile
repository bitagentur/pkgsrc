# $NetBSD: Makefile,v 1.1 2013/04/03 12:03:41 markd Exp $

DISTNAME=	ksirk-${_KDE_VERSION}
CATEGORIES=	games
COMMENT=	a computerized version of a well known strategy game

.include "../../meta-pkgs/kde4/Makefile.kde4"

.include "../../meta-pkgs/kde4/kde4.mk"

.include "../../games/libkdegames/buildlink3.mk"
.include "../../graphics/hicolor-icon-theme/buildlink3.mk"
.include "../../security/qca2/buildlink3.mk"
.include "../../sysutils/desktop-file-utils/desktopdb.mk"
.include "../../x11/kdelibs4/buildlink3.mk"

.include "../../mk/bsd.pkg.mk"
