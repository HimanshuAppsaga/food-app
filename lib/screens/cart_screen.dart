import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../theme/app_colors.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black, size: 24),
          onPressed: () {
            if (context.canPop()) {
              context.pop();
            } else {
              context.go('/home');
            }
          },
        ),
        title: const Text(
          'Cart',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.pan_tool_alt_outlined, size: 20, color: Colors.black54),
                const SizedBox(width: 8),
                Text(
                  'swipe on an item to delete',
                  style: TextStyle(fontSize: 12, color: Colors.black.withOpacity(0.8)),
                ),
              ],
            ),
            const SizedBox(height: 24),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                children: [
                  _buildCartItem(
                    id: '1',
                    title: 'Veggie tomato mix',
                    price: '#1,900',
                    imageUrl: 'https://lh3.googleusercontent.com/aida-public/AB6AXuBVxzsBP8ra00jdjGPi0Pr9OmQPSpZyGV95DOn0-qWggD67SR5_Q9qH9TC9jZq2lkuth3NxsuqL0vKNWmwJFU9HOTQcmBhxUDG-9xR85os_K_DmNF7watkGNHvTiNxKZafQVeWNvJoAMlSiSA2M74MbsTIgJJKhJuwO5HYziR50GkAuLd4AQZtRjiTHKYyCCZDI29qMKWPFfuR6pOPtMZ2mMFdjn6OMJzj-PyTey3lBxrHx-lVZMSaokNfV3unKP4pqLN6eWPjH1FQQ',
                  ),
                  const SizedBox(height: 16),
                  _buildCartItem(
                    id: '2',
                    title: 'Fishwith mix orange....',
                    price: '#1,900',
                    imageUrl: 'https://lh3.googleusercontent.com/aida-public/AB6AXuDkHQCG2NF4J0vOb-d_9EQ-6Za4GuVz8_Pf1Vz99oANllxSCqiOM5sWnuzrS2ikzGTV4YeywecvB4f1CDC23jB7bHUUkgv0zV4Pw8t3iKvA2MBzcFpPp17mmvM-TUABcyPZRNTgPLqMBsa5cefwJpHYbbs-XE-m8QqjhZHv-E95kVeKiQ_m9QJVYPk8CauzVFfneryl5uWqFpsEWmwMJj2WSlwG9OAvKi1B5kdAck2QnLF9pdXw_8KhcaJrhcgTCiKpZ-YbQcVkiOUM',
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(32),
              child: SizedBox(
                width: double.infinity,
                height: 70,
                child: ElevatedButton(
                  onPressed: () {
                    context.push('/checkout');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.brandOrange,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(35),
                    ),
                    elevation: 5,
                  ),
                  child: const Text(
                    'Complete order',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCartItem({
    required String id,
    required String title,
    required String price,
    required String imageUrl,
  }) {
    return Dismissible(
      key: Key(id),
      direction: DismissDirection.endToStart,
      background: Container(
        alignment: Alignment.centerRight,
        padding: const EdgeInsets.only(right: 20),
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              width: 45,
              height: 45,
              decoration: const BoxDecoration(
                color: AppColors.brandOrange,
                shape: BoxShape.circle,
              ),
              child: const Icon(Icons.favorite, color: Colors.white, size: 22),
            ),
            const SizedBox(width: 8),
            Container(
              width: 45,
              height: 45,
              decoration: const BoxDecoration(
                color: AppColors.brandOrange,
                shape: BoxShape.circle,
              ),
              child: const Icon(Icons.delete, color: Colors.white, size: 22),
            ),
          ],
        ),
      ),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 10,
              offset: Offset(0, 5),
            ),
          ],
        ),
        child: Row(
          children: [
            Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: NetworkImage(imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    price,
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: AppColors.brandOrange,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 8),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
              decoration: BoxDecoration(
                color: AppColors.brandOrange,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: const [
                  Text('-', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16)),
                  SizedBox(width: 10),
                  Text('1', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14)),
                  SizedBox(width: 10),
                  Text('+', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
