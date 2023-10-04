
news_build:
	flutter pub get packages && dart run build_runner build --delete-conflicting-outputs && dart run slang && dart run ./packages/news_slang/bin/news_slang.dart

news_slang:	
	flutter pub get packages && dart run slang && dart run ./packages/news_slang/bin/news_slang.dart