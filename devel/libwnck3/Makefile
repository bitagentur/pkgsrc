# $NetBSD: Makefile,v 1.3 2013/02/16 11:18:24 wiz Exp $
#

DISTNAME=	libwnck-3.4.3
PKGNAME=	${DISTNAME:S/libwnck/libwnck3/}
PKGREVISION=	1
CATEGORIES=	devel x11 gnome
MASTER_SITES=	${MASTER_SITE_GNOME:=sources/libwnck/3.4/}
EXTRACT_SUFX=	.tar.xz

MAINTAINER=	prlw1@cam.ac.uk
HOMEPAGE=	http://www.gnome.org/
COMMENT=	Library to write pagers and tasklists
LICENSE=	gnu-lgpl-v2

GNU_CONFIGURE=		yes
USE_PKGLOCALEDIR=	yes
USE_TOOLS+=		gmake intltool msgfmt pkg-config
USE_LIBTOOL=		yes

PKGCONFIG_OVERRIDE=	libwnck-3.0.pc.in

# wnckutils conflict with devel/libwnck, but also probably aren't used
CONFIGURE_ARGS+=	--disable-tools

.include "../../devel/gettext-lib/buildlink3.mk"
.include "../../devel/glib2/buildlink3.mk"
.include "../../devel/gobject-introspection/buildlink3.mk"
.include "../../textproc/gtk-doc/buildlink3.mk"
.include "../../x11/startup-notification/buildlink3.mk"
.include "../../x11/gtk3/buildlink3.mk"
.include "../../x11/libXres/buildlink3.mk"
.include "../../x11/libX11/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
