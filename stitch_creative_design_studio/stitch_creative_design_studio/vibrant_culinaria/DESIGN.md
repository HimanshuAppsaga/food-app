---
name: Vibrant Culinaria
colors:
  surface: '#f9f9f9'
  surface-dim: '#dadada'
  surface-bright: '#f9f9f9'
  surface-container-lowest: '#ffffff'
  surface-container-low: '#f3f3f3'
  surface-container: '#eeeeee'
  surface-container-high: '#e8e8e8'
  surface-container-highest: '#e2e2e2'
  on-surface: '#1b1b1b'
  on-surface-variant: '#5c403a'
  inverse-surface: '#303030'
  inverse-on-surface: '#f1f1f1'
  outline: '#916f69'
  outline-variant: '#e5bdb6'
  surface-tint: '#ba1c00'
  primary: '#b51c00'
  on-primary: '#ffffff'
  primary-container: '#dc3214'
  on-primary-container: '#fffbff'
  inverse-primary: '#ffb4a5'
  secondary: '#5e5e5f'
  on-secondary: '#ffffff'
  secondary-container: '#e0dfdf'
  on-secondary-container: '#626363'
  tertiary: '#ac2d00'
  on-tertiary: '#ffffff'
  tertiary-container: '#d73b00'
  on-tertiary-container: '#fffbff'
  error: '#ba1a1a'
  on-error: '#ffffff'
  error-container: '#ffdad6'
  on-error-container: '#93000a'
  primary-fixed: '#ffdad3'
  primary-fixed-dim: '#ffb4a5'
  on-primary-fixed: '#3e0400'
  on-primary-fixed-variant: '#8e1300'
  secondary-fixed: '#e3e2e2'
  secondary-fixed-dim: '#c7c6c6'
  on-secondary-fixed: '#1a1c1c'
  on-secondary-fixed-variant: '#464747'
  tertiary-fixed: '#ffdbd1'
  tertiary-fixed-dim: '#ffb5a0'
  on-tertiary-fixed: '#3b0900'
  on-tertiary-fixed-variant: '#872100'
  background: '#f9f9f9'
  on-background: '#1b1b1b'
  surface-variant: '#e2e2e2'
typography:
  display-lg:
    fontFamily: Be Vietnam Pro
    fontSize: 65px
    fontWeight: '800'
    lineHeight: '1.1'
  headline-lg:
    fontFamily: Be Vietnam Pro
    fontSize: 34px
    fontWeight: '700'
    lineHeight: '1.2'
  headline-lg-mobile:
    fontFamily: Be Vietnam Pro
    fontSize: 28px
    fontWeight: '700'
    lineHeight: '1.2'
  headline-md:
    fontFamily: Be Vietnam Pro
    fontSize: 22px
    fontWeight: '600'
    lineHeight: '1.3'
  body-lg:
    fontFamily: Be Vietnam Pro
    fontSize: 17px
    fontWeight: '400'
    lineHeight: '1.5'
  body-sm:
    fontFamily: Be Vietnam Pro
    fontSize: 15px
    fontWeight: '400'
    lineHeight: '1.4'
  label-lg:
    fontFamily: Be Vietnam Pro
    fontSize: 17px
    fontWeight: '600'
    lineHeight: '1'
  label-sm:
    fontFamily: Be Vietnam Pro
    fontSize: 12px
    fontWeight: '400'
    lineHeight: '1'
rounded:
  sm: 0.25rem
  DEFAULT: 0.5rem
  md: 0.75rem
  lg: 1rem
  xl: 1.5rem
  full: 9999px
spacing:
  base: 8px
  container-margin: 30px
  gutter: 16px
  stack-sm: 8px
  stack-md: 20px
  stack-lg: 40px
---

## Brand & Style

The brand personality is energetic, optimistic, and centered on the joy of food. It targets a modern, fast-paced audience that values both convenience and high-quality visuals. The emotional response is one of appetite and ease, achieved through a "Friendly Minimalist" style.

The design system employs a mix of **Minimalism** and **Modern Corporate** aesthetics. It utilizes heavy whitespace to allow high-quality food photography to take center stage, paired with a high-energy primary color that stimulates appetite and action. The interface feels approachable and "soft" due to generous rounded corners and subtle depth.

## Colors

The palette is dominated by a vibrant, high-saturation orange-red that serves as the primary driver for call-to-actions and branding. 

- **Primary:** Used for main buttons, active tab indicators, and price accents.
- **Secondary/Background:** A very light grey (#F2F2F2) is used for the main background to provide soft contrast against pure white cards.
- **Surface:** Pure white (#FFFFFF) is reserved for elevated cards and input containers to create a clean, layered look.
- **Neutral:** A range of greys—from deep black for headlines to a mid-tone (#9A9A9D) for secondary body text—ensures a clear information hierarchy.

## Typography

This design system uses **Be Vietnam Pro** across all levels to maintain a friendly and contemporary feel. The type scale is characterized by high contrast between bold, heavy headlines and clean, airy body text.

- **Display & Headlines:** Use high font weights (Bold/ExtraBold) and tight line heights for a punchy, editorial feel.
- **Body Text:** Uses a Regular weight with increased line height to ensure readability for descriptions and delivery information.
- **Price Labels:** Often use the Primary color and Semi-Bold weight to ensure the most important data point is immediately visible.

## Layout & Spacing

The layout follows a **fluid grid** model for mobile, emphasizing vertical "stacks" of content. 

- **Margins:** A generous 30px side margin is used consistently to create a high-end, spacious feel.
- **Rhythm:** An 8px baseline grid governs all spacing. Vertical gaps between related items (image to title) are typically 16px, while gaps between distinct sections (information blocks) are 40px.
- **Adaptive Rules:** On mobile, components like the "Product Card" span approximately 45% of the screen width in a two-column grid. On larger screens, these transition to a fixed-width grid (max 1200px) with 12 columns.

## Elevation & Depth

Visual hierarchy is primarily achieved through **Tonal Layers** and **Ambient Shadows**.

- **Surfaces:** The base background is light grey. Primary content is placed on pure white cards.
- **Shadows:** Cards use an extremely soft, diffused shadow (Blur: 30px, Spread: 0, Y: 10, Opacity: 3% Black). This "airlight" shadow creates a subtle lift without adding visual clutter.
- **Interactions:** Active states (like a selected payment method) are indicated by a stroke or color change rather than an increase in shadow depth, keeping the interface feeling lightweight.

## Shapes

The shape language is consistently **Rounded**, reinforcing the friendly and approachable brand personality.

- **Primary Buttons:** Large 30px corner radius (approaching pill-shaped) to make them feel "squishy" and tappable.
- **Cards:** 30px corner radius on the main container cards, while internal nested elements (like food images) often use a slightly smaller radius or circular clipping.
- **Inputs:** Search bars use a fully pill-shaped (capsule) design, while text fields are defined by bottom-only strokes to maintain a minimal footprint.

## Components

### Buttons
- **Primary:** Full-width, #FF4B2B background, white text, 70px height, 30px radius.
- **Secondary (Ghost):** No background, #FF4B2B text, used for less urgent actions like "Forgot passcode."

### Cards
- **Product Card:** White background, 30px radius, soft ambient shadow. Food images should bleed out or sit top-center with a 10px vertical offset to create a 3D effect.
- **Profile Card:** White background, 20px radius, containing high-contrast text and circular avatars.

### Inputs & Selection
- **Search Bar:** Light grey background (#EFEEEE), 30px radius, minimalist line icon.
- **Text Fields:** Minimalist style; a single bottom border (1px, #000000) with labels positioned above in a muted grey.
- **Radio Buttons:** Custom #FF4B2B ring with a solid center dot for selected states.

### Navigation
- **Bottom Tabs:** Fixed position, white background, using minimalist outline icons that transition to solid #FF4B2B when active.
- **Category Tabs:** Horizontal scrolling, indicated by a 3px thick #FF4B2B underline for the active state.