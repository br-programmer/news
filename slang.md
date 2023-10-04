# App translations

https://pub.dev/packages/slang

Type-safe i18n solution using JSON files.

To generate the typed code and text translations we must run

```shell
flutter pub run slang
```

now you can use the text translations in dart code

Example:

```dart
Text(texts.home.home);
```

The main idea is create a new JSON file for each new feature instead add additional values into the `misc.json` file.

Example for the features circles.

```yaml
i18n/
en/
home.json
es/
home.json
```

> IMPORTANT: slang does not support \_ or - for file names. You must use camelcase. Example `myFeatureName.json`

---

## Generate translations files to be uploaded to the API

run

```shell
dart run ./packages/ourglass_slang/bin/ourglass_slang.dart
```

The above command will merge every json file for each locale in one single json file and them will be saved into `i18n_generated` folder.
