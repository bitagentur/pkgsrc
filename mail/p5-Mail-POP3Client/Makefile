# $NetBSD: Makefile,v 1.1 2013/04/21 12:44:07 ryoon Exp $
#

DISTNAME=	Mail-POP3Client-2.18
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	mail
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Mail/}

MAINTAINER=	ryoon@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/Mail-POP3Client/
COMMENT=	Perl 5 module to talk to a POP3 (RFC1939) server

PERL5_PACKLIST=	auto/Mail/POP3Client/.packlist
USE_LANGUAGES=	# none

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
