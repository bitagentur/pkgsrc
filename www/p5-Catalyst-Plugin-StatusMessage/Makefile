# $NetBSD: Makefile,v 1.3 2012/10/28 06:30:34 asau Exp $

DISTNAME=	Catalyst-Plugin-StatusMessage-0.003000
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	1
CATEGORIES=	www perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Catalyst/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/Catalyst-Plugin-StatusMessage/
COMMENT=	Handle passing of status messages between screens of a web application
LICENSE=	${PERL5_LICENSE}

DEPENDS+=	p5-Catalyst-Runtime>=5.71001:../../www/p5-Catalyst-Runtime

USE_LANGUAGES=		# empty
PERL5_PACKLIST=		auto/Catalyst/Plugin/StatusMessage/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
