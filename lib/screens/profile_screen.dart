import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../theme/app_colors.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondaryBackground,
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
          'My profile',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        centerTitle: false,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Information Section
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Information',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                            minimumSize: const Size(50, 30),
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          ),
                          child: const Text(
                            'change',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: AppColors.brandOrange,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    
                    // Profile Card
                    Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 20,
                            offset: Offset(0, 5),
                          ),
                        ],
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              image: const DecorationImage(
                                image: NetworkImage(
                                  'https://lh3.googleusercontent.com/aida-public/AB6AXuCpNZZ3jnwt7sSpx2YRb0o9uE34aCweHJmfmx3vgaq4aFyXzdQsKb2FGQV9jb5QALjVe-3wZ4BCgZYxbvcgrNXu2XOrCe-IF0kuLF7RVEPUvGpxq5hszzByZLjOOuuUzKwvBH2tWuHWB_ei6FMHMyBy6Zn9Iq4_A7wocfwmhvdYtQGLeYWUBzjyF42_eXL60lo1X68Azur9AUVeMK2lqGh7xcWtAUzeY44b2ed9IXUm2D55809ybgn0kPAnDjs3qOR4Q2BF7lsT22Zx'
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(width: 16),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Marvis Ighedosa',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                const Text(
                                  'dosamarvis@gmail.com',
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.black54,
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.symmetric(vertical: 8.0),
                                  child: Divider(height: 1, color: Colors.black12),
                                ),
                                const Text(
                                  'No 15 uti street off ovie palace road effurun delta state',
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.black54,
                                    height: 1.3,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 40),
                    
                    // Payment Method Section
                    const Text(
                      'Payment Method',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 16),
                    
                    Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 20,
                            offset: Offset(0, 5),
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          _buildPaymentOption(
                            icon: Icons.credit_card,
                            color: const Color(0xFFF47B0A),
                            title: 'Card',
                            isSelected: true,
                            showDivider: true,
                          ),
                          _buildPaymentOption(
                            icon: Icons.account_balance,
                            color: const Color(0xFFEB4796),
                            title: 'Bank account',
                            isSelected: false,
                            showDivider: true,
                          ),
                          _buildPaymentOption(
                            icon: Icons.paypal,
                            color: const Color(0xFF0038FF),
                            title: 'Paypal',
                            isSelected: false,
                            showDivider: false,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            
            // Bottom Button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 24),
              child: SizedBox(
                width: double.infinity,
                height: 70,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.brandOrange,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(35),
                    ),
                    elevation: 5,
                  ),
                  child: const Text(
                    'Updatet',
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

  Widget _buildPaymentOption({
    required IconData icon,
    required Color color,
    required String title,
    required bool isSelected,
    required bool showDivider,
  }) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Row(
            children: [
              Radio<bool>(
                value: true,
                groupValue: isSelected,
                activeColor: AppColors.brandOrange,
                onChanged: (val) {},
              ),
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(icon, color: Colors.white, size: 20),
              ),
              const SizedBox(width: 16),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
        if (showDivider)
          const Padding(
            padding: EdgeInsets.only(left: 56),
            child: Divider(height: 1, color: Colors.black12),
          ),
      ],
    );
  }
}
