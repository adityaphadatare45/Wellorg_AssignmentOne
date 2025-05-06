# wellorg_one

# 🌐 WellOrg Assignment One

A Flutter-based multilingual app that displays a product list with support for **English**, **French**, and **Arabic** (with full RTL support). Built using Flutter and `provider` for state management.

---

## 🚀 Features

- 📱 **Beautiful Product List UI**
  - Displays product name, image, and a long description.
- 🌍 **Multi-language Support**
  - English (default)
  - French 🇫🇷
  - Arabic 🇸🇦 (Right-to-left layout)
- 🔁 **Live Language Switching**
  - Dropdown button to instantly change language at runtime.
- 📸 **Product Assets**
  - Uses image assets like mobile, laptop, etc.

---

## 🧱 Tech Stack

- **Flutter**
- **Provider** (State management)
- **Flutter Localization**
- **Assets for product images**
- **Firebase (optional for advanced versions)**

---

## 📂 Project Structure

```bash
lib/
├── main.dart
├── models/
│   └── product.dart
├── providers/
│   └── language_provider.dart
├── screens/
│   └── home_screen.dart
├── widgets/
│   ├── product_tile.dart
│   └── language_selector.dart
└── localization/
    ├── en.json
    ├── fr.json
    └── ar.json
assets/
└── mobile.png
└── laptop.png
pubspec.yaml


## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
