import 'package:flutter/material.dart';
import '../core/app_theme.dart';

class BrandHeader extends StatelessWidget {
  const BrandHeader({super.key, this.subtitle});
  final String? subtitle;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(width: 76, height: 76, decoration: BoxDecoration(
        color: Colors.white, shape: BoxShape.circle,
        border: Border.all(color: AppColors.mint, width: 5)),
        child: const Icon(Icons.wb_sunny_rounded, size: 42, color: Color(0xFFE7B83F))),
      const SizedBox(height: 10),
      const Text('GramMitra', style: TextStyle(fontSize: 25, fontWeight: FontWeight.w800, color: AppColors.greenDark)),
      const SizedBox(height: 3),
      Text(subtitle ?? 'Verified Civic Network', style: const TextStyle(color: AppColors.muted)),
    ]);
  }
}
