import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  // এই ভ্যারিয়েবলটি বলে কোন আইকন সিলেক্টেড আছে
  final currentIndex = 0.obs;

  // আইকনগুলোর লিস্ট
  final icons = [
    Icons.assignment,      // Daily
    Icons.checklist,       // Tasks
    Icons.event_note,      // Schedule
    Icons.restaurant_menu, // Meal
    Icons.person,          // Profile
  ];

  // আইকনের নিচে দেখানোর লেবেল
  final labels = ["Daily", "Tasks", "Schedule", "Meal", "Profile"];

  @override
  Widget build(BuildContext context) {
    // স্ক্রিনের প্রস্থ নেওয়া (responsive না, শুধু বোঝার জন্য)
    double screenWidth = MediaQuery.of(context).size.width;

    // প্রতিটি আইকনের জন্য প্রস্থ
    double itemWidth = (screenWidth - 60) / icons.length; // margin ছাড়া width

    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: const Center(
        child: Text(
          "Page",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
      bottomNavigationBar: Obx(
            () => Container(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          height: 70,
          decoration: BoxDecoration(
            color: Colors.grey.shade400.withOpacity(0.2),
            borderRadius: BorderRadius.circular(45),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(icons.length, (index) {
              bool isSelected = currentIndex.value == index;

              return GestureDetector(
                onTap: () => currentIndex.value = index,
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 250),
                  curve: Curves.easeOutCubic,
                  width: isSelected ? itemWidth + 20 : itemWidth - 10,
                  height: 45,
                  padding: EdgeInsets.symmetric(horizontal: isSelected ? 12 : 0),
                  decoration: BoxDecoration(
                    color: isSelected
                        ? const Color(0xFF0E0E2C)
                        : Colors.white.withOpacity(0.15),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        icons[index],
                        color: isSelected ? Colors.white : Colors.white70,
                        size: isSelected ? 18 : 14,
                      ),
                      if (isSelected) ...[
                        const SizedBox(width: 6),
                        Text(
                          labels[index],
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 8,
                          ),
                        ),
                      ],
                    ],
                  ),
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}




// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
//
// class HomeScreen extends StatelessWidget {
//   HomeScreen({super.key});
//
//   final currentIndex = 0.obs;
//
//   final _items = [
//     SalomonBottomBarItem(
//       icon: Icon(Icons.home),
//       title: Text("Home"),
//       selectedColor: Colors.purple,
//       unselectedColor: Colors.grey,
//     ),
//     SalomonBottomBarItem(
//       icon: Icon(Icons.favorite),
//       title: Text("Favorite"),
//       selectedColor: Colors.purple,
//       unselectedColor: Colors.grey,
//     ),
//     SalomonBottomBarItem(
//       icon: Icon(Icons.search),
//       title: Text("Search"),
//       selectedColor: Colors.purple,
//       unselectedColor: Colors.grey,
//     ),
//     SalomonBottomBarItem(
//       icon: Icon(Icons.person),
//       title: Text("Person"),
//       selectedColor: Colors.purple,
//       unselectedColor: Colors.grey,
//     ),
//   ];
//
//   final _screens = [
//     Center(child: Text("Home", style: TextStyle(fontSize: 30))),
//     Center(child: Text("Favorite", style: TextStyle(fontSize: 30))),
//     Center(child: Text("Search", style: TextStyle(fontSize: 30))),
//     Center(child: Text("Person", style: TextStyle(fontSize: 30))),
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Obx(() => _screens[currentIndex.value]),
//       bottomNavigationBar: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: ClipRRect(
//           borderRadius: BorderRadius.circular(50), // ← Radius here
//           child: Container(
//             height: 70, // ← Custom height here
//             decoration: BoxDecoration(
//               color: Colors.white,
//               boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 8)],
//             ),
//             child: Obx(
//               () => SalomonBottomBar(
//                 items: _items,
//                 currentIndex: currentIndex.value,
//                 onTap: (index) => currentIndex.value = index,
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
