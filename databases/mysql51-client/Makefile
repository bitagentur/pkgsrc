# $NetBSD: Makefile,v 1.11 2013/02/06 23:20:56 jperkin Exp $

PKGNAME=	${DISTNAME:S/-/-client-/}
PKGREVISION=	1
SVR4_PKGNAME=	mysqc
COMMENT=	MySQL 5, a free SQL database (client)

CONFLICTS=		{mysql-client-[0-9]*,mysql3-client-[0-9]*}

.include "Makefile.common"

CONFIGURE_ARGS+=	--without-server
UNWRAP_FILES+=		scripts/mysql_config
INFO_FILES=		yes

AUTO_MKDIRS=	yes

REPLACE_PERL=	scripts/mysql_convert_table_format.sh \
		scripts/mysql_find_rows.sh \
		scripts/mysql_fix_extensions.sh \
		scripts/mysql_fix_privilege_tables.sh \
		scripts/mysql_setpermission.sh \
		scripts/mysql_zap.sh \
		scripts/mysqlaccess.sh \
		scripts/mysqldumpslow.sh \
		scripts/mysqlhotcopy.sh

post-install:
	cd ${WRKSRC}; for f in mysql.info mysql.info-[0-9]*; do		\
		${TEST} ! -f "$$f" ||					\
		${INSTALL_DATA} "$$f" ${DESTDIR}${PREFIX}/${PKGINFODIR};\
	done
.for f in huge large innodb-heavy-4G small medium
	${INSTALL_DATA} ${WRKSRC}/support-files/my-${f}.cnf.sh \
		${DESTDIR}${PREFIX}/share/examples/mysql/my-${f}.cnf
.endfor

.include "../../devel/readline/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
