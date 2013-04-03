# $NetBSD: hacks.mk,v 1.9 2013/03/18 14:01:24 jperkin Exp $

.if !defined(GLIB2_HACKS_MK)
GLIB2_HACKS_MK=	# defined

# Build without optimization. Avoids crash in libgobject on gtk2
# initialization. Bug is triggered regardless of whether we're using gcc or
# aCC.
.if !empty(MACHINE_PLATFORM:MHPUX-*-hppa)
PKG_HACKS+=	hppa-codegen
CFLAGS:=	-O0 ${CFLAGS:C/[+,-]O[0-9]?//g}
.endif

.if ${OPSYS} == "Darwin"
CHECK_BUILTIN.libiconv:=	yes
.  include "../../converters/libiconv/builtin.mk"
CHECK_BUILTIN.libiconv:=	no
.  if !empty(USE_BUILTIN.iconv:M[Yy][Ee][Ss])
PKG_HACKS+=		darwin-iconv
SUBST_CLASSES+=		iconv
SUBST_STAGE.iconv=	pre-configure
SUBST_MESSAGE.iconv=	Changing libiconv_open to iconv_open.
SUBST_FILES.iconv=	configure
SUBST_SED.iconv=	-e 's,libiconv_open,iconv_open,g'
.  endif
.endif

# Work around unresolved symbol g_test_config_vars during build
.include "../../mk/compiler.mk"
.if !empty(PKGSRC_COMPILER:Msunpro)
PKG_HACKS+=		sunpro-visibility
CONFIGURE_ARGS+=	--disable-visibility
.endif

# Solaris libelf in 32-bit mode does not support largefile
#.if ${OBJECT_FMT} == "ELF" && ${OPSYS} == "SunOS" && ${ABI} == 32
#PKG_HACKS+=		solaris-libelf
#SUBST_CLASSES+=		libelf
#SUBST_STAGE.libelf=	pre-build
#SUBST_MESSAGE.libelf=	Fixing Solaris 32-bit libelf support
#SUBST_FILES.libelf=	gio/Makefile
#SUBST_SED.libelf=	-e "/^gresource_CPPFLAGS/s/$$/ -D_FILE_OFFSET_BITS=32/"
#.endif

.endif
