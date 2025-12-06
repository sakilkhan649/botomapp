import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Widgets/Custom_dopdown_button.dart';

class RowDropdownButton extends StatelessWidget {
  const RowDropdownButton({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(DropdownController());

    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomDropdown<String>(
                hint: "Select the city",
                value: controller.selectedCity,
                items: controller.cities,
                getLabel: (city) => city,
                dropdownColor: Colors.green,
                onChanged: (value) {
                  controller.selectedCity.value=value;
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DropdownController extends GetxController {
  var selectedCity = Rx<String?>(null);

  final List<String> cities = [
    'Dhaka',
    'Kumilla',
    'Chittagong',
    'Rajshahi',
    'Barishal',
    'Khulna',
  ];
}








// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// class RowDropdownButton extends StatelessWidget {
//   const RowDropdownButton({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     final controller = Get.put(DropdownController());
//
//     return Scaffold(
//       appBar: AppBar(title: Text("Dropdown Form")),
//       body: Center(
//         child: Padding(
//           padding: const EdgeInsets.all(20.0),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Obx(() => DropdownButtonFormField<String>(
//                 decoration: InputDecoration(
//                  // labelText: "Select City",
//                   border: OutlineInputBorder(),
//                   filled: true,
//                   fillColor: Colors.green.shade50,
//                 ),
//                 hint: Text("Select the city"),
//                 value: controller.selectedCity.value.isEmpty
//                     ? null
//                     : controller.selectedCity.value,
//                 isExpanded: true,
//                 dropdownColor: Colors.green.shade100,
//                 icon: Icon(Icons.keyboard_arrow_down),
//                 items: controller.cities.map((city) {
//                   return DropdownMenuItem<String>(
//                     value: city,
//                     child: Text(city),
//                   );
//                 }).toList(),
//                 onChanged: controller.changeCity,
//               )),
//
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// class DropdownController extends GetxController {
//   var selectedCity = ''.obs;
//
//   final List<String> cities = [
//     'Dhaka',
//     'Kumilla',
//     'Chittagong',
//     'Rajshahi',
//     'Barishal',
//     'Khulna',
//     'Sylhet',
//     'Rangpur',
//   ];
//
//   void changeCity(String? value) {
//     if (value != null) {
//       selectedCity.value = value;
//     }
//   }
// }








// import 'package:flutter/material.dart';
//
// import '../Widgets/Custom_dopdownpage.dart';
//
// class RowDopdownButton extends StatefulWidget {
//   const RowDopdownButton({super.key});
//
//   @override
//   State<RowDopdownButton> createState() => _RowDopdownButtonState();
// }
//
// class _RowDopdownButtonState extends State<RowDopdownButton> {
//   String? dopdownbalue;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(
//           children: [
//             DropdownButton(
//               hint: Text(
//                 "selecd the citiy",
//                 style: TextStyle(fontSize: 20, color: Colors.black),
//               ),
//               style: TextStyle(fontSize: 20, color: Colors.black),
//               value: dopdownbalue,
//               isExpanded: true,
//               dropdownColor: Colors.green,
//               icon: Icon(Icons.keyboard_arrow_down),
//               items: [
//                 DropdownMenuItem(child: Text("Dhaka"), value: "Dhaka"),
//                 DropdownMenuItem(child: Text("Kumilla"), value: "Kumilla"),
//                 DropdownMenuItem(child: Text("Citagong"), value: "Citagong"),
//                 DropdownMenuItem(child: Text("Rajshahi"), value: "Rajshahi"),
//                 DropdownMenuItem(child: Text("Borishal"), value: "Borishal"),
//                 DropdownMenuItem(child: Text("khulna"), value: "Khulna"),
//               ],
//               onChanged: (String? value) {
//                 setState(() {
//                   dopdownbalue = value;
//                 });
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
