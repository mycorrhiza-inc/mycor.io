#!/usr/bin/env python3
"""Open a file in neovim in a new tab in the current Konsole window."""

import os
import subprocess
import sys


def main():
    if len(sys.argv) < 2:
        print("Usage: konsole-tab.py <file>")
        sys.exit(1)

    filepath = os.path.abspath(sys.argv[1])

    # Get Konsole D-Bus service info from environment
    service = os.environ.get('KONSOLE_DBUS_SERVICE')
    window = os.environ.get('KONSOLE_DBUS_WINDOW')

    if not service or not window:
        print("Error: Not running inside Konsole (KONSOLE_DBUS_SERVICE or KONSOLE_DBUS_WINDOW not set)")
        sys.exit(1)

    # Create a new session (tab) with nvim command using qdbus
    result = subprocess.run(
        ['qdbus', service, window, 'newSession', f'nvim {filepath}'],
        capture_output=True,
        text=True
    )

    if result.returncode != 0:
        print(f"Error creating session: {result.stderr}")
        sys.exit(1)

    session_id = result.stdout.strip()
    print(f"Opened {filepath} in new Konsole tab (session {session_id})")

if __name__ == '__main__':
    main()
