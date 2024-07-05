SwiftBloc is built on top of flutter bloc, you can easily use it be more productive in your app development

## Features

> Easily extend SwiftBloc and use your CustomBloc swiftly

## Getting started

TODO: List prerequisites and provide or point to information on how to
start using the package.

## Usage

```dart
// user_model.dart
class UserModel extends Equatable {
  final String? lastName;
  final String? firstName;
  final String? otherName;

  const UserModel({
    this.lastName,
    this.firstName,
    this.otherName,
  });

  @override
  List<Object?> get props => [lastName, firstName, otherName];
}

// user_bloc.dart

// overide SwiftBloc
class UserBloc extends SwiftBloc<UserModel> {}

// overide SwiftEvent
class UserEvent extends SwiftEvent<UserModel> {}

// Define UserState as type of SwiftState<UserModel>
typedef UserState = SwiftState<UserModel>;

//Use your bloc anywhere

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<UserBloc>(
          create: (context) => UserBloc(),
        )
      ],
      child: const MaterialApp(
        title: 'Material App',
        home: CustomPage(),
      ),
    );
  }
}

class CustomPage extends StatelessWidget {
  const CustomPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Page"),
        centerTitle: true,
      ),
      body: Center(
        child: BlocSelector<UserBloc, UserState, UserModel?>(
          selector: (state) {
            return state.model;
          },
          builder: (context, userModel) {
            return Column(
              children: [
                Text(userModel?.lastName ?? ''),
                Text(userModel?.firstName ?? ''),
                Text(userModel?.otherName ?? ''),
              ],
            );
          },
        ),
      ),
    );
  }
}
```

## Additional information

This package is still in development; expect frequent update<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
--><!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->
