import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Widgets/Custom_redio_button.dart';

class RowRadioButton extends StatelessWidget {
  const RowRadioButton({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(RadioButtonController());

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Which Language do you like"),
            SizedBox(height: 10),

            CustomRadioTile<Lang>(
              title: "Flutter",
              value: Lang.Flutter,
              groupValue: controller.selected,
              activeColor: Colors.blue,
            ),

            CustomRadioTile<Lang>(
              title: "Java",
              value: Lang.Java,
              groupValue: controller.selected,
              activeColor: Colors.blue,
            ),

            CustomRadioTile<Lang>(
              title: "Kotlin",
              value: Lang.Kotlin,
              groupValue: controller.selected,
              activeColor: Colors.blue,
            ),

            // // Flutter Option
            // Obx(() => ListTile(
            //   title: Text("Flutter"),
            //   leading: Radio<Lang>(
            //     value: Lang.Flutter,
            //     groupValue: controller.selected.value,
            //     onChanged: (Lang? value) {
            //       if (value != null) {
            //         controller.selected.value = value;
            //       }
            //     },
            //   ),
            // )),
            //
            // // Java Option
            // Obx(() => ListTile(
            //   title: Text("Java"),
            //   leading: Radio<Lang>(
            //     value: Lang.Java,
            //     groupValue: controller.selected.value,
            //     onChanged: (Lang? value) {
            //       if (value != null) {
            //         controller.selected.value = value;
            //       }
            //     },
            //   ),
            // )),
            //
            // // Kotlin Option
            // Obx(() => ListTile(
            //   title: Text("Kotlin"),
            //   leading: Radio<Lang>(
            //     value: Lang.Kotlin,
            //     groupValue: controller.selected.value,
            //     onChanged: (Lang? value) {
            //       if (value != null) {
            //         controller.selected.value = value;
            //       }
            //     },
            //   ),
            // )),
            //
            // SizedBox(height: 20),
            // Obx(() => Text("Selected: ${controller.selected.value.name}")),
          ],
        ),
      ),
    );
  }
}

enum Lang { Flutter, Java, Kotlin }

class RadioButtonController extends GetxController {
  var selected = Lang.Flutter.obs;
}

// import 'package:flutter/material.dart';
//
// class RowRedioButton extends StatefulWidget {
//   const RowRedioButton({super.key});
//
//   @override
//   State<RowRedioButton> createState() => _RowRedioButtonState();
// }
//
// enum Lang { Flutter, Java, Kotlin } // Fixed: 'lang' -> 'Lang' (capital L)
//
// class _RowRedioButtonState extends State<RowRedioButton> {
//   Lang? _selected = Lang.Flutter; // Fixed: 'lan' -> 'Lang'
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text("Which Language do you like"),
//             SizedBox(height: 10),
//
//             // Flutter Option
//             ListTile(
//               title: Text("Flutter"),
//               leading: Radio<Lang>( // Fixed: 'locale' -> 'leading'
//                 value: Lang.Flutter,
//                 groupValue: _selected,
//                 onChanged: (Lang? value) { // Fixed: 'lan' -> 'Lang'
//                   setState(() {
//                     _selected = value;
//                   });
//                 },
//               ),
//             ),
//
//             // Java Option
//             ListTile(
//               title: Text("Java"),
//               leading: Radio<Lang>(
//                 value: Lang.Java,
//                 groupValue: _selected,
//                 onChanged: (Lang? value) {
//                   setState(() {
//                     _selected = value;
//                   });
//                 },
//               ),
//             ),
//
//             // Kotlin Option
//             ListTile(
//               title: Text("Kotlin"),
//               leading: Radio<Lang>(
//                 value: Lang.Kotlin,
//                 groupValue: _selected,
//                 onChanged: (Lang? value) {
//                   setState(() {
//                     _selected = value;
//                   });
//                 },
//               ),
//             ),
//
//             SizedBox(height: 20),
//             Text("Selected: ${_selected?.name}"),
//           ],
//         ),
//       ),
//     );
//   }
// }
