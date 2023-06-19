import 'package:firstapp/design/colors.dart';
import 'package:flutter/material.dart';

//PRINCIPAL WIDGET FOR HOMEPAGE, INCLUDES APPBAR (NAV) AND BODY

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(16),
                bottomRight: Radius.circular(16))),
        backgroundColor: AppColors.brandLightColor,
        toolbarHeight: 97,
        title: const AppBarContent(),
      ),
      body: const Center(
        child: Text("Texto en el centro de la app"),
      ),
    );
  }
}

//AppBarContent INCLUDES THE CONTENT OF THE APPBAR EXCEPT FOR SOME STYLES

class AppBarContent extends StatelessWidget {
  const AppBarContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 45, 16, 12),
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(right: 12),
            width: 40,
            height: 40,
            decoration: const BoxDecoration(
              color: Colors.black26,
              image: DecorationImage(
                image: AssetImage('../../assets/images/user.png'),
              ),
              borderRadius: BorderRadius.all(Radius.circular(12)),
            ),
          ),
          Expanded(
            child: Text(
              "Store Name",
              style: Theme.of(context).textTheme.headlineLarge,
            ),
          ),
          ContainerHeaderIcon(
            configMargin: const EdgeInsets.only(right: 12),
            iconButton: IconButton(
              onPressed: () => print("button pressed"),
              icon: const Icon(
                Icons.notifications,
                color: AppColors.brandPrimaryColor,
              ),
            ),
          ),
          ContainerHeaderIcon(
            iconButton: IconButton(
              onPressed: () => print("button pressed"),
              icon: const Icon(
                Icons.more_vert,
                color: AppColors.brandPrimaryColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ContainerHeaderIcon Class Helps organize and reutilize the icon box with same size.

class ContainerHeaderIcon extends StatelessWidget {
  final IconButton iconButton;
  final EdgeInsets? configMargin;
  const ContainerHeaderIcon(
      {super.key, required this.iconButton, this.configMargin});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: configMargin,
      height: 40,
      width: 40,
      decoration: BoxDecoration(
          border: Border.all(
            color: AppColors.brandLightColorBorder,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(12))),
      child: iconButton,
    );
  }
}
