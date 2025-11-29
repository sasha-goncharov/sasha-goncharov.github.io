#!/bin/bash

# Script to download all assets from Alexander Goncharov's Yale website
# Run this from inside your alexandergoncharov.github.io directory

BASE_URL="https://gauss.math.yale.edu/~ag727/"

# Create an array of all the files to download
FILES=(
    "dsc00065.jpg"
    "Ktheory91.pdf"
    "4717"
    "polylog.pdf"
    "4821"
    "charclasses.pdf"
    "AKtheory93.pdf"
    "DLMC.pdf"
    "chow.pdf"
    "emc.pdf"
    "InfinitesimalStructures1981.pdf"
    "Weil1982.pdf"
    "GenConfStruct87.pdf"
    "AdnissibleFamilies.pdf"
    "IntegralGeometryManifoldsMinimalDegree.pdf"
    "IntegralGeomnetrySurfaces.pdf"
    "igdem.pdf"
    "igde.pdf"
    "Vainstein-Goncharov1986.pdf"
    "tomograph1987.pdf"
    "IntegralGeomnetryActaApplicanda2.pdf"
    "ActaApplicanda1.pdf"
)

echo "Downloading files from $BASE_URL"
echo "=================================="

for file in "${FILES[@]}"; do
    echo "Downloading: $file"
    curl -L -o "$file" "${BASE_URL}${file}"
    
    # Check if download was successful
    if [ $? -eq 0 ]; then
        echo "✓ Successfully downloaded $file"
    else
        echo "✗ Failed to download $file"
    fi
    echo ""
done

echo "=================================="
echo "Download complete!"
echo ""
echo "Next steps:"
echo "1. Copy the index.html file to this directory"
echo "2. Run: git add ."
echo "3. Run: git commit -m 'Initial website deployment'"
echo "4. Run: git push origin main"
