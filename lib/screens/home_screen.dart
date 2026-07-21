import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../theme/app_colors.dart';
import '../theme/app_text_styles.dart';
import '../widgets/hidden_drawer_layout.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return HiddenDrawerLayout(
      builder: (context, openDrawer) {
        return Scaffold(
      backgroundColor: AppColors.secondaryBackground, // #f2f2f2
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header Row
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: const Icon(Icons.menu, size: 28),
                    onPressed: openDrawer,
                  ),
                  IconButton(
                    icon: const Icon(Icons.shopping_cart_outlined, size: 28, color: AppColors.greyMid),
                    onPressed: () {
                      context.push('/cart');
                    },
                  ),
                ],
              ),
            ),
            
            // Hero Title
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 16),
              child: Text(
                'Delicious\nfood for you',
                style: AppTextStyles.headlineLg.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 34,
                ),
              ),
            ),
            
            // Search Bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Container(
                decoration: BoxDecoration(
                  color: AppColors.greyLight, // #EFEEEE
                  borderRadius: BorderRadius.circular(30),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.search, size: 28, color: Colors.black),
                    hintText: 'Search',
                    hintStyle: AppTextStyles.bodyLg.copyWith(
                      fontWeight: FontWeight.w600,
                      color: AppColors.greyMid,
                    ),
                    border: InputBorder.none,
                    contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                  ),
                  style: AppTextStyles.bodyLg.copyWith(
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 32),
            
            // Category Tabs
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.only(left: 40, right: 16),
              child: Row(
                children: [
                  _buildTab('Foods', isActive: true),
                  _buildTab('Drinks'),
                  _buildTab('Snacks'),
                  _buildTab('Sauces'),
                ],
              ),
            ),
            const SizedBox(height: 24),
            
            // "see more" link
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'see more',
                  style: AppTextStyles.bodySm.copyWith(
                    color: AppColors.brandOrange,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
            
            // Food Cards Horizontal List
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.only(left: 40, right: 16, bottom: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () => context.push('/product_detail'),
                      child: _buildFoodCard(
                        title: 'Veggie tomato mix',
                        price: 'N1,900',
                        imageUrl: 'https://lh3.googleusercontent.com/aida-public/AB6AXuDly_AaAuGultgzu5KylMQfsnBcHNGylVjFrPXTpUMtXALjsDtQQnPkuPvUpRN4_dQrtiMwCJ0tPgO2VCkS_nXJWwK6KL-T2rZPJ7gvBnh2hphXl5h7pU_lsKSnWyJLSff2lGW7laCt5PB3_y3TgtbsxUcKGOcjcxczt737Wv5_GndWp2i1v76jdr3ljJhTSvfMH-UJFWwVyT9EImEHO1nHXJ9lk0SOf7uvHHt7dHnRxSH7z_pA02o-pkPtp_p2zmzrXA05H-WF4Rg4',
                      ),
                    ),
                    const SizedBox(width: 24),
                    GestureDetector(
                      onTap: () => context.push('/product_detail'),
                      child: _buildFoodCard(
                        title: 'Spicy fish sauce',
                        price: 'N2,300',
                        imageUrl: 'https://lh3.googleusercontent.com/aida-public/AB6AXuBwCbaKAYKJqBDWb7DAZhnskc1Yx_74GgDUBgoTcip1n2S27qRndGPFZO1MqrkAKtBNuJ2TS7jCdPwDnJvaUUyZLuiWN6wZqR0yCsE61VKmdkIlwmpXscW5vLTfbfu4I8seK592F9P9WZNmnr7U9XVBRImOGjLX5dNMfue0T4xMwoR7lo6hvcB-BMmGszrZYIxooF8pqgB-IXPSkCqEhgk_YRBrKAsLx__LbdT-U9pQCgSyqTnkkwNqzRdfmmBgueYXNoGGVscdLSMx',
                      ),
                    ),
                  ],
                ),
              ),
            ),
            
            // Bottom Navigation
            Container(
              color: Colors.transparent,
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: const Icon(Icons.home, size: 30, color: AppColors.brandOrange),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: const Icon(Icons.favorite_border, size: 30, color: AppColors.greyMid),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: const Icon(Icons.person_outline, size: 30, color: AppColors.greyMid),
                    onPressed: () {
                      context.push('/profile');
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.history, size: 30, color: AppColors.greyMid),
                    onPressed: () {
                      context.push('/history');
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
      },
    );
  }

  Widget _buildTab(String title, {bool isActive = false}) {
    return Padding(
      padding: const EdgeInsets.only(right: 32),
      child: Column(
        children: [
          Text(
            title,
            style: AppTextStyles.bodyLg.copyWith(
              color: isActive ? AppColors.brandOrange : AppColors.greyMid,
              fontWeight: isActive ? FontWeight.w600 : FontWeight.w400,
            ),
          ),
          if (isActive) ...[
            const SizedBox(height: 8),
            Container(
              width: 80, // rough underline width
              height: 3,
              decoration: BoxDecoration(
                color: AppColors.brandOrange,
                borderRadius: BorderRadius.circular(3),
              ),
            )
          ] else
             const SizedBox(height: 11), // preserve space when no underline
        ],
      ),
    );
  }

  Widget _buildFoodCard({required String title, required String price, required String imageUrl}) {
    return SizedBox(
      width: 220,
      height: 300, // Explicit height to prevent overflow
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          // White Card Background
          Positioned(
            top: 50,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 20,
                    offset: Offset(0, 10),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 110, left: 16, right: 16, bottom: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      title,
                      textAlign: TextAlign.center,
                      style: AppTextStyles.headlineMd.copyWith(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        height: 1.2,
                      ),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      price,
                      style: AppTextStyles.bodyLg.copyWith(
                        color: AppColors.brandOrange,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          
          // Floating Circular Image
          Positioned(
            top: 0,
            child: Container(
              width: 140,
              height: 140,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 15,
                    offset: Offset(0, 10),
                  ),
                ],
                image: DecorationImage(
                  image: NetworkImage(imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
