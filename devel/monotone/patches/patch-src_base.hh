$NetBSD$

Fix for GCC 4.7.
--- src/base.hh.orig	2011-03-26 06:40:58.000000000 +0000
+++ src/base.hh
@@ -31,6 +31,7 @@
 
 #include <iosfwd>
 #include <string>  // it would be nice if there were a <stringfwd>
+#include "unistd.h"
 
 // s32, u64, etc
 #include "numeric_vocab.hh"
