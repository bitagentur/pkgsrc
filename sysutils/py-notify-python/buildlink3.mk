# $NetBSD: buildlink3.mk,v 1.1 2013/04/29 13:23:59 ryoon Exp $

BUILDLINK_TREE+=	py-notify

.if !defined(PY_NOTIFY_BUILDLINK3_MK)
PY_NOTIFY_BUILDLINK3_MK:=

.include "../../lang/python/pyversion.mk"

BUILDLINK_API_DEPENDS.py-notify+=	${PYPKGPREFIX}-notify>=0.1.1
BUILDLINK_ABI_DEPENDS.py-notify+=	${PYPKGPREFIX}-notify>=0.1.1nb17
BUILDLINK_PKGSRCDIR.py-notify?=	../../sysutils/py-notify

.include "../../x11/py-gtk2/buildlink3.mk"
.endif # PY_NOTIFY_BUILDLINK3_MK

BUILDLINK_TREE+=	-py-notify
