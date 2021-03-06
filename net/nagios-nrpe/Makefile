# $NetBSD: Makefile,v 1.18 2013/02/06 23:23:18 jperkin Exp $
#

DISTNAME=		nrpe-2.12
PKGNAME=		nagios-${DISTNAME}
PKGREVISION=		4
CATEGORIES=		net sysutils
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=nagios/}

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		http://sourceforge.net/projects/nagios/
COMMENT=		Nagios remote program execution daemon

.include "../../mk/bsd.prefs.mk"

GNU_CONFIGURE=		yes
USE_TOOLS+=		perl

PKG_SYSCONFSUBDIR=	nagios
CONFIGURE_ARGS+=	--libexecdir=${PREFIX}/libexec/nagios
CONFIGURE_ARGS+=	--sysconfdir=${PKG_SYSCONFDIR:Q}

PKG_GROUPS+=			${NAGIOS_GROUP}
PKG_USERS+=			${NAGIOS_USER}:${NAGIOS_GROUP}
PKG_GECOS.${NAGIOS_USER}=	Nagios Runtime User

PKG_GROUPS_VARS+=	NAGIOS_GROUP
PKG_USERS_VARS+=	NAGIOS_USER

CONFIGURE_ARGS+=	--with-nrpe-user=${NAGIOS_USER:Q}
CONFIGURE_ARGS+=	--with-nrpe-group=${NAGIOS_GROUP:Q}
CONFIGURE_ARGS+=	--with-nagios-user=${NAGIOS_USER:Q}
CONFIGURE_ARGS+=	--with-nagios-group=${NAGIOS_GROUP:Q}

CONF_FILES+=		${PREFIX}/share/examples/nagios/nrpe.cfg ${PKG_SYSCONFDIR}/nrpe.cfg
RCD_SCRIPTS+=		nrpe

INSTALLATION_DIRS=	sbin libexec/nagios share/examples/nagios share/examples/rc.d

.include "options.mk"

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/src/nrpe ${DESTDIR}${PREFIX}/sbin
	${INSTALL_PROGRAM} ${WRKSRC}/src/check_nrpe ${DESTDIR}${PREFIX}/libexec/nagios
	${INSTALL_DATA} ${WRKSRC}/sample-config/nrpe.cfg ${DESTDIR}${PREFIX}/share/examples/nagios
	${INSTALL_SCRIPT} ${WRKDIR}/nrpe ${DESTDIR}${PREFIX}/${RCD_SCRIPTS_EXAMPLEDIR}

.include "../../mk/bsd.pkg.mk"
