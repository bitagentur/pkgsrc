# $NetBSD: Makefile,v 1.13 2012/10/31 11:18:05 asau Exp $

DISTNAME=	Event-RPC-1.01
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	7
CATEGORIES=	devel
MASTER_SITES=	http://www.exit1.org/packages/Event-RPC/dist/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.exit1.org/Event-RPC/
#HOMEPAGE=	http://search.cpan.org/dist/Event-RPC/
COMMENT=	Event based transparent Client/Server RPC framework
LICENSE=	${PERL5_LICENSE}

DEPENDS+=	p5-Event-[0-9]*:../../devel/p5-Event
DEPENDS+=	p5-IO-Socket-SSL-[0-9]*:../../security/p5-IO-Socket-SSL
DEPENDS+=	p5-Net-SSLeay-[0-9]*:../../security/p5-Net-SSLeay

PERL5_PACKLIST=		auto/Event/RPC/.packlist

.include "../../devel/p5-glib2/buildlink3.mk"
.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
