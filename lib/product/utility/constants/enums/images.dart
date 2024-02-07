///Image from web Urls
enum ImageEnum {
  ///image path from google
  google(
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUQHqtqcad2cTUCjCqHAc4BzzQaeo9bWEhk-veV8c3kQ&s',
  );

  ///Image url
  final String url;

  const ImageEnum(this.url);
}
