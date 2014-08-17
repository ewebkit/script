# !/bin/sh
if [ "x$1" = "x" ]
then
    echo "Please pass the version information"
    echo "usage) ./release.sh 1.11.0-alpha1"
    exit
fi

excludePattern="--exclude=*/avfoundations \
        --exclude=*/avfoundation \
        --exclude=*/cf \
        --exclude=*/ca \
        --exclude=*/cg \
        --exclude=*ChangeLog-*
        --exclude=*/cocoa \
        --exclude=*/Cocoa \
        --exclude=ewebkit/build \
        --exclude=ewebkit/Examples \
        --exclude=ewebkit/.git \
        --exclude=ewebkit/LayoutTests \
        --exclude=ewebkit/ManualTests \
        --exclude=ewebkit/PerformanceTests \
        --exclude=ewebkit/Source/JavaScriptCore/tests \
        --exclude=ewebkit/Source/WebCore/bindings/gobject \
        --exclude=ewebkit/Source/WebCore/bridge/objc \
        --exclude=ewebkit/Source/WebKit \
        --exclude=ewebkit/Tools/asan \
        --exclude=ewebkit/Tools/BuildSlaveSupport \
        --exclude=ewebkit/Tools/CodeCoverage \
        --exclude=ewebkit/Tools/CSSTestSuitHarness \
        --exclude=ewebkit/Tools/CygwinDownloader \
        --exclude=ewebkit/Tools/EWSTools \
        --exclude=ewebkit/Tools/iExploder \
        --exclude=ewebkit/Tools/QueueStatusServer \
        --exclude=ewebkit/Tools/Scripts \
        --exclude=ewebkit/Tools/TestResultServer \
        --exclude=ewebkit/Tools/TestWebKitAPI \
        --exclude=ewebkit/Tools/WebKitLauncher \
        --exclude=ewebkit/Tools/WinCELauncher \
        --exclude=ewebkit/Tools/WinLauncher \
        --exclude=ewebkit/WebKitBuild \
        --exclude=ewebkit/WebKitLibraries \
        --exclude=ewebkit/Websites \
        --exclude=*.gitattributes \
        --exclude=*.gitignore \
        --exclude=*/gtk \
        --exclude=*/ios \
        --exclude=*/mac \
        --exclude=*.make \
        --exclude=*Makefile \
        --exclude=*Makefile.shared \
        --exclude=*.order \
        --exclude=*PlatformGtk.cmake \
        --exclude=*PlatformWinCE.cmake \
        --exclude=tags \
        --exclude=*.vcxproj \
        --exclude=*.vsprops \
        --exclude=*webkit2gtk* \
        --exclude=*/win \
        --exclude=*/wince \
        --exclude=*.xcconfig \
        --exclude=*.xcodeproj \
        --exclude=*.xcworkspace \
"

tar cvzf ewebkit-$1.tar.gz --dereference \
        $excludePattern \
        ewebkit

tar cvJf ewebkit-$1.tar.xz --dereference \
        $excludePattern \
        ewebkit
