# Ticket to Ride

CS340 Group Project: Ticket to Ride

> **Note:** Please add to / change this file as needed so that we can all stay on the same page

## Getting Started

For help getting started with Flutter, view the online
[documentation](https://flutter.io/).

## Relevant code

All the relevant code is contained in the `lib` folder, with the exception of the `pubspec.yaml` file.

Besides the main.dart file, the files within the `lib` folder  either define a "page" or a "widget". **Pages** are top level navigational files, while **widgets** usually handle a specific part of functionality and are incorporated into pages.

These files follow the naming scheme "object_action_type.dart".
The **object** is the main or topmost object of the file (e.g. account, player, game, etc.).
The **action** is the action performed on the object (e.g. login, view, etc.). The **type** is either a page or a widget. So, an example of a page name that handles the login for an account could be `account_login_page.dart`.

### main.dart

`main.dart` is the topmost file and runs the program. This file does the following:
* defines navigational routes and their associated view files
* wraps the entire app in the `GlobalContext` widget, which contains information that the whole app needs to run (e.g. the current logged in user, the current game idea, etc.)
* defines the initial screen ("home")

### theme folder

The `theme` folder contains assets pertaining to the app theme, mainly colors (at this point).

### pubspec.yaml

The only other file that is particularly important is the `pubspec.yaml` file at the top level.

If you need to **import a new package** add the package name under `dependencies` with the required release (if needed). For example:

```
dependencies:
  path_provider: 0.4.1
```

Then run `flutter packages get` in the command line to be able to use the packages in the project.

If you need to **import image assets** from the `images` folder, add the local file path under `assets`. For example:

```
assets:
 - images/a_dot_burr.jpeg
 - images/a_dot_ham.jpeg
```

These are just the basics - you can read about more in depth imports in the [flutter documentation](https://flutter.io/assets-and-images/).

## Using GlobalContext

All lower level widgets are able to access and update this information by using `GlobalContext.of(context)` followed by the corresponding update function defined in `global_context_widget.dart`.

## Running on an iOS device

use woodfieldswarriors@gmail.com as the apple id

# Reference Links

https://flutter.io/testing/

# Code Snippets

Full form example:

```
  import 'package:flutter/material.dart';
  import 'colors.dart';
  import 'global_context_widget.dart';
  // import api

  class CharacterCreatePage extends StatefulWidget {
    CharacterCreatePage({Key key}) : super(key: key);

    @override
    _CharacterCreateState createState() => new _CharacterCreateState();
  }

  class _CharacterCreateState extends State<CharacterCreatePage> {

    @override
    Widget build(BuildContext context) {

      return new Scaffold(
        appBar: new AppBar(
          title: new Text(
            'Add Character',
          ),
          backgroundColor: Colors.white,
          iconTheme: new IconThemeData(
            color: playbackOrange400,
          ),
          textTheme: new TextTheme(
            title: new TextStyle (
              color: Colors.black.withOpacity(0.8)
            )
          ),
        ),
        body: Padding(
          padding: new EdgeInsets.symmetric(horizontal: 30.0),
          child: CreateCharacterForm(),
        )

      );
    }
  }

  class CreateCharacterForm extends StatefulWidget {
    @override
    CreateCharacterFormState createState() {
      return CreateCharacterFormState();
    }
  }

  class CreateCharacterFormState extends State<CreateCharacterForm> {

    final _formKey = GlobalKey<FormState>();
    var _character = Character();

    _saveProject(form) async {
      if (form.validate()) {
        form.save();

        Scaffold
            .of(context)
            .showSnackBar(SnackBar(content: Text('Saving Character')));

        // save data here

        Navigator.pop(context);
      }
    }

    @override
    Widget build(BuildContext context) {

      return Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextFormField(
              autofocus: true,
              decoration: InputDecoration(
                labelText: 'Character Name',
              ),
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter a character name.';
                }
              },
              onSaved: (String value) {
                _character.displayName = value;
              }
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Character Number'
              ),
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter a character number.';
                }
              },
              onSaved: (String value) {
                _character.number = value;
              }
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Talent Name'
              ),
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter the talent\'s name.';
                }
              },
              onSaved: (String value) {
                _character.talentDisplayName = value;
              }
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: RaisedButton(
                onPressed: () {_saveProject(_formKey.currentState);},
                child: Text(
                  'Save Character',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }
  }


```
