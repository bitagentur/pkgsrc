# $NetBSD: Makefile,v 1.5 2007/07/29 05:18:55 jlam Exp $

DISTNAME=	suse_locale-${SUSE_VERSION}
PKGREVISION=	2
CATEGORIES=	emulators
DISTFILES=	glibc-locale-2.3.5-40.${SUSE_ARCH}.rpm

CONFLICTS=	linux-locale-[0-9]*

MAINTAINER=	tonio@NetBSD.org
COMMENT=	Linux compatibility package with locale files

EMUL_MODULES.linux=	base

.include "../../emulators/suse100_linux/Makefile.common"
.include "../../mk/bsd.pkg.mk"
