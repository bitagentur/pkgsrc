# $NetBSD: Makefile,v 1.10 2012/12/01 11:51:01 wen Exp $
#

DISTNAME=		Test-Weaken-3.022000
PKGNAME=		p5-${DISTNAME:S/020000/020.000/}
CATEGORIES=		devel perl5
MASTER_SITES=		${MASTER_SITE_PERL_CPAN:=Test/}

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		http://search.cpan.org/dist/Test-Weaken/
COMMENT=		Test that freed memory objects were, indeed, freed
LICENSE=		${PERL5_LICENSE}

USE_LANGUAGES=		# empty
PERL5_PACKLIST=		auto/Test/Weaken/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
