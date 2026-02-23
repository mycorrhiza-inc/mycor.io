#!/usr/bin/env python3
"""Migrate posts from posts/ (Quarto .qmd/.md) to src/content/posts/ (Astro .md)."""

import re
import sys
from pathlib import Path

try:
    import yaml
except ImportError:
    print("PyYAML not found. Install with: pip install pyyaml")
    sys.exit(1)

try:
    from dateutil import parser as dateutil_parser
except ImportError:
    print("python-dateutil not found. Install with: pip install python-dateutil")
    sys.exit(1)

REPO_ROOT = Path(__file__).parent.parent
SRC_DIR = REPO_ROOT / "posts"
DEST_DIR = REPO_ROOT / "src" / "content" / "posts"

# Quarto-specific frontmatter keys to strip
QUARTO_KEYS = {"output", "format", "engine", "layout", "slug", "execute", "freeze"}


def normalize_date(value) -> str:
    """Normalize any date-like value to YYYY-MM-DD string."""
    if value is None:
        return ""
    s = str(value).strip()
    try:
        parsed = dateutil_parser.parse(s)
        return parsed.strftime("%Y-%m-%d")
    except (ValueError, OverflowError):
        return s


def parse_frontmatter(text: str):
    """Split file into (frontmatter_dict, body). Returns (None, text) if no YAML block."""
    if not text.startswith("---"):
        return None, text
    end = text.find("\n---", 3)
    if end == -1:
        return None, text
    yaml_block = text[3:end].strip()
    body = text[end + 4:].lstrip("\n")
    try:
        fm = yaml.safe_load(yaml_block) or {}
    except yaml.YAMLError as e:
        print(f"  WARN: YAML parse error: {e}")
        fm = {}
    return fm, body


def migrate_file(src_path: Path) -> bool:
    """Migrate a single post file. Returns True on success."""
    name = src_path.name
    # Skip non-post files
    if name == "my_rename.py" or name.startswith("_"):
        return False

    text = src_path.read_text(encoding="utf-8")
    fm, body = parse_frontmatter(text)

    if fm is None:
        print(f"  SKIP (no frontmatter): {name}")
        return False

    # Normalize date
    if "date" in fm:
        fm["date"] = normalize_date(fm["date"])

    # Strip Quarto-specific keys
    for key in QUARTO_KEYS:
        fm.pop(key, None)

    # Ensure required fields have defaults
    if "title" not in fm:
        fm["title"] = src_path.stem

    # Determine output filename: always .md
    dest_name = src_path.stem + ".md"
    dest_path = DEST_DIR / dest_name

    # Reconstruct file
    out_fm = yaml.dump(fm, default_flow_style=False, allow_unicode=True).strip()
    out_text = f"---\n{out_fm}\n---\n\n{body}"

    dest_path.write_text(out_text, encoding="utf-8")
    return True


def main():
    DEST_DIR.mkdir(parents=True, exist_ok=True)

    sources = list(SRC_DIR.glob("*.qmd")) + list(SRC_DIR.glob("*.md"))
    sources.sort()

    migrated = 0
    skipped = 0
    for src in sources:
        print(f"Migrating: {src.name}")
        if migrate_file(src):
            migrated += 1
        else:
            skipped += 1

    print(f"\nDone: {migrated} migrated, {skipped} skipped.")
    print(f"Output: {DEST_DIR}")


if __name__ == "__main__":
    main()
