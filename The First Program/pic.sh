#!/bin/bash

# Set to your vault root directory
VAULT_DIR=~/Templates/Computing-101

find "$VAULT_DIR" -type f -name "*.md" | while read -r file; do
    echo "Processing $file"
    
    # Use sed to convert Obsidian-style image embeds to HTML img tags
    sed -i -E 's/!\[\[([^]|]+)\s*\|\s*([0-9]+)\s*\]\]/<img src="Pictures\/\1" width="\2">/g' "$file"
    
    # Convert plain image embeds without width info
    sed -i -E 's/!\[\[([^]|]+)\]\]/<img src="Pictures\/\1">/g' "$file"
done

echo "✅ Conversion done!"
