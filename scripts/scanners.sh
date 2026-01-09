#!/bin/sh

# Symlink distrobox shims
./distrobox-shims.sh

# Update the container and install packages
dnf update -y
grep -v '^#' ./scanners.packages | xargs dnf install -y

# create .desktop file for g2scan2pdf, so that distrobox assemble can detect it
mkdir -p /usr/share/applications

cat > /usr/share/applications/gscan2pdf.desktop << 'EOF'
[Desktop Entry]
Name=gscan2pdf
GenericName=PDF Scanner
Comment=Scan documents and create PDF files
Exec=gscan2pdf %F
Icon=gscan2pdf
Terminal=false
Type=Application
Categories=Graphics;Scanning;Office;
MimeType=image/png;image/jpeg;image/tiff;application/pdf;
StartupNotify=true
EOF

chmod 644 /usr/share/applications/gscan2pdf.desktop
