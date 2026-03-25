// @ts-check
import { defineConfig } from 'astro/config';
import tailwindcss from '@tailwindcss/vite';

// https://astro.build/config
export default defineConfig({
  site: 'https://mycor.io',
  vite: {
    plugins: [
      tailwindcss({
        theme: {
          extend: {
            colors: {
              'punk-red': '#ff4d3d',
              'punk-blue': '#2979ff',
              'punk-black': '#000000',
              'punk-white': '#ffffff',
              'punk-dark': '#1a1a1a',
            },
            fontFamily: {
              serif: ['Playfair Display', 'Georgia', 'serif'],
              body: ['Inter', 'system-ui', 'sans-serif'],
            },
            borderRadius: {
              none: '0px',
            },
          },
        },
      }),
    ],
  },
});
