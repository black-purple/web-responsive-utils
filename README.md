# Web Responsive Utilities

A flutter package to help you develop for the web more intuitively and efficiently when it comes to responsive webapps.

This package has ```two responsive widgets``` and ```one utility class``` that you can use to your liking.
+ Responsive Widgets:
  + ```WebResponsiveScaffold```
  + ```WebResponsiveLayout```
+ Utility Class
  + ```ResponsiveScreen```


Support me on Patreon
[![Patreon](https://img.shields.io/static/v1?label=%20&message=Patreon&color=%23FF424D&labelColor=%23ff000000&logo=patreon)
](https://patreon.com/blackpurpledev)


# Code Snippets

## Responsive Widgets: ```WebResponsiveScaffold```

Gives you the possibility of replacing your Scaffold widgets entirely

And you can pass in parameters for each screen size (
  
parameters such as : **AppBar**, **Drawer**, **Scaffold Body** and a **Floating Action Button**
  
)

>```dart
> import 'package:flutter/material.dart';
>import 'package:testing_web/web_responsive_utils.dart';
>
>void main() => runApp(const MyApp());
>
>class MyApp extends StatelessWidget {
>  const MyApp({super.key});
>
>  @override
>  Widget build(BuildContext context) {
>    return MaterialApp(
>      home: WebResponsiveScaffold(
>          smallLayoutAppBar: /* Your Custom Widget */,
>          smallLayoutDrawer: /* Your Custom Widget */,
>          smallLayoutFAB: /* Your Custom Widget */,
>          smallLayoutWidget: /* Your Custom Widget */,
>          mediumLayoutAppBar: /* Your Custom Widget */,
>          mediumLayoutDrawer: /* Your Custom Widget */,
>          mediumLayoutFAB: /* Your Custom Widget */,
>          mediumLayoutWidget: /* Your Custom Widget */,
>          xLargeLayoutAppBar: /* Your Custom Widget */,
>          xLargeLayoutDrawer: /* Your Custom Widget */,
>          xLargeLayoutFAB: /* Your Custom Widget */,
>          xLargeLayoutWidget: /* Your Custom Widget */,
>        ),
>    );
>  }
>}
>```

## Responsive Widgets: ```WebResponsiveLayout```

Gives you the possibility of having a different widget for each screen size

>```dart
> import 'package:flutter/material.dart';
>import 'package:testing_web/web_responsive_utils.dart';
>
>void main() => runApp(const MyApp());
>
>class MyApp extends StatelessWidget {
>  const MyApp({super.key});
>
>  @override
>  Widget build(BuildContext context) {
>    return MaterialApp(
>      home: Scaffold(
>         body: WebResponsiveLayout(
>           smallLayoutWidget: /* Your Custom Widget */,
>           mediumLayoutWidget: /* Your Custom Widget */,
>           xLargeLayoutWidget: /* Your Custom Widget */,
>         ),
>       ),
>     );
>   }
>}
>```

## Responsive Utility: ```ResponsiveScreen```

>```dart
> if (ResponsiveScreen.isSmall(context)) {/*Your code here*/}
> if (ResponsiveScreen.isXSmall(context)) {/*Your code here*/}
> if (ResponsiveScreen.isMedium(context)) {/*Your code here*/}
> if (ResponsiveScreen.isXLarge(context)) {/*Your code here*/}
>```