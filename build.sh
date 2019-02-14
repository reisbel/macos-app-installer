#!/bin/bash

# Once installed the identifier is used as the filename for a receipt files in /var/db/receipts/.
NAME="Dummy-App"
IDENTIFIER="app.dummy"
# Package version number.
VERSION="1.0"

IDENTITY="Developer ID Installer: My Company (NNNNNNN)"

# The location to copy the contents of files.
INSTALL_LOCATION="/Applications/Dummy-App.app"


# Remove any unwanted .DS_Store files.
find files/ -name '*.DS_Store' -type f -delete

# Set full read, write, execute permissions for owner and just read and execute permissions for group and other.
/bin/chmod -R 755 files

# Remove any extended attributes (ACEs).
/usr/bin/xattr -rc files

# Build package.
/usr/bin/pkgbuild \
    --root files/Dummy-App.app \
    --install-location "$INSTALL_LOCATION" \
    --identifier "$IDENTIFIER" \
    --sign "${IDENTITY}" \
    --version "$VERSION" \
    output/"$Name".pkg