# $NetBSD: Makefile,v 1.39 2013/04/22 17:18:00 drochner Exp $

VERSION_DATE=	2013.04.11
DISTNAME=	youtube-dl
PKGNAME=	youtube-dl-${VERSION_DATE:S/.//g}
CATEGORIES=	net
MASTER_SITES=	http://youtube-dl.org/downloads/2013.04.11/
EXTRACT_SUFX=	# none
DIST_SUBDIR=	${PKGNAME_NOREV}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://rg3.github.com/youtube-dl/
COMMENT=	Download videos from youtube.com
LICENSE=	public-domain

USE_LANGUAGES=			# none
NO_BUILD=			yes
WRKSRC=				${WRKDIR}

INSTALLATION_DIRS=	bin

REPLACE_PYTHON+=	${DISTNAME}

.include "../../mk/bsd.prefs.mk"

# Force using "curl" for fetching the distribution file. It is only available
# over HTTPS and "curl" is the only fetch program which always supports HTTPS.
FETCH_USING=	curl

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/${DISTNAME} \
	  ${DESTDIR}${PREFIX}/bin/youtube-dl

.include "../../lang/python/application.mk"
.include "../../mk/bsd.pkg.mk"
