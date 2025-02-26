import 'package:flutter/material.dart';
import 'package:movies/onbording/onbording.dart';

class OnbordingModel {
  String title;
  String desscription;
  String coverImageName;
  OnbordingModel(
      {required this.coverImageName,
      required this.desscription,
      required this.title});
  static List<OnbordingModel> onbordingList = [
    OnbordingModel(
        coverImageName: "onbording1",
        desscription:
            "Get access to a huge library of movies to suit all tastes. You will surely like it.",
        title: "     Find Your Next \nFavorite Movie Here"),
    OnbordingModel(
        coverImageName: "onbording2",
        desscription:
            "Explore a vast collection of movies in all qualities and genres. Find your next favorite film with ease.",
        title: "Discover Movies"),
    OnbordingModel(
        coverImageName: "onbording3",
        desscription:
            "Discover movies from every genre, in all available qualities. Find something new and exciting to watch every day.",
        title: "Explore All Genres"),
    OnbordingModel(
        coverImageName: "onbording4",
        desscription:
            "Save movies to your watchlist to keep track of what you want to watch next. Enjoy films in various qualities and genres.",
        title: "Create Watchlists"),
    OnbordingModel(
        coverImageName: "onbording5",
        desscription:
            "Share your thoughts on the movies you've watched. Dive deep into film details and help others discover great movies with your reviews.",
        title: "Rate, Review, and Learn"),
    OnbordingModel(
        desscription: '',
        coverImageName: "onbording6",
        title: "Start Watching Now"),
  ];
}
