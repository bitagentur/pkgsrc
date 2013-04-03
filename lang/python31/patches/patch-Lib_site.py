$NetBSD$

Support multiarch site-packages.

--- Lib/site.py.orig	2012-04-09 23:25:35.000000000 +0000
+++ Lib/site.py	2012-12-13 12:17:13.015708989 +0000
@@ -272,9 +272,13 @@
         if sys.platform in ('os2emx', 'riscos'):
             sitedirs.append(os.path.join(prefix, "Lib", "site-packages"))
         elif os.sep == '/':
+            if sys.maxsize > 2**32:
+                libarchsuffix = "@LIBARCHSUFFIX.64@".lstrip('/')
+            else:
+                libarchsuffix = "@LIBARCHSUFFIX.32@".lstrip('/')
             sitedirs.append(os.path.join(prefix, "lib",
                                         "python" + sys.version[:3],
-                                        "site-packages"))
+                                        "site-packages", libarchsuffix).rstrip('/'))
             sitedirs.append(os.path.join(prefix, "lib", "site-python"))
         else:
             sitedirs.append(prefix)
