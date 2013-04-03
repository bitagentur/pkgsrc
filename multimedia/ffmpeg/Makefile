# $NetBSD: Makefile,v 1.104 2013/03/17 15:18:11 wiz Exp $

PKGNAME=	ffmpeg-20130315.${DISTVERSION}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://ffmpeg.mplayerhq.hu/
COMMENT=	Decoding, encoding and streaming software

CONFIGURE_ARGS+=	--enable-avfilter
#CONFIGURE_ARGS+=	--enable-avfilter-lavf
CONFIGURE_ARGS+=	--enable-postproc

INSTALLATION_DIRS=	lib share/examples/ffmpeg share/doc/ffmpeg

CONF_FILES+=	${PREFIX}/share/examples/ffmpeg/ffserver.conf \
		${PKG_SYSCONFDIR}/ffserver.conf

# Needs to come before bsd.prefs.mk or compiler.mk, USE_LIBTOOL is set too late.
USE_GCC_RUNTIME=	yes

.include "../../mk/bsd.prefs.mk"

.if !empty(MACHINE_PLATFORM:MDarwin-*-i386) \
 || !empty(MACHINE_PLATFORM:MSunOS-*-i386)
CONFIGURE_ARGS+=	--disable-asm
.endif

TEST_TARGET=	check

.include "options.mk"

FFTOOLS=	cws2fws graph2dot pktdumper
FFTOOLS+=	probetest qt-faststart trasher

post-install:
	${INSTALL_DATA} ${WRKSRC}/doc/*.txt \
		${DESTDIR}${PREFIX}/share/doc/ffmpeg
	${INSTALL_DATA} ${WRKSRC}/doc/ffserver.conf \
		${DESTDIR}${PREFIX}/share/examples/ffmpeg
.if !empty(PKG_OPTIONS:Mtools)
.  for tool in ${FFTOOLS}
	${INSTALL_PROGRAM} ${WRKSRC}/tools/${tool} ${DESTDIR}${PREFIX}/bin
.  endfor
.endif

.include "../../mk/compiler.mk"

.if !empty(PKGSRC_COMPILER:Mclang)
CFLAGS+=	-no-integrated-as
.endif

.include "../../multimedia/ffmpeg/Makefile.common"
