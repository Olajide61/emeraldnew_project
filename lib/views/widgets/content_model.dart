class UnbordingContent {
  String title;
  String discription;
  String image;

  UnbordingContent(
      {required this.discription, required this.title, required this.image});
}

List<UnbordingContent> contents = [
  UnbordingContent(
      discription:
          'Experience the true meaning of\n freedom as you bid farewell to\n the hassles of cash',
      title: 'Step into a World of\n Cashless Ease ',
      image: 'assets/fonts/white0.png'),
  UnbordingContent(
      discription:
          'Gift your loved ones the joy of\n choosing their own perfect present\n from a vast array of stores',
      title: 'Unwrap the Gift of\n Endless Choices ',
      image: 'assets/fonts/white1.png'),
  UnbordingContent(
      discription:
          'Your finances are protected, and \nrewards await as you unlock \nexclusive discounts',
      title: 'Shop with Confidence, \nSave with Wisdom ',
      image: 'assets/fonts/white2.png'),
];
