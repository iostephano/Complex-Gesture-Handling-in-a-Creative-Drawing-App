## Project Structure

- `AppDelegate.swift`: App lifecycle management.
- `SceneDelegate.swift`: Scene setup (iOS 13+).
- `ViewController.swift`: Adds and displays the custom CanvasView.
- `CanvasView.swift`: The UIView subclass with pan, pinch, and rotate gesture handling.

## How It Works

The `CanvasView` class sets up three gesture recognizers:

- `UIPanGestureRecognizer` for dragging.
- `UIPinchGestureRecognizer` for zooming.
- `UIRotationGestureRecognizer` for rotation.

All gestures are set to recognize **simultaneously** using `UIGestureRecognizerDelegate`.

## Preview

| Gesture | Description |
| --- | --- |
| Pan | Move the blue square by dragging. |
| Pinch | Zoom in or out using two fingers. |
| Rotate | Rotate the view using two fingers. |

## Ideas for Extension

- Add a reset button to restore original position.
- Support for multiple canvas items.
- Drawing capabilities or physics-based animations.

## 📄 License

MIT License. Feel free to use and modify.
