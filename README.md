# Github User Search
An app that displays information using the Github Search API.

### Feature
- First Page: List of users by search -> Infinite Scroll, REST api call
- Second Page: The first repository of the clicked user's repository list -> REST api call

### Environment
- IDE : Android Studio
- Flutter : 3.13.9
- Dart : 3.1.5

### Tech tools
- State Management : [Provider (Flutter Favorite)](https://pub.dev/packages/provider)
- Data Class, Json Serialization, Code Generation : [Freezed (Flutter Favorite)](https://pub.dev/packages/freezed#fromjson---classes-with-multiple-constructors)
- Image Cache : [Cache Network Image](https://pub.dev/packages/cached_network_image)
- Network : [Dio](https://pub.dev/packages/dio)