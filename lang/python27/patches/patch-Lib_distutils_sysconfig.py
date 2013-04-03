$NetBSD$

Support multiarch.

--- Lib/distutils/sysconfig.py.orig	Mon Apr  9 23:07:29 2012
+++ Lib/distutils/sysconfig.py	Thu Sep 27 12:04:09 2012
@@ -119,7 +119,10 @@
         if standard_lib:
             return libpython
         else:
-            return os.path.join(libpython, "site-packages")
+            if sys.maxsize > 2**32:
+              return os.path.join(libpython, "site-packages", "@LIBARCHSUFFIX.64@".lstrip('/')).rstrip('/')
+            else:
+              return os.path.join(libpython, "site-packages", "@LIBARCHSUFFIX.32@".lstrip('/')).rstrip('/')
 
     elif os.name == "nt":
         if standard_lib:
@@ -246,7 +249,10 @@
     if python_build:
         return os.path.join(os.path.dirname(sys.executable), "Makefile")
     lib_dir = get_python_lib(plat_specific=1, standard_lib=1)
-    return os.path.join(lib_dir, "config", "Makefile")
+    if sys.maxsize > 2**32:
+        return os.path.join(lib_dir, "config", "@LIBARCHSUFFIX.64@".lstrip('/'), "Makefile")
+    else:
+        return os.path.join(lib_dir, "config", "@LIBARCHSUFFIX.32@".lstrip('/'), "Makefile")
 
 
 def parse_config_h(fp, g=None):
