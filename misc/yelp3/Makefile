# $NetBSD: Makefile,v 1.16 2013/02/16 11:23:29 wiz Exp $
#

DISTNAME=		yelp-3.6.1
PKGREVISION=		2
CATEGORIES=		misc gnome
MASTER_SITES=		${MASTER_SITE_GNOME:=sources/yelp/3.6/}
EXTRACT_SUFX=		.tar.xz

MAINTAINER=		prlw1@cam.ac.uk
HOMEPAGE=		http://www.gnome.org/
COMMENT=		Mallard capable help browser
LICENSE=		gnu-gpl-v2

USE_TOOLS+=		gmake intltool msgfmt pkg-config
USE_LIBTOOL=		yes
USE_PKGLOCALEDIR=	yes
GNU_CONFIGURE=		yes

BUILD_DEPENDS+=		itstool-[0-9]*:../../textproc/itstool

BUILDLINK_API_DEPENDS.libxslt+=	libxslt>=1.1.4

.include "../../archivers/bzip2/buildlink3.mk"
.include "../../devel/glib2/schemas.mk"
.include "../../x11/gtk3/buildlink3.mk"
.include "../../textproc/libxml2/buildlink3.mk"
.include "../../textproc/libxslt/buildlink3.mk"
.include "../../databases/sqlite3/buildlink3.mk"
.include "../../www/webkit-gtk3/buildlink3.mk"
.include "../../textproc/yelp-xsl/buildlink3.mk"

.include "../../sysutils/desktop-file-utils/desktopdb.mk"

.include "../../mk/bsd.pkg.mk"
