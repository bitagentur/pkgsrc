# $NetBSD: Makefile,v 1.1 2013/03/04 22:04:48 khorben Exp $

DISTNAME=	libDatabase-0.0.0
PKGNAME=	deforaos-libdatabase-0.0.0
CATEGORIES=	databases
MASTER_SITES=	http://www.defora.org/os/download/download/4287/

MAINTAINER=	khorben@defora.org
HOMEPAGE=	http://www.defora.org/
COMMENT=	DeforaOS libDatabase

LICENSE=	gnu-gpl-v3

MAKE_FLAGS+=	DESTDIR=${DESTDIR}
MAKE_FLAGS+=	PREFIX=${PREFIX}

.include "../../devel/deforaos-libsystem/buildlink3.mk"
.include "../../mk/pgsql.buildlink3.mk" # this one defines PGSQL_VERSION among others
.include "../../databases/postgresql${PGSQL_VERSION}-client/buildlink3.mk"
.include "../../devel/readline/buildlink3.mk"
.include "../../databases/sqlite/buildlink3.mk"
.include "../../databases/sqlite3/buildlink3.mk"
.include "../../textproc/gtk-doc/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
