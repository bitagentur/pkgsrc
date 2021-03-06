# $NetBSD: Makefile,v 1.9 2013/02/27 15:19:02 ryoon Exp $

OIIOVER=	1.1.7
DISTNAME=	oiio-Release-${OIIOVER}
PKGNAME=	${DISTNAME:S/oiio-Release/openimageio/}
CATEGORIES=	graphics
MASTER_SITES=	-https://github.com/OpenImageIO/oiio/archive/Release-${OIIOVER}.tar.gz
FETCH_USING=	curl

MAINTAINER=	ryoon@NetBSD.org
HOMEPAGE=	https://sites.google.com/site/openimageio/
COMMENT=	OpenImageIO is a library for reading and writing images
LICENSE=	modified-bsd

WRKSRC=		${WRKDIR}/${DISTNAME}/src

USE_CMAKE=		yes
USE_LANGUAGES=		c c++
USE_TOOLS+=		gmake

CXXFLAGS+=		-std=c++0x

CMAKE_ARGS+=		-DILMBASE_HOME:STRING=${BUILDLINK_PREFIX.ilmbase}
CMAKE_ARGS+=		-DOPENJPEG_HOME:STRING=${BUILDLINK_PREFIX.openjpeg15}
CMAKE_ARGS+=		-DOPENEXR_HOME:STRING=${BUILDLINK_PREFIX.openexr}

post-patch:
	${RM} -f ${WRKSRC}/include/tbb/tbb_machine.h.orig
	${RM} -f ${WRKSRC}/include/tbb/tbb_misc.h.orig

.include "../../devel/boost-libs/buildlink3.mk"
.include "../../devel/hdf5/buildlink3.mk"
.include "../../graphics/freetype2/buildlink3.mk"
.include "../../graphics/glew/buildlink3.mk"
.include "../../graphics/ilmbase/buildlink3.mk"
.include "../../graphics/libwebp/buildlink3.mk"
.include "../../graphics/opencv/buildlink3.mk"
.include "../../graphics/openjpeg15/buildlink3.mk"
.include "../../graphics/openexr/buildlink3.mk"
.include "../../graphics/tiff/buildlink3.mk"
.include "../../x11/qt4-libs/buildlink3.mk"
BUILDLINK_DEPMETHOD.qt4-tools=	build
.include "../../x11/qt4-tools/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
