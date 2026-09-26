import 'package:flutter/material.dart';

import '../confirm_village/confirm_village_screen.dart';

class SelectVillageScreen extends StatefulWidget {
  const SelectVillageScreen({super.key});

  @override
  State<SelectVillageScreen> createState() => _SelectVillageScreenState();
}

class _SelectVillageScreenState extends State<SelectVillageScreen> {
  final TextEditingController searchController = TextEditingController();

  String? selectedVillage;

  final List<String> villages = [
    'Gondal',
    'Jetpur',
    'Dhoraji',
    'Upleta',
    'Jasdan',
    'Rajkot',
    'Morbi',
    'Wankaner',
  ];

  List<String> filteredVillages = [];

  @override
  void initState() {
    super.initState();
    filteredVillages = villages;

    searchController.addListener(() {
      filterVillages();
    });
  }

  void filterVillages() {
    final query = searchController.text.toLowerCase();

    setState(() {
      filteredVillages = villages
          .where(
            (village) => village.toLowerCase().contains(query),
          )
          .toList();
    });
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  void continueToConfirmation() {
    if (selectedVillage == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Please select your village'),
        ),
      );
      return;
    }

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ConfirmVillageScreen(
          villageName: selectedVillage!,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Select Your Village',
          style: TextStyle(
            color: Color(0xFF2E7D32),
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
        iconTheme: const IconThemeData(
          color: Color(0xFF2E7D32),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 12),

              // Header
              const Text(
                'Find your village',
                style: TextStyle(
                  fontSize: 27,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF2E7D32),
                ),
              ),

              const SizedBox(height: 8),

              const Text(
                'Select the village where you live to continue with GramMitra.',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black54,
                  height: 1.5,
                ),
              ),

              const SizedBox(height: 24),

              // Search box
              TextField(
                controller: searchController,
                decoration: InputDecoration(
                  hintText: 'Search village...',
                  hintStyle: const TextStyle(
                    color: Colors.black45,
                  ),
                  prefixIcon: const Icon(
                    Icons.search,
                    color: Color(0xFF2E7D32),
                  ),
                  suffixIcon: searchController.text.isNotEmpty
                      ? IconButton(
                          onPressed: () {
                            searchController.clear();
                          },
                          icon: const Icon(Icons.clear),
                        )
                      : null,
                  filled: true,
                  fillColor: const Color(0xFFF5F8F5),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14),
                    borderSide: BorderSide.none,
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 16,
                  ),
                ),
              ),

              const SizedBox(height: 24),

              const Text(
                'Villages',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w700,
                  color: Colors.black87,
                ),
              ),

              const SizedBox(height: 12),

              // Village list
              Expanded(
                child: filteredVillages.isEmpty
                    ? const Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.location_off_outlined,
                              size: 50,
                              color: Colors.black26,
                            ),
                            SizedBox(height: 12),
                            Text(
                              'No village found',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black54,
                              ),
                            ),
                          ],
                        ),
                      )
                    : ListView.builder(
                        itemCount: filteredVillages.length,
                        itemBuilder: (context, index) {
                          final village = filteredVillages[index];
                          final isSelected =
                              selectedVillage == village;

                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedVillage = village;
                              });
                            },
                            child: AnimatedContainer(
                              duration:
                                  const Duration(milliseconds: 200),
                              margin: const EdgeInsets.only(
                                bottom: 12,
                              ),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 16,
                                vertical: 15,
                              ),
                              decoration: BoxDecoration(
                                color: isSelected
                                    ? const Color(0xFFE8F5E9)
                                    : Colors.white,
                                borderRadius:
                                    BorderRadius.circular(14),
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
                                      borderRadius:
                                          BorderRadius.circular(12),
                                    ),
                                    child: const Icon(
                                      Icons.location_on_outlined,
                                      color: Color(0xFF2E7D32),
                                      size: 25,
                                    ),
                                  ),

                                  const SizedBox(width: 15),

                                  Expanded(
                                    child: Text(
                                      village,
                                      style: const TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black87,
                                      ),
                                    ),
                                  ),

                                  Icon(
                                    isSelected
                                        ? Icons.check_circle
                                        : Icons
                                            .radio_button_unchecked,
                                    color: isSelected
                                        ? const Color(0xFF2E7D32)
                                        : Colors.grey.shade400,
                                    size: 27,
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
              ),

              const SizedBox(height: 10),

              // Continue button
              SizedBox(
                width: double.infinity,
                height: 54,
                child: ElevatedButton(
                  onPressed: continueToConfirmation,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF2E7D32),
                    foregroundColor: Colors.white,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                  ),
                  child: const Text(
                    'Continue',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}