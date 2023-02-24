enum LottieItems {
  themeChange,
  likes, 
  home,
  search,
  settings,
}

extension LottieItemsExtension on LottieItems {
  String _path() {
    switch (this) {
      case LottieItems.themeChange:
        return 'lottie_theme_change';
      case LottieItems.likes:
        return 'fillingHeartTransparant';
      case LottieItems.home:
        return 'home';
      case LottieItems.search:
        return 'search';
      case LottieItems.settings:
        return 'settings';
    }
  }
  
  String get lottiePath => 'assets/lottie/${_path()}.json';
}
