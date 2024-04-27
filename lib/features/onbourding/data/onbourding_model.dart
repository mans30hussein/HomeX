class OnBoardingModel {
  final String title;
  final String subTitle1;
  String? subTitle2;
  String? subTitle3;
  OnBoardingModel({
    required this.title,
    required this.subTitle1,
    this.subTitle2,
    this.subTitle3,
  });
}

List<OnBoardingModel> onBoardingList = [
  OnBoardingModel(
    title: 'Welcome to Your Smart home',
    subTitle1:
        'Your home now is equipped with the latest technology to make your life easier, organized and more comfortable.',
    subTitle2:
        'with the help of your smart home app you can control various aspects of your home with just a few taps on your phone.',
  ),
  OnBoardingModel(
    title: 'Easy control\nwherever you Are',
    subTitle1:
        'Now you can control your home appliances easily and comfortably  from wherever you are , just connect to the Wi-Fi and control the Home Instantly.',
  ),
  OnBoardingModel(
    title: 'AI makes it Smarter',
    subTitle1: 'AI make your Home more Easy, Faster and Secured',
    subTitle2:
        'There’s a variety of controlling Options\n\n you can use Homex Voice Assistant to .. ',
    //   subTitle3:
    //       'your home get more secured with autodetection \(thief) \(smart ID manner)',
  ),
];
