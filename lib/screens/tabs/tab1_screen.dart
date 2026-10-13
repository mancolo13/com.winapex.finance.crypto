import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';

class Tab1Screen extends StatelessWidget {
  const Tab1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    final coins = [
      {'name': 'Bitcoin', 'sym': 'BTC', 'price': '\$67,420.00', 'chg': '+3.8%', 'up': true, 'icon': Icons.currency_bitcoin},
      {'name': 'Ethereum', 'sym': 'ETH', 'price': '\$3,510.50', 'chg': '+4.9%', 'up': true, 'icon': Icons.diamond_outlined},
      {'name': 'Solana', 'sym': 'SOL', 'price': '\$158.40', 'chg': '+7.2%', 'up': true, 'icon': Icons.bolt},
      {'name': 'BNB Coin', 'sym': 'BNB', 'price': '\$585.20', 'chg': '-0.4%', 'up': false, 'icon': Icons.token},
      {'name': 'Avalanche', 'sym': 'AVAX', 'price': '\$34.15', 'chg': '+5.1%', 'up': true, 'icon': Icons.ac_unit},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('WinApex • Markets'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: AppTheme.surfaceColor,
                borderRadius: BorderRadius.circular(22),
                border: Border.all(color: AppTheme.primaryColor.withValues(alpha: 0.35)),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Глобальный крипторынок', style: TextStyle(color: Colors.white70, fontSize: 12)),
                  SizedBox(height: 6),
                  Text('\$2.68T • +3.4% 24ч', style: TextStyle(color: AppTheme.primaryColor, fontSize: 24, fontWeight: FontWeight.bold)),
                  SizedBox(height: 6),
                  Text('BTC Доминация: 54.2% • Газ: 18 Gwei • Индекс страха: 72 (Жадность)', style: TextStyle(color: Colors.white60, fontSize: 12)),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Text('Топ активы рынка', style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold)),
            const SizedBox(height: 12),
            ...coins.map((c) => Container(
              margin: const EdgeInsets.only(bottom: 10),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(color: AppTheme.cardColor, borderRadius: BorderRadius.circular(14)),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: AppTheme.primaryColor.withValues(alpha: 0.2),
                    child: Icon(c['icon'] as IconData, color: AppTheme.primaryColor, size: 22),
                  ),
                  const SizedBox(width: 14),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(c['name'] as String, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14)),
                        Text(c['sym'] as String, style: const TextStyle(color: Colors.white60, fontSize: 12)),
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(c['price'] as String, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14)),
                      Text(c['chg'] as String, style: TextStyle(color: (c['up'] as bool) ? Colors.greenAccent : Colors.redAccent, fontSize: 12, fontWeight: FontWeight.bold)),
                    ],
                  ),
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}
