# $NetBSD: Makefile,v 1.13 2012/10/28 06:30:45 asau Exp $

DISTNAME=	Kwiki-PreformattedBlocks-0.11
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	5
CATEGORIES=	www perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Kwiki/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.kwiki.org/
COMMENT=	Kwiki plugin to display preformatted text

DEPENDS+=	p5-Kwiki>=0.34:../../www/p5-Kwiki

PERL5_PACKLIST=	auto/Kwiki/PreformattedBlocks/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
