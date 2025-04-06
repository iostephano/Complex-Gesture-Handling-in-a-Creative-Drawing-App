## **Description:**

This UIKit Mini Project shows how to create a gesture-based drawing canvas. This app mimics the fluid user experience found in professional creative apps by supporting zoom, pan, rotate, and reset gestures, all smoothly applied on a custom grid canvas.

In drawing and design applications, users expect to be able to interact with the canvas using natural gestures without losing an ounce of control and precision. This project explores how to do that:

- Implement simultaneous multitouch gestures without interference.
- Apply clean and composable transformations using `CGAffineTransform`.
- Provide visual feedback using a grid-based canvas drawn with Core Graphics.

## Project Structure

- `CanvasView.swift` :Custom UIView that draws a grid background using Core Graphics.
- `ViewController.swift` : Sets up and manages gesture recognizers for the canvas.
- `Main.storyboard` : Not used — all UI is created programmatically.

## How It Works

The app supports the following gestures on the canvas view:

| Gesture | Description | Recognizer Used |
| --- | --- | --- |
| Pinch to Zoom | Scale the canvas in/out using two fingers | `UIPinchGestureRecognizer` |
| Two-Finger Rotation | Rotate the canvas naturally with two fingers | `UIRotationGestureRecognizer` |
| Two-Finger Pan | Drag the canvas to move around | `UIPanGestureRecognizer` |
| Double Tap to Reset | Instantly reset all transformations | `UITapGestureRecognizer` |
- All transformations are applied to the canvas using a single `CGAffineTransform`.
- Gesture states are updated incrementally to ensure smooth, real-time interaction.
- The background grid helps visualize how transformations affect the canvas.

## Preview

- Pinch to zoom
- Rotate with two fingers
- Pan using two fingers
- Double-tap to reset canvas

## Ideas for Extension

Here are some ideas to expand the functionality:

- Add Apple Pencil support to draw lines or shapes.
- Display current scale and rotation values as overlays.
- Add an on-screen button to reset the canvas (for accessibility).
- Allow changing the grid color, spacing, or type (dot grid, isometric, etc.).
- Save and restore canvas state between sessions.

## License

MIT License. Feel free to use and modify.
