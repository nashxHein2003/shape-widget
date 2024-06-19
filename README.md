# Shaped Widgets

A simple customizable shaped widget for Flutter.

## Installation

Add `shapes_widget` to your `pubspec.yaml`:

```yaml
dependencies:
  shapes_widget:
    version: ^1.0.4
```

## Usage

### Single Dot Widget

```dart
import 'package:shapes_widget/shaped_widget/single_dot.dart';

Dot(
  size: 20.0,
  color: Colors.blue,
  borderColor: Colors.red,
  borderWidth: 2.0,
);

```

### Dash Line Widget

```dart
import 'package:shapes_widget/shaped_widget/dash_line.dart';

Dash(
  length: 100.0,
  thickness: 2.0,
  color: Colors.blue,
  dashLength: 5.0,
  dashGap: 3.0,
);

```

### Triangle Widget

```dart
import 'package:shapes_widget/shaped_widget/triangle.dart';

Triangle(
  size: 50.0,
  color: Colors.green,
  isEquilateral: true,
  borderWidth: 2.0,
  borderColor: Colors.red,
);

```

### Explanation

- **Installation**: Clearly instructs users how to add `shapes_widget` to their Flutter project by specifying the version (`^1.0.1`). This version range (`^1.0.1`) allows users to automatically fetch compatible versions up to, but not including, `2.0.0`.

- **Version**: Provides a dedicated section where users can easily reference the recommended version to use in their `pubspec.yaml`.

Including this section makes your README.md more informative and user-friendly, ensuring that developers understand how to integrate and stay updated with the latest version of your `shapes_widget` package.
