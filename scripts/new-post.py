#!/usr/bin/env python3
"""Create a new blog post with proper frontmatter and filename."""

import argparse
import re
import sys
from datetime import date
from pathlib import Path


def slugify(title: str) -> str:
    """Convert a title to a URL-friendly slug."""
    # Convert to lowercase
    slug = title.lower()
    # Replace spaces and underscores with hyphens
    slug = re.sub(r'[\s_]+', '-', slug)
    # Remove non-alphanumeric characters (except hyphens)
    slug = re.sub(r'[^a-z0-9-]', '', slug)
    # Collapse multiple hyphens
    slug = re.sub(r'-+', '-', slug)
    # Strip leading/trailing hyphens
    slug = slug.strip('-')
    return slug


def create_post(title: str, posts_dir: Path, draft: bool = True) -> Path:
    """Create a new post file and return its path."""
    today = date.today().isoformat()
    slug = slugify(title)
    filename = f"{today}-{slug}.qmd"
    filepath = posts_dir / filename

    # Check if file already exists
    if filepath.exists():
        raise FileExistsError(f"Post already exists: {filepath}")

    # Create frontmatter
    draft_line = "draft: true\n" if draft else ""
    content = f"""---
title: "{title}"
date: "{today}"
{draft_line}---

"""

    filepath.write_text(content)
    return filepath


def main():
    parser = argparse.ArgumentParser(description="Create a new blog post")
    parser.add_argument("title", help="Title of the post")
    parser.add_argument(
        "--no-draft",
        action="store_true",
        help="Create as published (not draft)",
    )
    parser.add_argument(
        "--posts-dir",
        type=Path,
        help="Posts directory (default: auto-detect)",
    )

    args = parser.parse_args()

    # Find posts directory
    if args.posts_dir:
        posts_dir = args.posts_dir
    else:
        # Try to find it relative to script or current directory
        script_dir = Path(__file__).parent.parent
        posts_dir = script_dir / "posts"
        if not posts_dir.exists():
            posts_dir = Path.cwd() / "posts"

    if not posts_dir.exists():
        print(f"Error: Posts directory not found: {posts_dir}", file=sys.stderr)
        sys.exit(1)

    try:
        filepath = create_post(
            title=args.title,
            posts_dir=posts_dir,
            draft=not args.no_draft,
        )
        # Output just the path for easy consumption by other tools
        print(filepath)
    except FileExistsError as e:
        print(f"Error: {e}", file=sys.stderr)
        sys.exit(1)


if __name__ == "__main__":
    main()
