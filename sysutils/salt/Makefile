# $NetBSD: Makefile,v 1.11 2013/04/28 09:46:24 imil Exp $
#

DISTNAME=	salt-0.14.1
CATEGORIES=	sysutils
MASTER_SITES=	http://pypi.python.org/packages/source/s/salt/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://saltstack.org/
COMMENT=	Remote execution and configuration management system
LICENSE=	apache-2.0

SUBST_CLASSES+=		fix-paths
SUBST_STAGE.fix-paths=	post-patch
SUBST_MESSAGE.fix-paths=Fixing directory paths.
SUBST_FILES.fix-paths+=	conf/*
SUBST_FILES.fix-paths+=	doc/man/*
SUBST_FILES.fix-paths+=	salt/client.py
SUBST_FILES.fix-paths+=	salt/config.py
SUBST_FILES.fix-paths+=	salt/modules/mysql.py
SUBST_FILES.fix-paths+=	salt/modules/postgres.py
SUBST_FILES.fix-paths+=	salt/modules/tls.py
SUBST_FILES.fix-paths+=	salt/utils/parsers.py
SUBST_FILES.fix-paths+=	salt/utils/migrations.py
SUBST_SED.fix-paths+=	-e "s|/etc/salt|${PKG_SYSCONFDIR}|g"

PKG_SYSCONFSUBDIR=	salt

EGDIR=		${PREFIX}/share/examples/salt
INSTALLATION_DIRS+= ${EGDIR}
CONF_FILES+=	${EGDIR}/master ${PKG_SYSCONFDIR}/master
CONF_FILES+=	${EGDIR}/minion ${PKG_SYSCONFDIR}/minion

RCD_SCRIPTS+=	salt_master salt_minion

post-install:
	${INSTALL_DATA} ${WRKSRC}/conf/master ${DESTDIR}${EGDIR}/
	${INSTALL_DATA} ${WRKSRC}/conf/minion ${DESTDIR}${EGDIR}/

# Dependencies are documented at
# http://docs.saltstack.org/en/latest/topics/installation/index.html#dependencies
# Jinja2 is documented as an optional dependency, but it's small so we
# include it unconditionally.
#
# There's also an optional dependency on gcc, for Cython support, but
# we don't bother with that here.
#
.include "../../lang/python/distutils.mk"
DEPENDS+= zeromq>=2.1.9:../../net/zeromq
DEPENDS+= ${PYPKGPREFIX}-zmq>=2.1.9:../../net/py-zmq
DEPENDS+= ${PYPKGPREFIX}-m2crypto-[0-9]*:../../security/py-m2crypto
DEPENDS+= ${PYPKGPREFIX}-crypto-[0-9]*:../../security/py-crypto
DEPENDS+= ${PYPKGPREFIX}-msgpack-[0-9]*:../../devel/py-msgpack
DEPENDS+= ${PYPKGPREFIX}-yaml-[0-9]*:../../textproc/py-yaml
DEPENDS+= ${PYPKGPREFIX}-jinja2-[0-9]*:../../textproc/py-jinja2

.include "../../mk/bsd.pkg.mk"
