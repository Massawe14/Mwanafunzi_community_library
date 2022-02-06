import 'package:flutter/material.dart';

// Pages
import '../pages/homepage.dart';
import '../pages/books.dart';
import '../pages/videos.dart';
import '../pages/profile.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  int currentTabIndex = 0;

  List<Widget> pages;
  Widget currentPage;

  HomePage homePage;
  Books books;
  Videos videos;
  Profile profile;

  @override
  void initState() {
    super.initState();
    homePage = HomePage();
    books = Books();
    videos = Videos();
    profile = Profile();
    pages = [homePage, books, videos, profile];

    currentPage = homePage;
  }

  @override
  Widget build(BuildContext context) {
    var bottomNavigationBarItem = BottomNavigationBarItem(
                    icon: Icon(Icons.home),
                  // ignore: deprecated_member_use
                  label: "Home"
                );
        return Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            onTap: (int index){
              setState(() {
                currentTabIndex = index;
                currentPage = pages[index];
              });
            },
            currentIndex: currentTabIndex,
              type: BottomNavigationBarType.fixed,
              items: <BottomNavigationBarItem>[
                bottomNavigationBarItem,
            BottomNavigationBarItem(
                icon: Icon(Icons.library_books),
              // ignore: deprecated_member_use
              label: "Books"
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.video_library),
                // ignore: deprecated_member_use
                label: "Videos"
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.person),
                // ignore: deprecated_member_use
                label: "Profile"
            ),
          ],
      ),

      body: currentPage,
    );
  }
}
