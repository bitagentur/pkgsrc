$NetBSD$

On OpenSolaris snv>=77 and Solaris 11, dirfd already defined.
--- port/solaris_bogons.h.orig	2008-02-02 01:30:39.000000000 +0000
+++ port/solaris_bogons.h
@@ -12,8 +12,5 @@
 #define _LARGEFILE_SOURCE 1
 #define _LARGEFILE64_SOURCE 1
 
-/* Need dirfd() */
-#include "dirfd_extras.h"
-
 #endif /* VSF_SOLARIS_BOGONS_H */
 
