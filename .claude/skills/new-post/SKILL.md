---
name: new-post
description: "Create a new blog post for the Ecology, Society, Democracy notebook"
---

# New Post Skill

Create a new blog post with proper frontmatter and filename.

## Usage

```
/new-post "Title of the Post"
```

## Instructions

When invoked, run the shared post creation script:

```bash
python3 scripts/new-post.py "$ARGUMENTS"
```

The script will:
1. Generate a filename with today's date and a slug from the title
2. Create the file in `posts/` with proper YAML frontmatter
3. Output the path to the created file

After creating the post, inform the user of the file path so they can open it in their editor.

If no title argument is provided, ask the user for a title before proceeding.
