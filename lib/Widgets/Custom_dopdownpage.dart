import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DropdownScreen extends StatelessWidget {
  DropdownScreen({super.key});

  // Observable variable for dropdown value
  final Rx<String?> dropdownValue = Rx<String?>(null);

  // List of items (unique values)
  final items = [
    'Everything Fine',
    'Cramps',
    'Breast Tenderness',
    'Headache',
    'Acne',
    'Lower Back Pain',
    'Tiredness',
    'Cravings',
    'Sleepless',
    'Abdominal Pain',
    'Vaginal Itching',
    'Vaginal Dryness',
  ];

  @override
  Widget build(BuildContext context) {
    return
      Container(
       // margin: EdgeInsets.all(20),
        padding: EdgeInsets.all(24),
        decoration: BoxDecoration(
          color: Color(0xFF16213e),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Obx(
                  () => DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  // Initial Value
                  value: dropdownValue.value,

                  // Full width dropdown
                  isExpanded: true,

                  // Dropdown background color
                  dropdownColor: Color(0xFF16213e),

                  // Down Arrow Icon
                  icon: const Icon(
                    Icons.keyboard_arrow_down,
                    color: Colors.white,
                  ),

                  // Array list of items
                  items: [
                    // Title item (disabled)
                    DropdownMenuItem<String>(
                      enabled: false,
                      value: null,
                      child: Text(
                        'symptoms',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    // Regular items with green dots
                    ...items.map((String item) {
                      return DropdownMenuItem<String>(
                        value: item,
                        child: Row(
                          children: [
                            Container(
                              height: 12,
                              width: 12,
                              decoration: BoxDecoration(
                                color: Color(0xFF4ade80),
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                            SizedBox(width: 12),
                            Text(
                              item,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      );
                    }).toList(),
                  ],

                  // Selected value display
                  selectedItemBuilder: (BuildContext context) {
                    return [
                      // Empty container for title item
                      Container(),
                      // Display selected items without green dot
                      ...items.map((String item) {
                        return Row(
                          children: [
                            Text(
                              item,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        );
                      }).toList(),
                    ];
                  },

                  // After selecting the desired option, it will
                  // change button value to selected value
                  onChanged: (String? newValue) {
                    if (newValue != null) {
                      dropdownValue.value = newValue;
                    }
                  },
                ),
              ),
            ),
          ],
        ),
      );
  }
}