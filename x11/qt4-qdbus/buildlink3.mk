# $NetBSD: buildlink3.mk,v 1.21 2013/02/16 11:19:44 wiz Exp $

BUILDLINK_TREE+=	qt4-qdbus

.if !defined(QT4_QDBUS_BUILDLINK3_MK)
QT4_QDBUS_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.qt4-qdbus+=	qt4-qdbus>=4.3.2
BUILDLINK_ABI_DEPENDS.qt4-qdbus+=	qt4-qdbus>=4.8.4nb2
BUILDLINK_PKGSRCDIR.qt4-qdbus?=	../../x11/qt4-qdbus

.include "../../x11/qt4-libs/buildlink3.mk"
.include "../../sysutils/dbus/buildlink3.mk"
.endif # QT4_QDBUS_BUILDLINK3_MK

BUILDLINK_TREE+=	-qt4-qdbus
