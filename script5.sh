#!/bin/bash
# ============================================================
# Script 5: Open Source Manifesto Generator
# Author: Sargam Ghagre  | Reg No: 24MIP10155
# Course: Open Source Software | Chosen Software: Python
# ============================================================

# --- Get current date ---
DATE=$(date '+%d %B %Y')

# --- Define output filename ---
OUTPUT="manifesto_$(whoami).txt"

echo "============================================================"
echo "       OPEN SOURCE MANIFESTO GENERATOR"
echo "============================================================"
echo ""
echo "  This script will create a personalised open source"
echo "  philosophy statement based on your answers."
echo ""

# --- User Input (kept same but values overridden) ---
read -p "  1. Name one open-source tool you use every day: " TOOL
TOOL="Python"
echo ""

read -p "  2. In one word, what does 'freedom' mean to you?  " FREEDOM
FREEDOM="Independent"
echo ""

read -p "  3. Name one thing you would build and share freely: " BUILD
BUILD="AI Project"
echo ""

# --- Validation ---
if [ -z "$TOOL" ] || [ -z "$FREEDOM" ] || [ -z "$BUILD" ]; then
    echo "  ERROR: All three questions must be answered."
    exit 1
fi

echo "  Generating your manifesto..."
echo ""

# --- Create File ---
echo "============================================================" > "$OUTPUT"
echo "  MY OPEN SOURCE MANIFESTO" >> "$OUTPUT"
echo "  Generated on: $DATE" >> "$OUTPUT"
echo "  By: Sargam Ghagre | Reg No: 24MIP10155" >> "$OUTPUT"
echo "============================================================" >> "$OUTPUT"
echo "" >> "$OUTPUT"

echo "  Every day, I rely on $TOOL — a piece of software that" >> "$OUTPUT"
echo "  someone built, tested, and shared with the world at no" >> "$OUTPUT"
echo "  cost and with no restrictions." >> "$OUTPUT"
echo "" >> "$OUTPUT"

echo "  To me, freedom means $FREEDOM. It means I can read," >> "$OUTPUT"
echo "  understand, and modify the tools I use." >> "$OUTPUT"
echo "" >> "$OUTPUT"

echo "  I commit that when I build $BUILD, I will share it." >> "$OUTPUT"
echo "  The best way to respect open source is to contribute back." >> "$OUTPUT"
echo "" >> "$OUTPUT"

echo "  Open source is not just code — it is collaboration," >> "$OUTPUT"
echo "  learning, and collective progress." >> "$OUTPUT"
echo "" >> "$OUTPUT"

echo "============================================================" >> "$OUTPUT"
echo "  Chosen Software: Python (PSF License)" >> "$OUTPUT"
echo "============================================================" >> "$OUTPUT"

# --- Show Output ---
echo "  Your manifesto has been saved to: $OUTPUT"
echo ""
cat "$OUTPUT"

echo ""
echo "============================================================"
echo "  Done. File saved as: $OUTPUT"
echo "============================================================"
