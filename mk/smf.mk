# $NetBSD$
#

.if !defined(SMF_MK)
SMF_MK=				# defined

# SMFBASE provides a tree of category/package directories
SMFBASE?=			# none

# Directory to hold the SMF manifest/method files
PKG_SMF_DIR?=			share/smf

# Variables that can be overriden by the user on a package by package basis
SMF_NAME.${PKGBASE}?=		${PKGBASE:tl}
SMF_INSTANCE.${PKGBASE}?=	default
SMF_MANIFEST.${PKGBASE}?=	manifest.xml
SMF_METHOD.${PKGBASE}?=		method
SMF_USER.${PKGBASE}?=		${ROOT_USER}
SMF_GROUP.${PKGBASE}?=		${ROOT_GROUP}
SMF_HOME.${PKGBASE}?=		# empty

SMF_NAME=			${SMF_NAME.${PKGBASE}}
SMF_INSTANCE=			${SMF_INSTANCE.${PKGBASE}}
SMF_MANIFEST=			${SMF_MANIFEST.${PKGBASE}}
SMF_METHOD=			${SMF_METHOD.${PKGBASE}}
SMF_MANIFEST_FILE=		${PKG_SMF_DIR}/${PKGBASE}/${SMF_MANIFEST}
SMF_METHOD_FILE=		${PKG_SMF_DIR}/${PKGBASE}/${SMF_METHOD}
SMF_USER=			${SMF_USER.${PKGBASE}}
SMF_GROUP=			${SMF_GROUP.${PKGBASE}}
SMF_HOME=			${SMF_HOME.${PKGBASE}}

SMF_MANIFEST_SRC_DEFAULT=	${SMFBASE}/${PKGPATH}/${SMF_MANIFEST}
SMF_METHOD_SRC_DEFAULT=		${SMFBASE}/${PKGPATH}/${SMF_METHOD}

# A manifest file is a pre-requisite for anything to happen
.if exists(${SMF_MANIFEST_SRC_DEFAULT}) || defined(SMF_MANIFEST_SRC)
SMF_MANIFEST_SRC?=		${SMF_MANIFEST_SRC_DEFAULT}

SMF_TARGETS+=			${DESTDIR}${PREFIX}/${SMF_MANIFEST_FILE}

INSTALLATION_DIRS+=		${PKG_SMF_DIR}/${PKGBASE}
GENERATE_PLIST+=		${ECHO} "${SMF_MANIFEST_FILE}";

FILES_SUBST+=			PKGMANDIR=${PKGMANDIR}
FILES_SUBST+=   		SMF_NAME=${SMF_NAME}
FILES_SUBST+=			SMF_INSTANCE=${SMF_INSTANCE}
FILES_SUBST+=   		SMF_MANIFEST=${SMF_MANIFEST}
FILES_SUBST+=   		SMF_METHOD=${SMF_METHOD}
FILES_SUBST+=   		SMF_MANIFEST_FILE=${SMF_MANIFEST_FILE}
FILES_SUBST+=   		SMF_METHOD_FILE=${SMF_METHOD_FILE}
FILES_SUBST+=   		SMF_USER=${SMF_USER}
FILES_SUBST+=  			SMF_GROUP=${SMF_GROUP}
FILES_SUBST+=			SMF_HOME=${SMF_HOME}

# Target to add the INSTALL script to auto-import SMF manifest using svccfg
${WRKDIR}/.smfinstall: ${PKGSRCDIR}/mk/install/install-smf
	${CP} ${PKGSRCDIR}/mk/install/install-smf ${WRKDIR}/.smfinstall

INSTALL_TEMPLATES+=		${WRKDIR}/.smfinstall

# Target to install the SMF manifest
${DESTDIR}${PREFIX}/${SMF_MANIFEST_FILE}: ${SMF_MANIFEST_SRC}
	@${SED} ${FILES_SUBST_SED} ${SMF_MANIFEST_SRC} > ${WRKDIR}/.smf_${SMF_MANIFEST}
	${INSTALL_DATA} ${WRKDIR}/.smf_${SMF_MANIFEST} ${DESTDIR}${PREFIX}/${SMF_MANIFEST_FILE}

# A method script file is not required
.if exists(${SMF_METHOD_SRC_DEFAULT}) || defined(SMF_METHOD_SRC)
SMF_METHOD_SRC?=		${SMF_METHOD_SRC_DEFAULT}

SMF_TARGETS+=			${DESTDIR}${PREFIX}/${SMF_METHOD_FILE}
GENERATE_PLIST+=		${ECHO} "${SMF_METHOD_FILE}";

# Target to install the SMF method script
${DESTDIR}${PREFIX}/${SMF_METHOD_FILE}:
	${SED} ${FILES_SUBST_SED} ${SMF_METHOD_SRC} > ${WRKDIR}/.smf_${SMF_METHOD}
	${INSTALL_SCRIPT} ${WRKDIR}/.smf_${SMF_METHOD} ${DESTDIR}${PREFIX}/${SMF_METHOD_FILE}
.endif

post-install-smf-message:
	@${STEP_MSG} "Generating SMF manifest/method files for ${PKGNAME}"

post-install-smf: post-install-smf-message ${SMF_TARGETS}
.endif
.endif
