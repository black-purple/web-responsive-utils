import 'package:flutter/material.dart';

/// Breakpoints for different screen sizes
const _xlMinWidth = 1280;
const _mdMinWidth = 768;
const _smMinWidth = 640;

class WebResponsiveScaffold extends StatelessWidget {
  /// Small layout widgets
  final Widget? smallLayoutWidget;
  final AppBar? smallLayoutAppBar;
  final Drawer? smallLayoutDrawer;
  final FloatingActionButton? smallLayoutFAB;

  /// Medium layout widgets
  final Widget? mediumLayoutWidget;
  final AppBar? mediumLayoutAppBar;
  final Drawer? mediumLayoutDrawer;
  final FloatingActionButton? mediumLayoutFAB;

  /// Xlarge layout widgets
  final Widget? xLargeLayoutWidget;
  final AppBar? xLargeLayoutAppBar;
  final Drawer? xLargeLayoutDrawer;
  final FloatingActionButton? xLargeLayoutFAB;

  /// ignore: prefer_const_constructors_in_immutables
  WebResponsiveScaffold({
    super.key,
    this.mediumLayoutWidget,
    this.smallLayoutWidget,
    this.xLargeLayoutWidget,
    this.smallLayoutAppBar,
    this.mediumLayoutAppBar,
    this.xLargeLayoutAppBar,
    this.smallLayoutDrawer,
    this.smallLayoutFAB,
    this.mediumLayoutDrawer,
    this.mediumLayoutFAB,
    this.xLargeLayoutDrawer,
    this.xLargeLayoutFAB,
  });

  /// Rendering the appropriate layout widget for each screen size
  Widget _renderAppropriateLayout(BuildContext context) {
    if (ResponsiveScreen.isSmall(context) &&
        ResponsiveScreen.isXSmall(context)) {
      return smallLayoutWidget ?? Container(color: Colors.red);
    } else if (ResponsiveScreen.isMedium(context)) {
      return mediumLayoutWidget ?? Container(color: Colors.green);
    } else if (ResponsiveScreen.isXLarge(context)) {
      return xLargeLayoutWidget ?? Container(color: Colors.amber);
    } else {
      return smallLayoutWidget ?? Container(color: Colors.orange);
    }
  }

  /// Rendering the appropriate appbar for each screen size
  AppBar _renderAppropriateAppBar(BuildContext context) {
    if (ResponsiveScreen.isSmall(context) &&
        ResponsiveScreen.isXSmall(context)) {
      return smallLayoutAppBar ??
          AppBar(
            title: const Text("Small Layout"),
            centerTitle: true,
          );
    } else if (ResponsiveScreen.isMedium(context)) {
      return mediumLayoutAppBar ??
          AppBar(
            title: const Text("Medium Layout"),
            centerTitle: true,
          );
    } else if (ResponsiveScreen.isXLarge(context)) {
      return xLargeLayoutAppBar ??
          AppBar(
            title: const Text("XLarge Layout"),
            centerTitle: true,
          );
    } else {
      return smallLayoutAppBar ??
          AppBar(
            title: const Text("Small Layout"),
            centerTitle: true,
          );
    }
  }

  /// Rendering the appropriate drawer for each screen size
  Drawer _renderAppropriateDrawer(BuildContext context) {
    if (ResponsiveScreen.isSmall(context) &&
        ResponsiveScreen.isXSmall(context)) {
      return smallLayoutDrawer ??
          Drawer(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [Text("Small Layout Drawer")],
            ),
          );
    } else if (ResponsiveScreen.isMedium(context)) {
      return mediumLayoutDrawer ??
          Drawer(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [Text("Medium Layout Drawer")],
            ),
          );
    } else if (ResponsiveScreen.isXLarge(context)) {
      return xLargeLayoutDrawer ??
          Drawer(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [Text("XLarge Layout Drawer")],
            ),
          );
    } else {
      return smallLayoutDrawer ??
          Drawer(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [Text("Small Layout Drawer")],
            ),
          );
    }
  }

  /// Rendering the appropriate floating action button for each screen size
  Widget _renderAppropriateFAB(BuildContext context) {
    if (ResponsiveScreen.isSmall(context) &&
        ResponsiveScreen.isXSmall(context)) {
      return smallLayoutFAB ??
          FloatingActionButton(
            onPressed: () => ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                duration: Duration(milliseconds: 500),
                content: Text("Clicked FAB of Small Layout"),
              ),
            ),
            child: const Icon(Icons.fingerprint_rounded),
          );
    } else if (ResponsiveScreen.isMedium(context)) {
      return FloatingActionButton(
        onPressed: () => ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            duration: Duration(milliseconds: 500),
            content: Text("Clicked FAB of Medium Layout"),
          ),
        ),
        child: const Icon(Icons.fingerprint_rounded),
      );
    } else if (ResponsiveScreen.isXLarge(context)) {
      return xLargeLayoutFAB ??
          FloatingActionButton(
            onPressed: () => ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                duration: Duration(milliseconds: 500),
                content: Text("Clicked FAB of XLarge Layout"),
              ),
            ),
            child: const Icon(Icons.ads_click_rounded),
          );
    } else {
      return smallLayoutFAB ??
          FloatingActionButton(
            onPressed: () => ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                duration: Duration(milliseconds: 500),
                content: Text("Clicked FAB of Small Layout"),
              ),
            ),
            child: const Icon(Icons.fingerprint_rounded),
          );
    }
  }

  @override
  Widget build(BuildContext context) {
    /// Rendering different UI Elements depending on the screen size detected
    return Scaffold(
      appBar: _renderAppropriateAppBar(context),
      body: _renderAppropriateLayout(context),
      drawer: _renderAppropriateDrawer(context),
      floatingActionButton: _renderAppropriateFAB(context),
    );
  }
}

class WebResponsiveLayout extends StatelessWidget {
  /// Small layout widget
  final Widget? smallLayoutWidget;

  /// Medium layout widget
  final Widget? mediumLayoutWidget;

  /// Xlarge layout widget
  final Widget? xLargeLayoutWidget;

  const WebResponsiveLayout({
    super.key,
    this.smallLayoutWidget,
    this.mediumLayoutWidget,
    this.xLargeLayoutWidget,
  });

  /// Rendering approrpiate layouts for respective screen sizes
  Widget _renderAppropriateLayout(BuildContext context) {
    if (ResponsiveScreen.isSmall(context) &&
        ResponsiveScreen.isXSmall(context)) {
      return smallLayoutWidget ??
          Center(
            child: Container(
              color: Colors.red,
              child: const Text("Small"),
            ),
          );
    } else if (ResponsiveScreen.isMedium(context)) {
      return mediumLayoutWidget ??
          Center(
            child: Container(
              color: Colors.green,
              child: const Text("Small"),
            ),
          );
    } else if (ResponsiveScreen.isXLarge(context)) {
      return xLargeLayoutWidget ??
          Center(
            child: Container(
              color: Colors.amber,
              child: const Text("Small"),
            ),
          );
    } else {
      return smallLayoutWidget ??
          Center(
            child: Container(
              color: Colors.orange,
              child: const Text("Small"),
            ),
          );
    }
  }

  @override
  Widget build(BuildContext context) {
    /// Rendering appropriate layout for each screen size
    return _renderAppropriateLayout(context);
  }
}

class ResponsiveScreen {
  /// Check if the screen size is small
  static bool isSmall(BuildContext context) {
    return MediaQuery.of(context).size.width >= _smMinWidth &&
        MediaQuery.of(context).size.width < _mdMinWidth;
  }

  /// Check if the screen size is medium
  static bool isMedium(BuildContext context) {
    return MediaQuery.of(context).size.width >= _mdMinWidth &&
        MediaQuery.of(context).size.width < _xlMinWidth;
  }

  /// Check if the screen size is xlarge
  static bool isXLarge(BuildContext context) {
    return MediaQuery.of(context).size.width >= _xlMinWidth;
  }

  /// Check if the screen size is xsmall
  static bool isXSmall(BuildContext context) {
    return MediaQuery.of(context).size.width < _smMinWidth;
  }
}
