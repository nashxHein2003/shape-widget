# Shaped Widgets

A simple customizable shaped widget for Flutter.

## Usage

### Single Dot Widget

### Dash Line Widget

### Triangle Widget

```dart
import 'package:shapes_widget/shaped_widget/single_dot.dart';

Dot(
  size: 20.0,
  color: Colors.blue,
  borderColor: Colors.red,
  borderWidth: 2.0,
);

import 'package:shapes_widget/shaped_widget/dash_line.dart';

Dash(
  length: 100.0,
  thickness: 2.0,
  color: Colors.blue,
  dashLength: 5.0,
  dashGap: 3.0,
);

import 'package:shapes_widget/shaped_widget/triangle.dart';

Triangle(
  size: 50.0,
  color: Colors.green,
  isEquilateral: true,
  borderWidth: 2.0,
  borderColor: Colors.red,
);

```
