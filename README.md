<p float = "center", align="center ">
     <img src="https://user-images.githubusercontent.com/80672702/215413707-d967abab-683f-432d-aba3-0262455bd8b8.png" width = "250" />
</p>

## About the project
Phone dialer app with neumorphic, eye-pleasing design with support for dark theme.

This project includes custom-made widgets using special package for building apps in neumorphic design.

<p float="center", align="justify ">
  <img src="https://user-images.githubusercontent.com/80672702/215427637-f08ecfcd-6ac9-458a-8aef-7cbe9ff64f0d.gif" width="200" />
  <img src="https://user-images.githubusercontent.com/80672702/215428558-a8dcfb74-b807-499a-9fac-789798d141a9.gif" width="200" />
  <img src="https://user-images.githubusercontent.com/80672702/215428692-1b189971-72a7-4033-82ce-bcb4840c0e20.gif" width="200" />
  <img src="https://user-images.githubusercontent.com/80672702/215428775-532b5e05-01e0-492d-b6a2-ad17a6b7b1aa.gif" width="200" />
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


**Step 1:**

Download or clone this repo by using the link below:

```
https://github.com/TBR-Group-software/neumorphic_phone_dialer
```

**Step 2:**

Go to project root and execute the following command in console to get the required dependencies: 

```
flutter pub get 
```
