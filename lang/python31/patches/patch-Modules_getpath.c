$NetBSD$

Multiarch support.

--- Modules/getpath.c.orig	2012-04-09 23:25:36.000000000 +0000
+++ Modules/getpath.c	2012-12-13 12:20:01.632324807 +0000
@@ -120,7 +120,7 @@
 
 #ifndef PYTHONPATH
 #define PYTHONPATH PREFIX "/lib/python" VERSION ":" \
-              EXEC_PREFIX "/lib/python" VERSION "/lib-dynload"
+              EXEC_PREFIX "/lib/python" VERSION "/lib-dynload@LIBARCHSUFFIX@"
 #endif
 
 #ifndef LANDMARK
@@ -399,7 +399,7 @@
         else
             wcsncpy(exec_prefix, home, MAXPATHLEN);
         joinpath(exec_prefix, lib_python);
-        joinpath(exec_prefix, L"lib-dynload");
+        joinpath(exec_prefix, L"lib-dynload@LIBARCHSUFFIX@");
         return 1;
     }
 
@@ -416,7 +416,7 @@
     do {
         n = wcslen(exec_prefix);
         joinpath(exec_prefix, lib_python);
-        joinpath(exec_prefix, L"lib-dynload");
+        joinpath(exec_prefix, L"lib-dynload@LIBARCHSUFFIX@");
         if (isdir(exec_prefix))
             return 1;
         exec_prefix[n] = L'\0';
@@ -426,7 +426,7 @@
     /* Look at configure's EXEC_PREFIX */
     wcsncpy(exec_prefix, L"" EXEC_PREFIX, MAXPATHLEN);
     joinpath(exec_prefix, lib_python);
-    joinpath(exec_prefix, L"lib-dynload");
+    joinpath(exec_prefix, L"lib-dynload@LIBARCHSUFFIX@");
     if (isdir(exec_prefix))
         return 1;
 
@@ -452,6 +452,7 @@
     wchar_t *prog = Py_GetProgramName();
     wchar_t argv0_path[MAXPATHLEN+1];
     wchar_t zip_path[MAXPATHLEN+1];
+    char *libarchsuffix = "@LIBARCHSUFFIX@";
     int pfound, efound; /* 1 if found; -1 if found build directory */
     wchar_t *buf;
     size_t bufsz;
@@ -622,7 +623,7 @@
             fprintf(stderr,
                 "Could not find platform dependent libraries <exec_prefix>\n");
         wcsncpy(exec_prefix, L"" EXEC_PREFIX, MAXPATHLEN);
-        joinpath(exec_prefix, L"lib/lib-dynload");
+        joinpath(exec_prefix, L"lib/lib-dynload@LIBARCHSUFFIX@");
     }
     /* If we found EXEC_PREFIX do *not* reduce it!  (Yet.) */
 
@@ -739,6 +740,11 @@
         reduce(exec_prefix);
         reduce(exec_prefix);
         reduce(exec_prefix);
+        for (; *libarchsuffix != '\0'; *libarchsuffix++) {
+            if (*libarchsuffix == '/') {
+                reduce(exec_prefix);
+            }
+        }
         if (!exec_prefix[0])
                 wcscpy(exec_prefix, separator);
     }
