# Generate MacOs application installer using pkgbuild

To compile a package:

Clone repository
```
git clone https://github.com/reisbel/macos-app-installer.git && cd macos-app-installer
```

Create a folder for application files
```
mkdir files
```

Copy application files to the created folder 'files'

Update 'build.sh' file varibles values.
- NAME : Application name
- IDENTIFIER : Application identifier
- VERSION : Current application version
- INSTALL_LOCATION : Desired app install path
- IDENTITY : installer certificate name, this certificate must be installed in the keychain. This example include signing of the generated package, this step can be disabled if you don't have a valid certificate.

Make script 'build.sh' executable
```
chmod +x build.sh
```

Generate installer
```
 ./build.sh
 ```

You should now have a new package file in the output directory.

