# Changelog

## v108.1 Changelogs

## v108.1

- Pressing F10 will toggle between legacy and new (high resolution) sliders. Parameter values are not rounded.

## v108 Changelogs

## v108

- Pressing F12 will toggle between the normal action of Space on sliders (hold Space to allow moving sliders beyond their limits) and the opposite. 
- Pressing F11 will toggle between the normal action of Alt on slider arrows (hold Alt to move a slider ten steps at a time instead of one) and the opposite.
- Fixed upper arm sliders not prompting ribbon and hairpiece position updates.
- Fixed menus moving to incorrect positions when resizing the window.

## v107.1 Changelogs

## Alpha 1

- Increased tenfold the resolution of numerous sliders.
- Holding Alt while clicking an arrow will move a slider ten steps at a time.
- Pressing F12 will toggle between the normal behavior and sliders behaving as if Space were being held down.
- Improved consistency of SPNATI Character Editor image imports.

## v107 Changelogs

## Alpha 6

(Erion)

- Fixed an issue with hairpieces attached to fullBody not layering properly.
- Made fine-tuning of ribbon, belt, and image attachment positions more precise.
- Changed slot-shifting hotkeys from (Space, Space + Shift, Space + Ctrl) to (Shift, Shift + Space, Ctrl).

## Alpha 5

(Erion)

- Extended hairpiece slots to 999.
- Added fine-tuning sliders for hairpieces and facemarks.
- Fixed some hairpiece and ribbon layering issues.
- Fixed sidelock attachment point for ribbons.
- Fixed shifting ribbons between slots 1 and 999.
- Improved load times of models that use a lot of ribbons.
- Fixed leg-rotation-dependent visual issues with body height adjusting.
- Shadow visibility is now loaded when importing single-character codes.
- Switching visibility of a global item off and on no longer pulls it to the front of other items with the same depth.
- Added hotkeys for mirroring multiple hairpieces/ ribbons:
  - Holding Shift while mirroring will flip all hairpieces/ ribbons.
  - Holding Ctrl while mirroring will flip all hairpieces/ ribbons with the same attachment point.
- Added hotkeys for hairpiece/ ribbon slot shifting. If n is the slot of the active hairpiece/ ribbon, then:
  - Holding Space while clicking the up (down) arrow will move all hairpieces/ ribbons with slot number >= n (<= n) up (down) one slot.
  - Holding Space + Shift while clicking the up (down) arrow will move all hairpieces/ ribbons with slot number >= n (<= n) up (down) ten slots.
  - Holding Space + Ctrl while clicking the up (down) arrow will move all hairpieces/ ribbons with slot number >= n (<= n) and in the same contiguous slot group up (down) one slot.
- Updated hotkeys for adjusting properties (location etc.) of multiple hairpieces/ ribbons:
  - Holding Shift while clicking a slider arrow button will adjust all hairpieces/ ribbons.
  - Holding Ctrl while clicking a slider arrow button will adjust all hairpieces/ ribbons with the same attachment point.
- Added buttocks visibility toggles.
- Tweaked the sizes and positions of certain sliders.

(FarawayVision)

- Added a vibrator alpha transparency slider.

## Alpha 4

Credit for this update and all of the previous KKL updates goes to FarawayVision.

- Added upper and lower body visibility toggles
- Fixed mouth border line colors not being saved to and loaded from codes
- Fixed ALL-code export tabs not matching what they export
- Fixed external alpha transparency control for legs
- Fixed internal errors when handling remote control requests with embedded newlines in payload
- Attempted to fix issues with leg ribbon visibility
- Code and screenshot file saving menus should now automatically add the appropriate file extensions if not already present
- Changed default image export resolution to 05/05

## Alpha 3
- ~~(EXPERIMENTAL)~~ Extended ribbon slots to 999.
- Added hotkeys for navigating between slots for ribbons / hairpieces / global objects / etc.:
  - Holding Shift while navigating will cycle through visible slots.
  - Holding Ctrl while navigating will cycle through unused slots.
  - Holding Ctrl+Shift while navigating will cycle through contiguous groups of visible or unused slots.
    - In particular, this can be used to jump to the beginning or end of a group of slots (depending on navigation direction).
- Adjusted keyboard input for menu selectors to hopefully be more intuitive.

## Alpha 2
- Fixed positioning for ribbons attached to hair pieces.
- Fixed inconsistent ribbon layering when using mod-aware chest and lower body attachment points alongside their vanilla counterparts.
- Fixed issues with certain hat types not being displayed correctly.
- Fixed eyebrows not moving correctly horizontally when manipulating the main eye horizontal position slider.
- Added a setting for coloring mouth border lines.
- Added a setting for mouth layering.
- Added border lines for gradient ribbons.
- Added 8 new ribbon types:
  - #167: Bidirectional Solid to Clear Linear Gradient
  - #168: Rotated Bidirectional Solid to Clear Linear Gradient
  - #169: Two-Color Bidirectional Linear Gradient
  - #170: Two-Color Rotated Bidirectional Linear Gradient
  - #171: Clear to Solid Radial Gradient
  - #172: Half Clear to Solid Radial Gradient
  - #173: Quarter Clear to Solid Radial Gradient
  - #174: Lipstick Mark (port of face mark #33)
- Added 47 new hair piece types, most of which are basic geometric shapes and ports of previously added ribbons:
  - #88 - #90: Squares (Regular Gradient, Bidirectional Gradient, Rotated Bidirectional Gradient)
  - #91: Triangle
    - The gradient for this piece starts from the bottom, unlike hair piece #22.
  - #92: Concave Curve (port of ribbon #124)
  - #93: S-Bend Curve (port of ribbon #128)
  - #94 - #97: Circles (Full, Half, Quarter, Eighth)
    - These pieces have optional radial gradients.
  - #98 - #101: Annulus (Full, Half, Quarter, Eighth)
    - The Eighth Annulus hair piece (#101) may need to be set to secondary rotation 23 in order to scale correctly.
  - #102: Trapezoid
    - This piece has a linear gradient that starts from the base of the trapezoid.
  - #103 - #105: Rope Shapes
  - #106 - #118: Outline-only versions of hair pieces #92 - #105
  - #119: Square Outline
  - #120: Right Angle
  - #121: Triangle Outline
  - #122: V Outline
  - #123: Line Segment
  - #124: Circle Outline
  - #125 - #127: Arcs (Half, Quarter, Eighth)
  - #128: S-Bend Curve
  - #129 - #131: Solid to Clear Radial Gradients (Full, Half, Quarter)
    - These dedicated gradient pieces have unusual coloring behavior compared to regular hair pieces: the *first* color selects the gradient start color, while the second color sets the gradient end color. Linking the second color to the first results in a solid-to-clear gradient effect.
  - #132 - #134: Clear to Solid Radial Gradients (Full, Half, Quarter)
    - These act similarly to #129 - #131, but with the gradient running in the reverse direction (start color on the outside, end color in center).
  - #135 - #137: Solid to Clear Linear Gradients (Regular, Bidirectional, Rotated Bidirectional)


## Alpha 1
- Fixed the image attachment color picker being undismissable with some SWF attachments.
- Added neck and head visibility toggles.
- Added a body attachment point for ribbons and hair pieces that mimics the layering behavior of body-attached images.
- Added a forearm depth option that goes above the legs in sitting poses.

## v106 Changelogs

## Alpha 11
- Fixed the right foot Y offset slider not prompting immediate model visual updates.
- Fixed the shoulder visibility toggle not mirroring properly when linked.
- Attempted to fix issues with manual penis scaling / positioning (again).
- Enabled the erect penis size modifier slider when using manual penis scaling and offsetting.
- Changed the eyelid attachment point (option 2) to work independently of eye line visibility. This may require adjustment of existing face marks using this attach point.
- Added two new eye attachment options for face marks:
  - Attach point 5, indicated by the eye open/close slider icon, attaches to the eye sclera like attach point 4, but is properly masked by the eye opening and closing.
  - Attach point 6 attaches to the eyebrows.

### Alpha 10
- Hopefully fixed issues with gloves and earrings displaying incorrectly.
- Fixed skew slider for face marks attached to the eyes.
- Fixed undo when adjusting sliders while holding Shift.
- Fixed positioning for attach point selector buttons in widescreen mode.
- Fixed issues with positioning of mouth-attached face marks.
- Added sliders for adjusting thigh/leg/foot rotation, scaling, and offsetting.
- Added toggles for thigh/leg/foot visibility.
- Added color-coding and link toggles for the arm/hand scaling and offset sliders.
- Added a new eye attachment option for face marks.
  - This new mode layers above the sclera and either below everything else (depth 1) or above everything (depth 2).
  - Note that face marks attached using this mode currently are not masked or moved by the eye closing.
- Clicking on a ribbon, belt, image, hair piece, or face mark while holding Ctrl+Shift will now automatically navigate to the tab and slot for the clicked part.
  - Navigation may not work in certain cases where items are layered underneath other parts of a character (face, clothing, etc).
  - In particular, navigating to face marks on alternate attachment points (eyes, mouth, etc.) may not work at present due to face sprite layering.
- Disabled password checking for SWF item imports.

### Alpha 9
- Added face mark attachment settings for attachment to the eyelid(?), iris, and mouth.
- Added a toggle for allowing full 360-degree forearm rotation at all times.
- Added two new forearm depth settings for forcing the forearm to appear above the body at all times, and for forcing the forearm to appear below the upper arm and body at all times.
- Added backwards-compatibility import handling code for features added in v105.5 and the v106 alpha series. Specifically:
  - Codes from v104 and before now reset the transparency of character-attached ribbons, belts, and hair pieces when imported. (Transparency sliders for these parts were added in v105.5.)
  - Codes from the v105.x series (any sub-version) and before now reset the following settings to their default values when imported:
    - Penis position and scale sliders (added in v106a3)
    - Face mark line thicknesses (added in v106a5)
    - Fine-tuning sliders for character-attached ribbons, belts, and images (added in v106a6)
    - Fine-tuning sliders for global ribbons, belts, images, props, and arms (added in v106a6)
    - Transparency sliders for global ribbons, belts, and props (added in v106a6)
    - Eyebrow horizontal movement sliders (added in v106a6)
    - Forearm free rotation toggles (added in v106a9)
    - Face mark attachment options (added in v106a9)
- Added future-proofing during importing so that KKL can at least attempt to partially import codes containing unrecognized future data.
- Added currently-inactive code for embedding KKL-specific version numbers into import codes (will be enabled in a future v107-series release).

### Alpha 8
- Adds Ctrl-Shift-Z as an extra keybind for redo.
- Fixed issues with the ribbon up/down slot movement buttons not working properly.
- Fixed issues with the ribbon fine-tuning sliders moving items incorrectly in the horizontal direction.

### Alpha 7
- Adds hotkeys for undoing (Ctrl-Z) and redoing (Ctrl-Y) changes in the Kisekae workspace.
  - Changes to settings in the magnifying glass tab (zoom, camera settings, etc.) are not added to the undo timeline.
  - The undo timeline is cleared whenever a code is imported into any character in the workspace.
  - The maximum undo/redo timeline length has been set to 10,000 actions for now, but this may change based on user stability reports.
  - Unfortunately, there isn't an actual visible *button* for undo and redo yet in the UI, so for now the keyboard is the only way to access undo/redo functionality. Proper buttons for this are planned for future releases, though.

### Alpha 6
- Fixes an issue with certain ear types not displaying properly.
- Fixes an issue with color computation caching.
- Added horizontal positioning sliders for the eyebrows, available in both the green eyebrow tab and the blue facial expression tab.
- Added sliders for fine-tuning positions for ribbons, belts, image attachments, global arms, and global props.
  - These sliders can be used to adjust an item's position with much finer precision than the regular positioning sliders.
  - Sliders have been added for both character-attached parts and their global variants where applicable.
- Added alpha transparency sliders for global ribbons, belts, and props.
- Added a slider to the camera tab (magnifying glass) for reducing menu sizes.
- Added a toggle to the camera tab that makes all menus and tabs anchor themselves to the edges of the KKL window.
- Added a hotkey bound to P for resetting menu view options to default, in case the above two features unexpectedly break.

### Alpha 5
- Added a new line thickness option for facemarks. This is currently only used for some of the new facemarks added in this update, listed below.
- Added a new facemark:
  - Facemark #67: S-Bend (port of ribbon #128)
- Added an additional set of 25 new ribbons and facemarks:
  - Two variants of ribbon #103:
    - Ribbon #142 / Facemark #68: Halved Ribbon #103
    - #143 / #69: Quarter Ribbon #103
  - Eight uniform gradient types:
    - #144 / #70: Uniform Solid Color-to-Clear Radial Gradient
    - #145 / #71: Uniform Two-Color Radial Gradient
    - #146 / #72: Half Solid-to-Clear Radial Gradient (half of ribbon #144)
    - #147 / #73: Half Two-Color Radial Gradient (half of ribbon #145)
    - #148 / #74: Quarter Solid-to-Clear Radial Gradient
    - #149 / #75: Quarter Two-Color Radial Gradient
    - #150 / #76: Solid-to-Clear Linear Gradient
    - #151 / #77: Two-Color Linear Gradient
    - 'Uniform', in this case, means there is no bright/different-colored spot in the middle, unlike ribbon #103 and its variants.
    - Solid-to-clear gradients go from a single color to completely clear; two-color gradients go between two solid colors while maintaining a uniform transparency.
  - Nine outline-only shapes:
    - #152 / #78: Square Outline
    - #153 / #79: Trapezoid Outline
    - #154 / #80: Triangle Outline
    - #155 / #81: Circle Outline
    - #156 / #82: Half-Circle Outline
    - #157 / #83: Quarter-Circle Outline
    - #158 / #84: Rotated Quarter-Circle Outline
    - #159 / #85: Eighth-Circle Outline
    - #160 / #86: S-Bend Outline
    - These ribbons and marks are similar to existing shape ribbons, but have no inner fill color--all they have are border outlines, which can be adjusted using the border line thickness/color options like usual.
  - 6 line segments and curves:
    - #161 / #87: Straight Line Segment
    - #162 / #88: Half-Circle Curve
    - #163 / #89: Quarter-Circle Curve
    - #164 / #90: Rotated Quarter-Circle Curve
    - #165 / #91: Eighth-Circle Curve
    - #166 / #92: S-Bend Curve
    - These ribbons are essentially individual lines and curve segments. Their thickness and color can be configured using the ribbon border line thickness/color settings.

### Alpha 4
- Added visibility toggles for hands, forearms, and upper arms
- Added toggle for flipping hands and forearms
- Fixed reported issues with manual penis positioning
- Futureproofed the import/export menu in case new tabs are added later
- ~~(EXPERIMENTAL)~~ Added "Erase" and "Alpha" blend modes for speech bubbles. This is more of a proof-of-concept than anything:
  - "Erase" mode makes every pixel under a bubble (not including the background) invisible, based on the speech bubble's alpha value.
  - "Alpha" mode is similar, but operates in reverse, setting the alpha value for all objects covered by the bubble to the bubble's alpha value.
  - Using either of these blend modes will require KKL to perform more graphics processing than normal; expect significant lag whenever they're in use.

### Alpha 3
- Added settings for overriding penis size and for offsetting penis position
- Fixed issues with penis censor bars appearing

### Alpha 2
- Added a visibility toggle for the shoulders, available from the arm width tab
- Fixed autosaves being affected by export filter settings
- Improved performance when moving face marks, belts, and images between slots using the same technique as for ribbons and hair pieces
- ~~(EXPERIMENTAL)~~ Additional targeted performance improvements for code imports

### Alpha 1
- ~~(EXPERIMENTAL)~~ Improve performance when moving ribbons and hair pieces between slots
- ~~(EXPERIMENTAL)~~ Optimizations in the following areas to improve import performance:
  - Head rotation/position updates
  - Import code processing (skip characters that start and end as hidden during import)
  - Hair border line updates
  - Menu input processing

## v105.5 Changelog

- Upper arms, forearms, and hands can now be manually scaled and repositioned via sliders
- Added alpha transparency sliders for ribbons, hair pieces, and belts
- Added new attachment point settings for image attachments
  - Images using the modded attachment points have a wide variety of layering options for flexibility
- Added a new layering option for body-attached images that places images below the forearms but still above the rest of the body
- Added a mouth visibility toggle button
- Added the following shapes:
  - Ribbons:
    - #124: a concave curve
    - #125: a semicircle
    - #126: a quarter-circle
    - #127: an eighth-circle
    - #128: an S-bend
    - #129: a ring / donut shape
    - #130: half of a ring
    - #131: a quarter of a ring
    - #132: an eighth of a ring
    - #133: a copy of the type 12 rope belt shape, minus the internal lines
    - #134: type 11 rope belt shape, minus internal lines
    - #135: type 10 rope belt shape, minus internal lines
    - #136: a trapezoid
    - #137: a rotated quarter circle (same as ribbon #126, but has different behavior when resized)
    - #138: a halved version of ribbon #74
    - #139: a halved version of ribbon #102
    - #140: a rotated quarter-ring (same as #131, but has different behavior when resized)
    - #141: a rotated eighth-ring (same as #132, but has different behavior when resized)
  - Face Marks:
    - #60: a ring / donut shape (same as ribbon #129)
    - #61: a quarter ring / donut (same as ribbon #131)
    - #62: a quarter circle (same as ribbon #126)
    - #63: a rotated quarter circle (same as ribbon #137)
    - #64: a halved version of ribbon #74 (same as ribbon #138)
    - #65: a copy of ribbon #102
    - #66: a halved version of ribbon #102 (same as ribbon #139)
  - Hands:
    - #58: an empty stump (useful for building custom hands)
    - #59: an edit of hand 05 that removes the pinky
    - #60: an edit of hand 18 that removes the thumb (useful for depicting characters holding things)
- Removed the "Reset" and "Random" buttons on each tab
