# Context copy

Copy your current context and paste to your LLM prompt.

## Background

This script takes a screenshot, performs OCR, and copies the result to your clipboard. If you assign this script to a shortcut, you can easily copy-paste your current "context" to your next LLM prompt. This way, the LLM can give more targeted answers.

OCR is performed locally to keep any sensible information private.

This script is a minimum working version. It currently only runs on Ubuntu.

## Prerequisites

The script requires the packages tesseract-ocr, gnome-screenshot and xclip.

## Installation

1. Clone this repository, or download the context-copy.sh file.
2. Open a terminal in the corresponding folder.
3. Make the file executable with `chmod +x context-copy.sh`.
4. Assign a shortcut to the file. This can be done in the Ubuntu settings -> Keyboard -> Keyboard Shortcuts -> Custom Shortcuts. You need to assign a name to the shortcut, a key combination, and as "Command" you need to enter the full path to the script, e.g., `/home/your_username/Documents/context-copy.sh`

That's it!

## Usage

Instead of Ctrl-C + Ctrl-V you can now do (whatever shortcut you chose) + Ctrl-V for your next LLM prompt. If you choose Ctrl + a letter close to C (that is not already taken by another shortcut), you can perform this operation with minimum additional effort (if any) compared to Ctrl-C + Ctrl-V.

Tesseract may need 1-2 seconds to perform the text recognition.


