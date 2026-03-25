# MYCOR.IO Design Specification

## Design Philosophy

**Zine/DIY Aesthetic + Punk Energy + Serif-Heavy Typography**

The redesign reclaims the aesthetic language that corporate startups appropriated and inverted. We're building a site that looks like it was made by people who reject the playbook, not by people following it. Every design choice should feel intentional and grounded in cooperative values.

Key principles:
- **Unapologetic boldness** — high contrast, large typography, asymmetric layouts
- **Anti-corporate subversion** — serif fonts everywhere (inverting "modern" = sans-serif)
- **Zine/DIY texture** — visual roughness, intentional imperfection, handcrafted feel
- **Conviction over trends** — design choices justified by values, not trend cycles
- **High contrast clarity** — accessibility + visual punch simultaneously

---

## Typography

### Philosophy: Serif-Heavy, Aggressive Mixing

Serif fonts have been pushed to the margins by corporate tech. We're bringing them back as a statement.

### Font Stack

**Headings (H1-H6):** Playfair Display (serif)
- Weights: 400, 700, 900
- Usage: All headings from H1-H6
- Characteristic: Elegant but assertive, classical but contemporary
- Sizing: Aggressive scaling — H1 should feel *large*, H2 noticeably smaller, etc. Create visual hierarchy through scale.

**Body Copy:** Space Mono (monospace serif alternative) or continue with Inter but use it sparingly
- Consider: For paragraphs and long-form text, could use a serif body font (Georgia, Crimson Text, or similar) instead of Inter
- This breaks the "tech norm" even further
- Alternative: Keep Inter but pair with serif much more aggressively in UI

**UI/Accent Text:** Playfair Display (use weight variations heavily)
- Buttons, labels, CTAs should use serif
- Mix weights: 700 for labels, 900 for emphasis
- All caps, deliberate letter spacing

### Typography Rules

1. **Never apologize for size** — headings should be genuinely large (6xl, 8xl on desktop)
2. **Mix serifs aggressively** — don't create a "tasteful" serif/sans hierarchy; let them fight for attention
3. **All caps for navigation/labels** — adds visual punch, references zine/protest aesthetic
4. **Letter spacing** — increase on all caps text, decrease on serif body for intimacy
5. **Line lengths** — shorter for more impact (max-w-2xl for body text), wider for headings to feel expansive

---

## Color Palette

### Primary Colors

**Red/Orange Primary:** `#ff4d3d` (from imported design — keep this)
- Aggressive, demands attention
- Used for: Key CTAs, emphasis, highlights

**Secondary Blue:** `#2979ff`
- Vibrant, complements red
- Used for: Accents, secondary CTAs, borders, project tags

**Background:** `#000000` (pure black)
- High contrast, uncompromising
- Creates visual punch with bright colors

**Text/Surface:** `#ffffff` (pure white)
- Maximum contrast
- Don't use grays — go full white or full black

### Color Usage Rules

- **No gradients** — use solid colors only
- **High contrast only** — black/white, red/black, blue/black
- **Color blocking** — solid sections of color, not gradual transitions
- **Spare use of secondary colors** — red is primary everywhere, blue used strategically

---

## Layout & Spacing

### Grid System

**Reject balanced grids.** Use asymmetric layouts that feel intentional, not accidental.

- **Asymmetric two-column layouts** where left and right are different sizes (e.g., 60/40, 70/30)
- **Single column breaking into asymmetric sections** — not everything aligns to a center axis
- **White space as a design element** — not just breathing room, but deliberate empty space that creates rhythm
- **Elements that break the grid** — a heading that extends beyond container, an image that overflows slightly

### Container Widths

- Body copy: max-w-2xl (narrower for intimacy)
- Layouts: max-w-6xl (wider for sprawl)
- No centered "safe zone" — let content feel urgent, not polite

### Spacing

- **Large jumps between sections** — py-16, py-24 (not gradual py-4, py-6)
- **Asymmetric spacing** — don't use consistent margins everywhere
- **White space as emphasis** — use large gaps between important sections to create breathing room

---

## Components & Patterns

### Header/Navigation

- **Logo:** Large serif text (Playfair Display, 900 weight)
- **Navigation:** All caps serif labels, spaced out with large gaps
- **Border:** Thick bottom border (4px-8px) in either red or blue — not subtle
- **No hover effects that fade** — use color swap (white → red background with inverted text)

### Hero Section

- **H1 headline:** Playfair Display, 8xl-9xl, aggressive line-height (0.85-0.9)
- **Color emphasis:** Parts of headline in red or blue
- **Subheading:** All caps, spaced out, serif
- **Body text:** Serif, generous line-height (1.8-2)
- **Layout:** Asymmetric — headline on left taking 60%, body copy flowing around it

### Project Cards / Bento Grid

- **Reject clean bento grids** — use irregular sizing
- **Border treatment:** Thick 4px borders in outline-variant or red
- **Title:** Large serif, all caps or title case with aggressive sizing
- **Status badge:** All caps serif label in colored background
- **Hover state:** Border color changes to red, slight shift (2-4px) — not smooth fade
- **Asymmetric sizing:** Some cards are double-width, some are square, creates visual interest

### Buttons

- **Style:** Thick border (4px), all caps serif text
- **Primary:** Red background, black text
- **Secondary:** Black background, red/white text, thick border
- **Hover:** Translate-x/translate-y by 2-4px (punk "punch" effect), color invert
- **No rounded corners** — sharp, aggressive edges

### Typography Callouts

- **Blockquotes:** Large serif, italic, with thick left border (6px+) in color
- **Emphasis blocks:** Color-blocked sections with white text on red or vice versa
- **Inline callouts:** Bold serif text in caps with background color

### Texture/Roughness

- **Optional grain overlay:** Very subtle SVG noise (opacity 0.03-0.05)
- **Intentional imperfection:** Border strokes that are exactly aligned but *feel* handmade
- **No anti-aliasing on borders** — slightly jagged is okay, adds character

---

## Page Layouts

### Index/Home

**Section 1: Hero**
- Bold H1 in serif with color emphasis
- Subheading: "open source software for cooperatives and nonprofits"
- Two-column asymmetric layout: headline (60%) + stats/callout (40%)
- Large red border on right side element

**Section 2: Manifesto/Mission**
- Color-blocked section (red background, white text)
- Large serif quote
- All-caps serif subheading
- Create visual tension with asymmetry

**Section 3: Projects**
- H2 all caps serif
- Asymmetric grid:
  - Some projects full-width text + image
  - Some projects in 2-column cards of different sizes
  - Status badges in color
  - Thick borders, no subtle shadows

**Section 4: The Notebook**
- Border top in blue
- Large serif headline
- Brief description
- "Browse archive →" link in red

**Section 5: CTA/Join**
- Color-blocked (blue background, white text)
- Large serif headline
- Punch button with red background
- No softness here

### Project Detail Page

- Same header/footer treatment
- Large serif project title
- Color-blocked intro section
- Asymmetric two-column: description (left) + image/diagram (right)
- Project phases or sections as color-blocked columns

### Post/Essay Layout

- Narrow max-w for readability
- Large serif H1
- Metadata in all-caps labels below
- Body in serif (consider changing from Inter to serif for Essays)
- Pull quotes in color-blocked boxes with large serif text

---

## WebGPU Shader Ideas (Future Phase)

These would be implemented later but should inform layout decisions now.

### Potential Shader Effects

1. **Animated grain/noise** — subtle procedural texture that shifts over time
2. **Color shift on scroll** — gradual color transformation as you scroll (red → blue)
3. **Glitch/distortion effects** — on hover of key elements, subtle pixel shift
4. **Procedural backgrounds** — geometric patterns that evolve, add visual texture without imagery
5. **Text glow/bloom** — on key headlines or CTAs, subtle glow effect

### Layout Considerations

- Plan for shader containers with specific aspect ratios
- Leave space for animations (don't pack layout too tightly)
- Shaders should enhance punk/DIY feel, not add corporate "smoothness"

---

## Implementation Notes

### Do's
- ✅ Use thick borders (4px+)
- ✅ Use pure colors (no gradients, no color grays)
- ✅ Use all caps serif labels everywhere
- ✅ Create visual tension through asymmetry
- ✅ Make sizing changes dramatic (not incremental)
- ✅ Use white space as a design element
- ✅ Make interaction feedback immediate and obvious
- ✅ Every design choice should feel justified

### Don'ts
- ❌ Don't use rounded corners
- ❌ Don't use subtle hover effects (fade, opacity shift)
- ❌ Don't use multiple font families (stick to Playfair Display + maybe one serif for body)
- ❌ Don't apologize for boldness
- ❌ Don't create "safe" centered layouts
- ❌ Don't use corporate color conventions (no teal, no purple, no safe pastels)
- ❌ Don't add drop shadows or depth effects
- ❌ Don't use sans-serif as the primary font

### Tailwind Configuration

- Extend colors: Primary red (`#ff4d3d`), Secondary blue (`#2979ff`), pure black/white
- Border-radius: 0px (no rounded corners)
- Font-family: Playfair Display (serif), keep Inter as fallback
- Border widths: Extend to include thicker options (4px, 6px, 8px)
- Spacing: Use larger increments (16, 24, 32 instead of micro-increments)

---

## Visual Examples (Conceptual)

### Header Border
```
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
MYCOR.IO        [HOME] [NOTEBOOK] [ABOUT]
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
(Thick 4-8px bottom border in red or blue)
```

### Asymmetric Hero
```
┌─────────────────────────────┐
│ OPEN SOURCE                 │ [RED BLOCK: 40%]
│ SOFTWARE FOR                │ [Stats/Callout]
│ COOPERATIVES                │ [Large Text]
│                             │
│ (60% left space)            └─────────────┘
└─────────────────────────────┘
```

### Project Card
```
┌─────────────────────────────────────────┐
│ PROJECT TITLE              [STATUS]     │
│                                          │
│ Description of project in serif body     │
│ text with generous line height and       │
│ max width for readability.               │
│                                          │
│ EXPLORE REPO →                          │
└─────────────────────────────────────────┘
(Thick 4px border, color: outline or red on hover)
```

---

## Success Criteria

The redesign succeeds if:
- ✅ Someone sees the site and immediately knows it's *not* made by a VC-funded startup
- ✅ Every design choice feels like it came from conviction, not trend-chasing
- ✅ Typography is aggressive and serif-forward
- ✅ High contrast and asymmetric layouts create visual tension
- ✅ The zine/DIY aesthetic is clear without being kitsch
- ✅ Color choices feel purposeful (red + blue intentionally)
- ✅ Accessibility is maintained (high contrast + large text helps)
