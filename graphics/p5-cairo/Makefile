# $NetBSD: Makefile,v 1.20 2013/02/16 11:19:36 wiz Exp $
#

DISTNAME=	Cairo-${DIST_VER}
PKGNAME=	p5-cairo-${DIST_VER}
PKGREVISION=	5
CATEGORIES=	graphics
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=gtk2-perl/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://gtk2-perl.sourceforge.net/
COMMENT=	Perl bindings to the cairo graphics library
LICENSE=	gnu-lgpl-v2.1

USE_TOOLS+=	pkg-config

DIST_VER=	1.062

DEPENDS+=	p5-ExtUtils-Depends>=0.2:../../devel/p5-ExtUtils-Depends
DEPENDS+=	p5-ExtUtils-PkgConfig>=1:../../devel/p5-ExtUtils-PkgConfig

PERL5_PACKLIST=	auto/Cairo/.packlist

.include "../../graphics/cairo/buildlink3.mk"
.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
