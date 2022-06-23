import 'package:easy_sidemenu/easy_sidemenu.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:my_website/controller/home.controller.dart';
import 'package:my_website/views/menuPages/home.view.dart';
import 'package:url_launcher/url_launcher.dart';
import '../menuPages/aboutMe.view.dart';
import '../menuPages/contact.view.dart';
import '../menuPages/projects.view.dart';
import '../menuPages/skills.view.dart';

PageController pagesController = PageController();
Color themeColor = const Color.fromARGB(255, 28, 28, 28);

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: _body(),
    );
  }

  _logoButton() {
    return IconButton(
      icon: const CircleAvatar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.grey,
        child: Text(
          'T',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            fontFamily: 'Times New Roman',
          ),
        ),
      ),
      onPressed: () {},
    );
  }

  _appBar() {
    return AppBar(
      backgroundColor: themeColor,
      leading: _logoButton(),
      title: Column(
        children: const [
          Text(
            'Gabriel Tarzia',
            style: TextStyle(fontSize: 18.0, color: Colors.grey),
          ),
          Text(
            'Flutter Developer',
            style: TextStyle(fontSize: 12.0, color: Colors.grey),
          )
        ],
      ),
    );
  }

  _body() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        _sideMenu(),
        _pageController(),
      ],
    );
  }

  _mediaLinks() => Padding(
        padding: const EdgeInsets.all(2),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              hoverColor: Colors.transparent,
              child: Image.network(
                'https://cdn-icons.flaticon.com/png/512/3536/premium/3536569.png?token=exp=1656023594~hmac=33233db36e28735758f32abd395b4823',
                width: 42,
                height: 42,
                color: Colors.grey,
              ),
              onTap: () => _launchUrl(
                  'https://www.linkedin.com/in/gabriel-tarzia-026659171/'),
            ),
            const SizedBox(width: 10),
            InkWell(
              hoverColor: Colors.transparent,
              child: Image.network(
                'https://cdn-icons-png.flaticon.com/512/1400/1400829.png',
                width: 42,
                height: 42,
                color: Colors.grey,
              ),
              onTap: () =>
                  _launchUrl('https://www.instagram.com/gabrieltarzia/'),
            ),
            const SizedBox(width: 10),
            InkWell(
              hoverColor: Colors.transparent,
              child: Image.network(
                'https://cdn-icons-png.flaticon.com/512/254/254409.png',
                width: 42,
                height: 42,
                color: Colors.grey,
              ),
              onTap: () => _launchUrl('https://whatsa.me/5511983975667'),
            )
          ],
        ),
      );
  _launchUrl(String url) => launchUrl(Uri.parse(url));

  _sideMenu() {
    List<SideMenuItem> items = [
      SideMenuItem(
        priority: 0,
        title: 'Home',
        onTap: () => pagesController.jumpToPage(0),
        icon: const Icon(Icons.home),
      ),
      SideMenuItem(
        priority: 1,
        title: 'About Me',
        onTap: () => pagesController.jumpToPage(1),
        icon: const Icon(Icons.person),
      ),
      SideMenuItem(
          priority: 2,
          title: 'Skills',
          onTap: () => pagesController.jumpToPage(2),
          icon: const Icon(Icons.auto_graph)),
      SideMenuItem(
        priority: 3,
        title: 'Projects',
        onTap: () => pagesController.jumpToPage(3),
        icon: const Icon(Icons.exit_to_app),
      ),
      SideMenuItem(
        priority: 4,
        title: 'Contact',
        onTap: () => pagesController.jumpToPage(4),
        icon: const Icon(Icons.email),
      ),
    ];
    return SideMenu(
      style: SideMenuStyle(
        backgroundColor: themeColor,
        unselectedIconColor: Colors.grey,
        selectedIconColor: Colors.white,
        selectedTitleTextStyle: const TextStyle(color: Colors.white),
        unselectedTitleTextStyle: const TextStyle(color: Colors.grey),
      ),
      controller: pagesController,
      title: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            _mediaLinks(),
            Divider(),
            ClipRRect(
              borderRadius: BorderRadius.circular(12.0),
              child: Image.asset('lib/assets/img/profile.png'),
            )
          ],
        ),
      ),
      footer: const Text(
        '© 2022 — Gabriel Tarzia | São Paulo, Brazil',
        style: TextStyle(color: Colors.grey),
      ),
      items: items,
    );
  }

  _pageController() => Expanded(
        child: PageView(
          controller: pagesController,
          pageSnapping: false,
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          children: <Widget>[
            homeView(),
            aboutMeView(),
            skillsView(),
            projectsView(),
            contactView(),
          ],
        ),
      );
}
