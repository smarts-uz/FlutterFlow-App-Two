import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['uz', 'en', 'ru'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? uzText = '',
    String? enText = '',
    String? ruText = '',
  }) =>
      [uzText, enText, ruText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // HomePage
  {
    'eb3u478v': {
      'uz': 'Your notes',
      'en': '',
      'ru': '',
    },
    'cistf2cx': {
      'uz': 'Home',
      'en': '',
      'ru': '',
    },
  },
  // RegisterPage
  {
    '8xxkzjfo': {
      'uz': 'Register by Supabse',
      'en': '',
      'ru': '',
    },
    '8i1cdiit': {
      'uz': 'Full name',
      'en': '',
      'ru': '',
    },
    'qlqnbwjw': {
      'uz': 'Email',
      'en': '',
      'ru': '',
    },
    'q8k4rzq4': {
      'uz': 'Password',
      'en': '',
      'ru': '',
    },
    '286n3bw6': {
      'uz': 'Confirm password',
      'en': '',
      'ru': '',
    },
    'sx1odwil': {
      'uz': 'Field is required',
      'en': '',
      'ru': '',
    },
    'znm3x4fm': {
      'uz': 'Please choose an option from the dropdown',
      'en': '',
      'ru': '',
    },
    'k16do29g': {
      'uz': 'Field is required',
      'en': '',
      'ru': '',
    },
    'ih3l3xd3': {
      'uz': 'You must use @ this character.',
      'en': '',
      'ru': '',
    },
    'noepksx5': {
      'uz': 'Please choose an option from the dropdown',
      'en': '',
      'ru': '',
    },
    'v7r4vkd4': {
      'uz': 'Field is required',
      'en': '',
      'ru': '',
    },
    'aeftmfkn': {
      'uz': 'Password requires at least 8 charachters.',
      'en': '',
      'ru': '',
    },
    'o8zebw4j': {
      'uz': 'Please choose an option from the dropdown',
      'en': '',
      'ru': '',
    },
    '5dlbmfk9': {
      'uz': 'Field is required',
      'en': '',
      'ru': '',
    },
    '5p661zex': {
      'uz': 'Password requires at least 8 charachters.',
      'en': '',
      'ru': '',
    },
    '27bug230': {
      'uz': 'Please choose an option from the dropdown',
      'en': '',
      'ru': '',
    },
    'o5d9g6k6': {
      'uz': 'Sign UP',
      'en': '',
      'ru': '',
    },
    'vbian9o9': {
      'uz': 'Home',
      'en': '',
      'ru': '',
    },
  },
  // CreateNotePage
  {
    'i84xa3pe': {
      'uz': 'Create  note',
      'en': '',
      'ru': '',
    },
    '1ip6hknm': {
      'uz': 'ID',
      'en': '',
      'ru': '',
    },
    '2vhd3v5s': {
      'uz': 'Title',
      'en': '',
      'ru': '',
    },
    'okgcqfqg': {
      'uz': 'Descripton',
      'en': '',
      'ru': '',
    },
    'mgvvtaip': {
      'uz': 'Add note',
      'en': '',
      'ru': '',
    },
    '9a639bbp': {
      'uz': 'Field is required',
      'en': '',
      'ru': '',
    },
    's6l98qj0': {
      'uz': 'Please choose an option from the dropdown',
      'en': '',
      'ru': '',
    },
    'n7m2no6r': {
      'uz': 'Field is required',
      'en': '',
      'ru': '',
    },
    'e7qp8ky0': {
      'uz': 'Please choose an option from the dropdown',
      'en': '',
      'ru': '',
    },
    '5vxoefta': {
      'uz': 'Field is required',
      'en': '',
      'ru': '',
    },
    'fv468lyh': {
      'uz': 'Please choose an option from the dropdown',
      'en': '',
      'ru': '',
    },
    '7lhjn2v3': {
      'uz': 'Home',
      'en': '',
      'ru': '',
    },
  },
  // LoginPage
  {
    '3nfm3eoh': {
      'uz': 'Supabase and FuttetFlow',
      'en': '',
      'ru': '',
    },
    'ng40goww': {
      'uz': 'Email',
      'en': '',
      'ru': '',
    },
    'a8kw6x9u': {
      'uz': 'Password',
      'en': '',
      'ru': '',
    },
    '2gwp5mbm': {
      'uz': 'Field is required',
      'en': '',
      'ru': '',
    },
    '1n2w0g1i': {
      'uz': 'Please choose an option from the dropdown',
      'en': '',
      'ru': '',
    },
    '5nslo8x8': {
      'uz': 'Field is required',
      'en': '',
      'ru': '',
    },
    'h6bjcmuh': {
      'uz': 'Password requires at least 8 characters',
      'en': '',
      'ru': '',
    },
    'kb2wi94k': {
      'uz': 'Please choose an option from the dropdown',
      'en': '',
      'ru': '',
    },
    'iqdlzjmm': {
      'uz': 'Login',
      'en': '',
      'ru': '',
    },
    '9kqwmsz3': {
      'uz': 'Not a member?',
      'en': '',
      'ru': '',
    },
    'xdkfpqqz': {
      'uz': 'Register now',
      'en': '',
      'ru': '',
    },
    'bgxf0vyj': {
      'uz': 'Home',
      'en': '',
      'ru': '',
    },
  },
  // Updatenote
  {
    'ex1e0egg': {
      'uz': 'title',
      'en': '',
      'ru': '',
    },
    'lg5qsvk3': {
      'uz': 'Description',
      'en': '',
      'ru': '',
    },
    '5n6exums': {
      'uz': 'Update',
      'en': '',
      'ru': '',
    },
    '0lfgsr43': {
      'uz': 'Page Title',
      'en': '',
      'ru': '',
    },
    '9zykuzep': {
      'uz': 'Home',
      'en': '',
      'ru': '',
    },
  },
  // RichTextPage
  {
    'mn9pk61y': {
      'uz': 'This page is ',
      'en': '',
      'ru': '',
    },
    'ap8vv1fc': {
      'uz': ' RichText.',
      'en': '',
      'ru': '',
    },
    'w329qvji': {
      'uz': ' Testing ',
      'en': '',
      'ru': '',
    },
    'x7zy60j4': {
      'uz': 'RichText',
      'en': '',
      'ru': '',
    },
    'ghgu8w2g': {
      'uz': 'Home',
      'en': '',
      'ru': '',
    },
  },
  // ImagePage
  {
    'cv4azlvz': {
      'uz': 'Image',
      'en': '',
      'ru': '',
    },
    '7i6shvis': {
      'uz': 'Home',
      'en': '',
      'ru': '',
    },
  },
  // CircleImage
  {
    '6yt9io9k': {
      'uz': 'Title',
      'en': '',
      'ru': '',
    },
    'si8ybuvv': {
      'uz': 'Title',
      'en': '',
      'ru': '',
    },
    'ij9g67y7': {
      'uz': 'CircleImage',
      'en': '',
      'ru': '',
    },
    '0wr58s3w': {
      'uz': 'Home',
      'en': '',
      'ru': '',
    },
  },
  // IconPage
  {
    '14ooje8q': {
      'uz': 'New Group',
      'en': '',
      'ru': '',
    },
    'u7ytkz3n': {
      'uz': 'Contacts',
      'en': '',
      'ru': '',
    },
    'hywntrmg': {
      'uz': 'Settings',
      'en': '',
      'ru': '',
    },
    '9sv208ns': {
      'uz': 'IconPage',
      'en': '',
      'ru': '',
    },
    'kje0i06r': {
      'uz': 'Home',
      'en': '',
      'ru': '',
    },
  },
  // ButtonPage
  {
    '1igjvsdc': {
      'uz': 'Login',
      'en': '',
      'ru': '',
    },
    '1pyoi8t9': {
      'uz': 'ButtonPage',
      'en': '',
      'ru': '',
    },
    'kl515tzx': {
      'uz': 'Home',
      'en': '',
      'ru': '',
    },
  },
  // IconButton
  {
    'iglrfiuj': {
      'uz': 'IconButton',
      'en': '',
      'ru': '',
    },
    's6dwfszn': {
      'uz': 'Home',
      'en': '',
      'ru': '',
    },
  },
  // ListTilePage
  {
    'qdoj3afy': {
      'uz': 'Name',
      'en': '',
      'ru': '',
    },
    'edx54wb1': {
      'uz': 'Chatting here...',
      'en': '',
      'ru': '',
    },
    'i8bnw05t': {
      'uz': 'Name',
      'en': '',
      'ru': '',
    },
    'tzqoye5g': {
      'uz': 'Chatting here...',
      'en': '',
      'ru': '',
    },
    'p613b2xc': {
      'uz': 'Name',
      'en': '',
      'ru': '',
    },
    'cmdncaf6': {
      'uz': 'Chatting here...',
      'en': '',
      'ru': '',
    },
    'o8boxmd4': {
      'uz': 'Name',
      'en': '',
      'ru': '',
    },
    'm0sf4phk': {
      'uz': 'Chatting here...',
      'en': '',
      'ru': '',
    },
    'fyd9k9hr': {
      'uz': 'Name',
      'en': '',
      'ru': '',
    },
    '6iawryyb': {
      'uz': 'Chatting here...',
      'en': '',
      'ru': '',
    },
    'kvc1qsw8': {
      'uz': 'Name',
      'en': '',
      'ru': '',
    },
    '29rhlcxd': {
      'uz': 'Chatting here...',
      'en': '',
      'ru': '',
    },
    'a341zt76': {
      'uz': 'Name',
      'en': '',
      'ru': '',
    },
    '066aetm3': {
      'uz': 'Chatting here...',
      'en': '',
      'ru': '',
    },
    'muir5pxa': {
      'uz': 'Name',
      'en': '',
      'ru': '',
    },
    'f0sprbxx': {
      'uz': 'Chatting here...',
      'en': '',
      'ru': '',
    },
    'xgxebbr3': {
      'uz': 'Name',
      'en': '',
      'ru': '',
    },
    'flgqwjtv': {
      'uz': 'Chatting here...',
      'en': '',
      'ru': '',
    },
    '4itiodkl': {
      'uz': 'Name',
      'en': '',
      'ru': '',
    },
    'labncibx': {
      'uz': 'Chatting here...',
      'en': '',
      'ru': '',
    },
    '521mr3ez': {
      'uz': 'Name',
      'en': '',
      'ru': '',
    },
    '3ext8awl': {
      'uz': 'Chatting here...',
      'en': '',
      'ru': '',
    },
    'go7tgu88': {
      'uz': 'ListTile Page',
      'en': '',
      'ru': '',
    },
    '8a3gk7hw': {
      'uz': 'Home',
      'en': '',
      'ru': '',
    },
  },
  // VideoPlayerPage
  {
    'tpa7rvxv': {
      'uz': 'VideoPlayer',
      'en': '',
      'ru': '',
    },
    'e1xtsdc4': {
      'uz': 'Home',
      'en': '',
      'ru': '',
    },
  },
  // YoutubePlayerPage
  {
    '8uj5hpcq': {
      'uz': 'YoutubePlayer',
      'en': '',
      'ru': '',
    },
    'die8hwbx': {
      'uz': 'Home',
      'en': '',
      'ru': '',
    },
  },
  // CalendarPage
  {
    'bfqdtjiq': {
      'uz': 'Calendar Page',
      'en': '',
      'ru': '',
    },
    'wnt8pyz8': {
      'uz': 'Home',
      'en': '',
      'ru': '',
    },
  },
  // CheckboxListTilePage
  {
    '2o65pq5u': {
      'uz': 'TASK',
      'en': '',
      'ru': '',
    },
    'e0ico4xr': {
      'uz': 'Description',
      'en': '',
      'ru': '',
    },
    '1n5p0wv0': {
      'uz': 'TASK',
      'en': '',
      'ru': '',
    },
    'tgb3w85j': {
      'uz': 'Description',
      'en': '',
      'ru': '',
    },
    '2wwma78a': {
      'uz': 'TASK',
      'en': '',
      'ru': '',
    },
    'anww85a9': {
      'uz': 'Description',
      'en': '',
      'ru': '',
    },
    'ihocbjl9': {
      'uz': 'CheckboxListTile',
      'en': '',
      'ru': '',
    },
    'g0xm3zmy': {
      'uz': 'Home',
      'en': '',
      'ru': '',
    },
  },
  // SwitchPage
  {
    'hbwj8gg7': {
      'uz': 'Video',
      'en': '',
      'ru': '',
    },
    'l5q8wsml': {
      'uz': 'Auto download',
      'en': '',
      'ru': '',
    },
    'xdz6b667': {
      'uz': 'DarkMode',
      'en': '',
      'ru': '',
    },
    'n761ykda': {
      'uz': 'Turn ON/OFF',
      'en': '',
      'ru': '',
    },
    '2dm9mwwp': {
      'uz': 'Switch and SwitchListTile',
      'en': '',
      'ru': '',
    },
    'wpbg60is': {
      'uz': 'Home',
      'en': '',
      'ru': '',
    },
  },
  // ToggleIconPage
  {
    'r4heb00v': {
      'uz': 'Account Settings',
      'en': '',
      'ru': '',
    },
    'x8s8df0f': {
      'uz': 'ToggleIcon',
      'en': '',
      'ru': '',
    },
    '51qh0btu': {
      'uz': 'Home',
      'en': '',
      'ru': '',
    },
  },
  // AudioPlayerPage
  {
    '5oh3lyqo': {
      'uz': 'AudioPlayer',
      'en': '',
      'ru': '',
    },
    'dqi8oly4': {
      'uz': 'Home',
      'en': '',
      'ru': '',
    },
  },
  // WebViewPage
  {
    'prn58kl6': {
      'uz': 'WebView',
      'en': '',
      'ru': '',
    },
    'noiaf08r': {
      'uz': 'Home',
      'en': '',
      'ru': '',
    },
  },
  // StaticMapPage
  {
    'jj8gq9wv': {
      'uz': 'StaticMap',
      'en': '',
      'ru': '',
    },
    'm5eys5h5': {
      'uz': 'Home',
      'en': '',
      'ru': '',
    },
  },
  // LottieAnimationPage
  {
    '6xntu4mv': {
      'uz': 'LottieAnimation',
      'en': '',
      'ru': '',
    },
    'rsmranp3': {
      'uz': 'Home',
      'en': '',
      'ru': '',
    },
  },
  // BlurPage
  {
    'rnz1frnv': {
      'uz': 'The picture',
      'en': '',
      'ru': '',
    },
    'wob7744r': {
      'uz': 'Blur',
      'en': '',
      'ru': '',
    },
    'a1v0vgy3': {
      'uz': 'Home',
      'en': '',
      'ru': '',
    },
  },
  // TransformPage
  {
    'pbxonjn9': {
      'uz': 'Oil Change',
      'en': '',
      'ru': '',
    },
    'dbrpaac0': {
      'uz': 'Tesla Model Y',
      'en': '',
      'ru': '',
    },
    'k9a6csdv': {
      'uz': '#495242',
      'en': '',
      'ru': '',
    },
    '3g2jr1cl': {
      'uz': 'In Preparation',
      'en': '',
      'ru': '',
    },
    'lyuj4q8m': {
      'uz': '4:30pm',
      'en': '',
      'ru': '',
    },
    '9spzhdoi': {
      'uz': 'Firenze - Giardino Bardini',
      'en': '',
      'ru': '',
    },
    '5igf968r': {
      'uz': '4.7',
      'en': '',
      'ru': '',
    },
    'ythg3p6r': {
      'uz': '\$220 USD',
      'en': '',
      'ru': '',
    },
    '4t4s67ml': {
      'uz': 'You quotes',
      'en': '',
      'ru': '',
    },
    'yacvpofg': {
      'uz': 'You will find your quote options below.',
      'en': '',
      'ru': '',
    },
    'egn5wstv': {
      'uz': 'Company Name',
      'en': '',
      'ru': '',
    },
    'ljmuyh5l': {
      'uz': '4.5',
      'en': '',
      'ru': '',
    },
    '7vugkpoy': {
      'uz': '(242)',
      'en': '',
      'ru': '',
    },
    'yqsfnyic': {
      'uz': '\$194.25',
      'en': '',
      'ru': '',
    },
    'tzg4nxam': {
      'uz': '/mo',
      'en': '',
      'ru': '',
    },
    'q9v5hhm1': {
      'uz': '\$124.29 yearly savings',
      'en': '',
      'ru': '',
    },
    'izcfn0yl': {
      'uz': 'Company Name',
      'en': '',
      'ru': '',
    },
    'mjxr17ex': {
      'uz': '4.5',
      'en': '',
      'ru': '',
    },
    'n0n4m0rq': {
      'uz': '(242)',
      'en': '',
      'ru': '',
    },
    'ulu9v3du': {
      'uz': '\$194.25',
      'en': '',
      'ru': '',
    },
    'tm3bhsj9': {
      'uz': '/mo',
      'en': '',
      'ru': '',
    },
    'dagjk883': {
      'uz': '\$124.29 yearly savings',
      'en': '',
      'ru': '',
    },
    'bse859ys': {
      'uz': 'Transform',
      'en': '',
      'ru': '',
    },
    'b21d8ks7': {
      'uz': 'Home',
      'en': '',
      'ru': '',
    },
  },
  // RiveAnimationPage
  {
    'usddc8nb': {
      'uz': 'RiveAnimation',
      'en': '',
      'ru': '',
    },
    'ek62soxz': {
      'uz': 'Home',
      'en': '',
      'ru': '',
    },
  },
  // HtmlViewPage
  {
    'zlrfw5d6': {
      'uz': 'This html code ',
      'en': '',
      'ru': '',
    },
    '2e57jepp': {
      'uz':
          '<html>\n<head>\n<title>Page Title</title>\n</head>\n<body>\n\n<h1>This is a Heading</h1>\n<p>This is a paragraph.</p>\n<h3>This is heading three in html.</h3>\n<p>The image below is a link. Try to click on it.</p>\n\n<a href=\"default.asp\"><img src=\"smiley.gif\" alt=\"HTML tutorial\" style=\"width:42px;height:42px;\"></a>\n<p><a href=\"https://www.Youtube.com/\"><img src=\"https://www.tutorialspoint.com/assets/questions/media/426142-1668760872.png\" style=\"width:50px;height:50px;\"></a></p>\n\n</body>\n</html>',
      'en': '',
      'ru': '',
    },
    'gebznai9': {
      'uz': 'HtmlView',
      'en': '',
      'ru': '',
    },
    'k7q2uun4': {
      'uz': 'Home',
      'en': '',
      'ru': '',
    },
  },
  // PdfViewerPage
  {
    'o8h26c5v': {
      'uz': 'PdfViewer',
      'en': '',
      'ru': '',
    },
    'ftw3b1da': {
      'uz': 'Home',
      'en': '',
      'ru': '',
    },
  },
  // ProgressBarPage
  {
    'hg1mijww': {
      'uz': 'Storage',
      'en': '',
      'ru': '',
    },
    'hzc0aile': {
      'uz': '90%',
      'en': '',
      'ru': '',
    },
    'myuzzrda': {
      'uz': 'Loading...',
      'en': '',
      'ru': '',
    },
    '2dxa77cf': {
      'uz': '20%',
      'en': '',
      'ru': '',
    },
    '3h3pvfac': {
      'uz': 'ProgressBar',
      'en': '',
      'ru': '',
    },
    'id23rsmf': {
      'uz': 'Home',
      'en': '',
      'ru': '',
    },
  },
  // LanguageSelectorPage
  {
    'imbsuko0': {
      'uz': 'Salom',
      'en': 'Hi',
      'ru': 'Привет',
    },
    'trnxzo2h': {
      'uz': 'LanguageSelector',
      'en': '',
      'ru': '',
    },
    'xxnqkshm': {
      'uz': '',
      'en': '',
      'ru': '',
    },
  },
  // BadgePage
  {
    '4an3t1zt': {
      'uz': 'Badge',
      'en': '',
      'ru': '',
    },
    'yvxirs4j': {
      'uz': '8',
      'en': '',
      'ru': '',
    },
    'y14mcqqn': {
      'uz': 'Home',
      'en': '',
      'ru': '',
    },
  },
  // ChartPage
  {
    'lsarrf2x': {
      'uz': 'ChartPage',
      'en': '',
      'ru': '',
    },
    'h9u15w0d': {
      'uz': 'Home',
      'en': '',
      'ru': '',
    },
  },
  // TimerPage
  {
    '7kxrmqh7': {
      'uz': 'Start',
      'en': '',
      'ru': '',
    },
    'gkwn181c': {
      'uz': 'Stop',
      'en': '',
      'ru': '',
    },
    '1i005daa': {
      'uz': 'Reset',
      'en': '',
      'ru': '',
    },
    '8o9hqz09': {
      'uz': 'Timer',
      'en': '',
      'ru': '',
    },
    '7b9wqvfb': {
      'uz': 'Home',
      'en': '',
      'ru': '',
    },
  },
  // Miscellaneous
  {
    'qazls28x': {
      'uz': '',
      'en': '',
      'ru': '',
    },
    'yds4tw9n': {
      'uz': '',
      'en': '',
      'ru': '',
    },
    '8c5sb7ai': {
      'uz': '',
      'en': '',
      'ru': '',
    },
    'roemws3m': {
      'uz': '',
      'en': '',
      'ru': '',
    },
    'tbbjcchs': {
      'uz': '',
      'en': '',
      'ru': '',
    },
    'r1n7alx6': {
      'uz': '',
      'en': '',
      'ru': '',
    },
    'bpwjafii': {
      'uz': '',
      'en': '',
      'ru': '',
    },
    'q0jxg1m2': {
      'uz': '',
      'en': '',
      'ru': '',
    },
    'fj612gy7': {
      'uz': '',
      'en': '',
      'ru': '',
    },
    'ckb9v1uv': {
      'uz': '',
      'en': '',
      'ru': '',
    },
    'h4vma5cu': {
      'uz': '',
      'en': '',
      'ru': '',
    },
    'uiowluba': {
      'uz': '',
      'en': '',
      'ru': '',
    },
    '9zd5oapp': {
      'uz': '',
      'en': '',
      'ru': '',
    },
    '3qpb2snb': {
      'uz': '',
      'en': '',
      'ru': '',
    },
    'ex6z7gm6': {
      'uz': '',
      'en': '',
      'ru': '',
    },
    'muu4o5cy': {
      'uz': '',
      'en': '',
      'ru': '',
    },
    'cvr2j534': {
      'uz': '',
      'en': '',
      'ru': '',
    },
    'uwuvd4oo': {
      'uz': '',
      'en': '',
      'ru': '',
    },
    'hmjx39lv': {
      'uz': '',
      'en': '',
      'ru': '',
    },
    'va7s2ttb': {
      'uz': '',
      'en': '',
      'ru': '',
    },
    '4zub0fdl': {
      'uz': '',
      'en': '',
      'ru': '',
    },
  },
].reduce((a, b) => a..addAll(b));
