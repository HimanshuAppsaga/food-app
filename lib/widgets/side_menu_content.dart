import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SideMenuContent extends StatelessWidget {
  final VoidCallback onItemTap;

  const SideMenuContent({
    super.key,
    required this.onItemTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.6,
      padding: const EdgeInsets.only(top: 60, bottom: 40, left: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildMenuItem(
                    context: context,
                    icon: Icons.person_outline,
                    title: 'Profile',
                    route: '/profile',
                    showDivider: true,
                  ),
                  _buildMenuItem(
                    context: context,
                    icon: Icons.receipt_long_outlined,
                    title: 'orders',
                    route: '/orders',
                    showDivider: true,
                  ),
                  _buildMenuItem(
                    context: context,
                    icon: Icons.local_offer_outlined,
                    title: 'offer and promo',
                    route: '/offers',
                    showDivider: true,
                  ),
                  _buildMenuItem(
                    context: context,
                    icon: Icons.description_outlined,
                    title: 'Privacy policy',
                    route: '/privacy',
                    showDivider: true,
                  ),
                  _buildMenuItem(
                    context: context,
                    icon: Icons.security_outlined,
                    title: 'Security',
                    route: '/security',
                    showDivider: false,
                  ),
                ],
              ),
            ),
          ),
          
          // Sign Out Button
          GestureDetector(
            onTap: () {
              onItemTap();
              context.go('/login');
            },
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text(
                  'Sign-out',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(width: 12),
                Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                  size: 24,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMenuItem({
    required BuildContext context,
    required IconData icon,
    required String title,
    required String route,
    required bool showDivider,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () {
            onItemTap();
            context.push(route);
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Row(
              children: [
                Icon(icon, color: Colors.white, size: 28),
                const SizedBox(width: 16),
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ),
        if (showDivider)
          Container(
            margin: const EdgeInsets.only(left: 44, top: 12, bottom: 20),
            height: 1,
            width: 130,
            color: Colors.white.withOpacity(0.3),
          ),
        if (!showDivider)
          const SizedBox(height: 20),
      ],
    );
  }
}
