# $NetBSD: Makefile,v 1.5 2012/10/28 06:30:49 asau Exp $

DISTNAME=	Plack-Middleware-JSConcat-0.29
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	3
CATEGORIES=	www perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Plack/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/Plack-Middleware-JSConcat/
COMMENT=	Plack middleware to concatenate javascripts
LICENSE=	${PERL5_LICENSE}

USE_LANGUAGES=	# empty
PERL5_PACKLIST= auto/Plack/Middleware/JSConcat/.packlist

DEPENDS+=	p5-IPC-Run3-[0-9]*:../../devel/p5-IPC-Run3
DEPENDS+=	p5-Plack-[0-9]*:../../www/p5-Plack

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
