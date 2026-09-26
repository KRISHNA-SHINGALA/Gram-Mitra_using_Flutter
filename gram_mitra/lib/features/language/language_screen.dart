import 'package:flutter/material.dart';

import '../../generated/app_localizations.dart';
import '../auth/login/login_screen.dart';

class LanguageScreen extends StatefulWidget {
  final void Function(Locale locale) onLanguageChanged;

  const LanguageScreen({
    super.key,
    required this.onLanguageChanged,
  });

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  String selectedLanguage = 'gu';

  final List<Map<String, String>> languages = [
    {
      'code': 'gu',
      'name': 'ગુજરાતી',
      'englishName': 'Gujarati',
    },
    {
      'code': 'hi',
      'name': 'हिन्दी',
      'englishName': 'Hindi',
    },
    {
      'code': 'en',
      'name': 'English',
      'englishName': 'English',
    },
  ];

  void selectLanguage(String code) {
    setState(() {
      selectedLanguage = code;
    });

    widget.onLanguageChanged(Locale(code));
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              const Spacer(flex: 2),

              // Language icon
              Container(
                width: 76,
                height: 76,
                decoration: BoxDecoration(
                  color: const Color(0xFFE8F5E9),
                  borderRadius: BorderRadius.circular(22),
                ),
                child: const Icon(
                  Icons.language,
                  size: 42,
                  color: Color(0xFF2E7D32),
                ),
              ),

              const SizedBox(height: 28),

              // Heading
              Text(
                l10n.chooseLanguage,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF2E7D32),
                ),
              ),

              const SizedBox(height: 8),

              Text(
                l10n.yourLanguage,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.black54,
                ),
              ),

              const SizedBox(height: 38),

              // Language options
              ...languages.map(
                (language) => _buildLanguageCard(
                  code: language['code']!,
                  name: language['name']!,
                  englishName: language['englishName']!,
                ),
              ),

              const Spacer(),

              // Continue button
              SizedBox(
                width: double.infinity,
                height: 54,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Login(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF2E7D32),
                    foregroundColor: Colors.white,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                  ),
                  child: Text(
                    l10n.continueButton,
                    style: const TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLanguageCard({
    required String code,
    required String name,
    required String englishName,
  }) {
    final bool isSelected = selectedLanguage == code;

    return GestureDetector(
      onTap: () {
        selectLanguage(code);
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        width: double.infinity,
        margin: const EdgeInsets.only(bottom: 14),
        padding: const EdgeInsets.symmetric(
          horizontal: 18,
          vertical: 16,
        ),
        decoration: BoxDecoration(
          color: isSelected
              ? const Color(0xFFE8F5E9)
              : Colors.white,
          borderRadius: BorderRadius.circular(14),
          border: Border.all(
            color: isSelected
                ? const Color(0xFF2E7D32)
                : Colors.grey.shade300,
            width: isSelected ? 2 : 1,
          ),
        ),
        child: Row(
          children: [
            Container(
              width: 46,
              height: 46,
              decoration: BoxDecoration(
                color: const Color(0xFFF1F8F2),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Icon(
                Icons.translate,
                color: Color(0xFF2E7D32),
                size: 24,
              ),
            ),

            const SizedBox(width: 16),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 3),
                  Text(
                    englishName,
                    style: const TextStyle(
                      fontSize: 13,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
            ),

            AnimatedSwitcher(
              duration: const Duration(milliseconds: 200),
              child: isSelected
                  ? const Icon(
                      Icons.check_circle,
                      key: ValueKey('selected'),
                      color: Color(0xFF2E7D32),
                      size: 27,
                    )
                  : Icon(
                      Icons.radio_button_unchecked,
                      key: const ValueKey('unselected'),
                      color: Colors.grey.shade400,
                      size: 27,
                    ),
            ),
          ],
        ),
      ),
    );
  }
}