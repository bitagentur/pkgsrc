# $NetBSD: Makefile,v 1.30 2013/04/05 11:10:12 rodent Exp $
#

DISTNAME=	py-notify-0.2.1
PKGNAME=	${DISTNAME:S/py/${PYPKGPREFIX}/1}
CATEGORIES=	sysutils
MASTER_SITES= 	http://download.gna.org/py-notify/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://home.gna.org/py-notify/
COMMENT=	Python bindings for libnotify
LICENSE=	gnu-lgpl-v2.1

PYDISTUTILSPKG=	yes

.include "../../lang/python/extension.mk"
.include "../../x11/py-gtk2/buildlink3.mk"
.include "../../sysutils/libnotify/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
