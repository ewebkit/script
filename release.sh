# !/bin/sh
tar cvzf ewebkit-1.11.0-alpha1.tar.gz --dereference --exclude=webkit/.git --exclude=webkit/Examples --exclude=webkit/ManualTests --exclude=webkit/Websites --exclude=webkit/LayoutTests --exclude=webkit/PerformanceTests  --exclude=webkit/Source/WebKit --exclude=webkit/WebKitLibraries --exclude=webkit/build webkit
