import { defineCollection, z } from 'astro:content';
import { glob } from 'astro/loaders';

const posts = defineCollection({
  loader: glob({ pattern: '**/*.md', base: './src/content/posts' }),
  schema: z.object({
    title: z.string(),
    author: z.string().default('Brad Venner'),
    date: z.coerce.date(),
    draft: z.boolean().default(true),
    categories: z.array(z.string()).default([]),
    tags: z.array(z.string()).default([]),
  }),
});

const projects = defineCollection({
  loader: glob({ pattern: '*.md', base: './src/content/projects' }),
  schema: z.object({
    title: z.string(),
    tagline: z.string(),
    status: z.enum(['concept', 'MVP', 'incubating', 'graduated']).default('concept'),
    target: z.string(),
    order: z.number().default(99),
  }),
});

export const collections = { posts, projects };
