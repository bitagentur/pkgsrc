# $NetBSD: Makefile,v 1.8 2012/10/28 06:30:38 asau Exp $

DISTNAME=	HTML-StripScripts-Parser-1.03
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	3
CATEGORIES=	www perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=HTML/}

MAINTAINER=	bouyer@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/HTML-HTML-StripScripts-Parser/
COMMENT=	Perl5 module XSS filter using HTML::Parser
LICENSE=	${PERL5_LICENSE}

DEPENDS+= 	p5-HTML-StripScripts>=1.05:../../www/p5-HTML-StripScripts
DEPENDS+=	p5-HTML-Parser>=3.56:../../www/p5-HTML-Parser

PERL5_PACKLIST=	auto/HTML/StripScripts/Parser/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
