import 'package:flutter/material.dart';
import '../theme/app_colors.dart';
import 'side_menu_content.dart';

class HiddenDrawerLayout extends StatefulWidget {
  final Widget Function(BuildContext context, VoidCallback openDrawer) builder;

  const HiddenDrawerLayout({super.key, required this.builder});

  @override
  State<HiddenDrawerLayout> createState() => _HiddenDrawerLayoutState();

  static _HiddenDrawerLayoutState? of(BuildContext context) {
    return context.findAncestorStateOfType<_HiddenDrawerLayoutState>();
  }
}

class _HiddenDrawerLayoutState extends State<HiddenDrawerLayout> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  bool isDrawerOpen = false;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void toggleDrawer() {
    setState(() {
      if (isDrawerOpen) {
        _animationController.reverse();
      } else {
        _animationController.forward();
      }
      isDrawerOpen = !isDrawerOpen;
    });
  }
  
  void closeDrawer() {
    if (isDrawerOpen) {
      setState(() {
        _animationController.reverse();
        isDrawerOpen = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    
    return Scaffold(
      backgroundColor: AppColors.brandOrange, // The drawer background color
      body: Stack(
        children: [
          // Bottom layer: Side Menu
          SafeArea(
            child: SideMenuContent(
              onItemTap: closeDrawer,
            ),
          ),
          
          // Top layer: Main Screen (Home)
          AnimatedBuilder(
            animation: _animationController,
            builder: (context, child) {
              double slide = screenWidth * 0.6 * _animationController.value;
              double scale = 1 - (_animationController.value * 0.3); // Scales down to 0.7
              
              return Transform(
                transform: Matrix4.identity()
                  ..translate(slide)
                  ..scale(scale),
                alignment: Alignment.centerLeft,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(
                    _animationController.value * 40,
                  ),
                  child: GestureDetector(
                    onTap: () {
                      if (isDrawerOpen) {
                        closeDrawer();
                      }
                    },
                    child: AbsorbPointer(
                      absorbing: isDrawerOpen,
                      child: widget.builder(context, toggleDrawer),
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
