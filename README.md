# dev_folio

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## Building for Web for deep linking

```
flutter build web
mkdir -p build/web/.well-known
cp ./web/.well-known/assetlinks.json build/web/.well-known/
cp ./web/.well-known/apple-app-site-association build/web/.well-known/
touch build/web/.nojekyll
```
