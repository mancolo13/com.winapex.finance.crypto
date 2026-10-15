import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';

class Tab4Screen extends StatefulWidget {
  const Tab4Screen({super.key});

  @override
  State<Tab4Screen> createState() => _Tab4ScreenState();
}

class _Tab4ScreenState extends State<Tab4Screen> {
  final List<Map<String, dynamic>> _alerts = [
    {'title': 'BTC above \$70,000', 'active': true},
    {'title': 'ETH below \$3,300', 'active': true},
    {'title': 'SOL above \$165.00', 'active': false},
    {'title': 'Whale Transfers > \$10M', 'active': true},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Win • Alerts'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: const EdgeInsets.all(18),
              decoration: BoxDecoration(
                color: AppTheme.surfaceColor,
                borderRadius: BorderRadius.circular(18),
                border: Border.all(color: AppTheme.primaryColor.withValues(alpha: 0.3)),
              ),
              child: const Text('Price Alerts & Notifications', style: TextStyle(color: AppTheme.primaryColor, fontWeight: FontWeight.bold, fontSize: 16)),
            ),
            const SizedBox(height: 20),
            ..._alerts.map((a) => Container(
              margin: const EdgeInsets.only(bottom: 10),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              decoration: BoxDecoration(color: AppTheme.cardColor, borderRadius: BorderRadius.circular(14)),
              child: Row(
                children: [
                  const Icon(Icons.notifications_active_outlined, color: AppTheme.primaryColor, size: 22),
                  const SizedBox(width: 14),
                  Expanded(child: Text(a['title'] as String, style: const TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold))),
                  Switch(
                    value: a['active'] as bool,
                    activeThumbColor: AppTheme.primaryColor,
                    onChanged: (v) => setState(() => a['active'] = v),
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
