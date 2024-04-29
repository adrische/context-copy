#!/bin/bash
timestamp=$(date +%Y%m%d_%H%M%S)
screenshot_file="/tmp/screenshot_$timestamp.png"

# Take screenshot
gnome-screenshot -f "$screenshot_file"

# Perform OCR using Tesseract and copy result to clipboard
OCR_RESULT=$(tesseract "$screenshot_file" stdout --dpi 300 2>/dev/null)

# System prompt
beginning_text="The following is additional context obtained via OCR (optical character recognition) from my current screen. Please consider it in your response.\n\n"
end_text="\n\nThe following is my prompt:\n\n"

# Combine additional text with OCR result
final_result="${beginning_text}${OCR_RESULT}${end_text}"
echo -e "$final_result" | xclip -selection clipboard
