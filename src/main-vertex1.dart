import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fill Your Profile',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'Roboto', // Default font, looks close enough
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF2563EB)),
        useMaterial3: true,
      ),
      home: const FillProfileScreen(),
    );
  }
}

class FillProfileScreen extends StatefulWidget {
  const FillProfileScreen({super.key});

  @override
  State<FillProfileScreen> createState() => _FillProfileScreenState();
}

class _FillProfileScreenState extends State<FillProfileScreen> {
  String? selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // --- App Bar Area ---
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 16.0,
              ),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      // Handle back action
                    },
                    borderRadius: BorderRadius.circular(20),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(Icons.arrow_back, color: Colors.black87),
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    'Fill Your Profile',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.black87,
                    ),
                  ),
                ],
              ),
            ),

            // --- Scrollable Form Content ---
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Column(
                  children: [
                    const SizedBox(height: 10),

                    // Profile Picture Avatar
                    Stack(
                      children: [
                        Container(
                          width: 120,
                          height: 120,
                          decoration: const BoxDecoration(
                            color: Color(0xFFF3F4F6), // Light gray background
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            Icons.person,
                            size: 70,
                            color: Color(0xFFD1D5DB), // Darker gray icon
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: Container(
                            height: 36,
                            width: 36,
                            decoration: BoxDecoration(
                              color: const Color(0xFF2563EB), // Blue
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.white, width: 3),
                            ),
                            child: const Icon(
                              Icons.edit,
                              color: Colors.white,
                              size: 16,
                            ),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 32),

                    // --- Input Fields ---
                    _buildTextField(hintText: 'Full Name'),
                    const SizedBox(height: 16),

                    _buildTextField(hintText: 'Nickname'),
                    const SizedBox(height: 16),

                    _buildTextField(
                      hintText: 'Date of Birth',
                      suffixIcon: const Icon(
                        Icons.calendar_today_outlined,
                        color: Colors.grey,
                        size: 20,
                      ),
                    ),
                    const SizedBox(height: 16),

                    _buildTextField(
                      hintText: 'Email',
                      keyboardType: TextInputType.emailAddress,
                      suffixIcon: const Icon(
                        Icons.email_outlined,
                        color: Colors.grey,
                        size: 20,
                      ),
                    ),
                    const SizedBox(height: 16),

                    // Phone Number Field (Custom Layout)
                    Container(
                      height: 56,
                      decoration: BoxDecoration(
                        color: const Color(0xFFF9FAFB),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        children: [
                          // Country Code Selector
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16.0,
                            ),
                            child: Row(
                              children: [
                                // Using an emoji for the flag to avoid external assets
                                const Text(
                                  '🇺🇸',
                                  style: TextStyle(fontSize: 20),
                                ),
                                const SizedBox(width: 6),
                                const Icon(
                                  Icons.keyboard_arrow_down,
                                  color: Colors.grey,
                                  size: 20,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 24,
                            width: 1,
                            color: Colors.grey.shade300,
                          ),
                          // Phone Input
                          const Expanded(
                            child: TextField(
                              keyboardType: TextInputType.phone,
                              decoration: InputDecoration(
                                hintText: '000 000 0000',
                                hintStyle: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 14,
                                ),
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.symmetric(
                                  horizontal: 16,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 16),

                    // Gender Dropdown
                    Container(
                      height: 56,
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      decoration: BoxDecoration(
                        color: const Color(0xFFF9FAFB),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          value: selectedGender,
                          hint: const Text(
                            'Gender',
                            style: TextStyle(color: Colors.grey, fontSize: 14),
                          ),
                          icon: const Icon(
                            Icons.arrow_drop_down,
                            color: Colors.grey,
                          ),
                          isExpanded: true,
                          style: const TextStyle(
                            color: Colors.black87,
                            fontSize: 14,
                          ),
                          items: <String>['Male', 'Female', 'Other'].map((
                            String value,
                          ) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          onChanged: (newValue) {
                            setState(() {
                              selectedGender = newValue;
                            });
                          },
                        ),
                      ),
                    ),

                    const SizedBox(height: 40), // Bottom padding before button
                  ],
                ),
              ),
            ),

            // --- Bottom Continue Button ---
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: SizedBox(
                width: double.infinity,
                height: 56,
                child: ElevatedButton(
                  onPressed: () {
                    // Handle Continue action
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF2563EB), // Blue
                    foregroundColor: Colors.white,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30), // Pill shape
                    ),
                  ),
                  child: const Text(
                    'Continue',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Helper widget to build consistent TextFields
  Widget _buildTextField({
    required String hintText,
    Widget? suffixIcon,
    TextInputType? keyboardType,
  }) {
    return Container(
      height: 56,
      decoration: BoxDecoration(
        color: const Color(0xFFF9FAFB), // Very light gray background
        borderRadius: BorderRadius.circular(12),
      ),
      child: TextField(
        keyboardType: keyboardType,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(color: Colors.grey, fontSize: 14),
          border: InputBorder.none,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 18,
          ),
          suffixIcon: suffixIcon,
        ),
      ),
    );
  }
}
