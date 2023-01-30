<p float = "center", align="center ">
     <img src="https://user-images.githubusercontent.com/80672702/215413707-d967abab-683f-432d-aba3-0262455bd8b8.png" width = "250" />
</p>

## About the project
Phone dialer app with neumorphic, eye-pleasing design with support for dark theme.

This project includes custom-made widgets using special package for building apps in neumorphic design.

<p float="center", align="justify ">
  <img src="https://user-images.githubusercontent.com/80672702/215415407-1ea8e1b5-3b38-4395-b759-618bc00e6cc6.gif" width="200" />
  <img src="https://user-images.githubusercontent.com/80672702/215418726-80c066b2-0f84-4469-baa7-1efe10a6599c.gif" width="200" />
  <img src="https://user-images.githubusercontent.com/80672702/215419868-8a7c2c75-08b0-4b3d-b6f7-924d981e77ac.gif" width="200" />
  <img src="https://user-images.githubusercontent.com/80672702/215421834-efcad6bf-03ac-440c-873b-838c2fbe6de9.gif" width="200" />
</p>

## Features
- Soft, eye-pleasing design.
- Dark theme.
- Calls.
- Firebase sign in.
- Contacts search.

## Call button
```dart
NeumorphicButton(
      minDistance: -3,
      padding: const EdgeInsets.all(7),
      style: NeumorphicStyle(
        color: AppTheme.of(context).colors.buttonColor,
        shadowDarkColor: AppTheme.of(context).colors.shadowDarkColor,
        shadowLightColor: AppTheme.of(context).colors.shadowLightColor,
        depth: 100,
        intensity: 10,
        boxShape: const NeumorphicBoxShape.circle(),
      ),
      onPressed: onTap,
      child: Center(
        child: Neumorphic(
          style: NeumorphicStyle(
            shape: NeumorphicShape.concave,
            color: AppTheme.of(context).colors.buttonColor,
            shadowDarkColor: AppTheme.of(context).colors.shadowDarkColor,
            shadowLightColor: AppTheme.of(context).colors.shadowLightColor,
            border: NeumorphicBorder(
              width: 1,
              color: AppTheme.of(context).colors.borderColor,
            ),
            boxShape: const NeumorphicBoxShape.circle(),
          ),
          child: Neumorphic(
            margin: const EdgeInsets.all(8.0),
            style: NeumorphicStyle(
              shadowDarkColor: AppTheme.of(context).colors.shadowDarkColor,
              shadowLightColor: AppTheme.of(context).colors.shadowLightColor,
              border: NeumorphicBorder(
                width: 2,
                color: AppTheme.of(context).colors.liteOrange,
              ),
              shape: NeumorphicShape.concave,
              surfaceIntensity: 0.5,
              color: AppTheme.of(context).colors.darkOrange,
              boxShape: const NeumorphicBoxShape.circle(),
            ),
            child: Center(
              child: child,
            ),
          ),
        ),
      ),
    );
```

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
