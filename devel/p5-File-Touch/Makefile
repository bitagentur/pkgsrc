# $NetBSD: Makefile,v 1.5 2012/10/31 11:18:14 asau Exp $
#

DISTNAME=	File-Touch-0.08
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	3
CATEGORIES=	devel perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=File/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/File-Touch/
COMMENT=	Perl 5 module to "touch" files

USE_LANGUAGES=		# empty

PERL5_PACKLIST=	auto/File/Touch/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
