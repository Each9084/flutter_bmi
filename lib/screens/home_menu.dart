import 'package:flutter/material.dart';

class homeMenu extends StatefulWidget {
  const homeMenu({super.key});

  @override
  State<homeMenu> createState() => _homeMenuState();
}

class _homeMenuState extends State<homeMenu> {
  static const _menuTitles = [
    'bmi_calculator',
    'ai_painting',
    'bmi_wiki',
    'community',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Stack(
        fit: StackFit.expand,
        children: [],
      ),
    );
  }

  Widget _buildFlutterLogo() {
    //TODO
    return Container();
  }

  Widget _buildContent() {
    //Todo
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 16,
        ),
        const Spacer(),
      ],
    );
  }

  List<Widget> _buildListItems() {
    final listItems = <Widget>[];
    for (var i = 0; i < _menuTitles.length; i++) {
      listItems.add(
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 16),
          child: Text(
            _menuTitles[i],
            textAlign: TextAlign.left,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
        ),
      );
    }
    return listItems;
  }

  Widget _buildGetStartedButton() {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.all(24),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: StadiumBorder(),
            backgroundColor: Colors.blue,
            padding: EdgeInsets.symmetric(horizontal: 48, vertical: 14),
          ),
          onPressed: () {},
          child: Text(
            'Get Start',
            style: TextStyle(color: Colors.white, fontSize: 22),
          ),
        ),
      ),
    );
  }
}
