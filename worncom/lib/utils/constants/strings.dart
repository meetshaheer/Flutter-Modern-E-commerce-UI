class onBoardingContent {
  final String title;
  final String desc;
  final String image;

  onBoardingContent(this.title, this.desc, this.image);
}

List<onBoardingContent> contents = [
  onBoardingContent(
    "Choose your product",
    "Welcome to a World of Limitless Choices - Your Perfect Product Awaits!",
    "assets/images/on_boarding_images/sammy-line-searching.gif",
  ),
  onBoardingContent(
    "Select Payment Method",
    "For Seamless Transactions, Choose Your Payment Path - Your Convenience, Our Priority!",
    "assets/images/on_boarding_images/sammy-line-shopping.gif",
  ),
  onBoardingContent(
    "Deliver at your door step",
    "From Our Doorstep to Yours - Swift, Secure, and Contactless Delivery!",
    "assets/images/on_boarding_images/sammy-line-delivery.gif",
  )
];
