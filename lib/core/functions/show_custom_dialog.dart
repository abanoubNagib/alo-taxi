// import 'package:alo_taxi/core/theme/styles.dart';
// import 'package:flutter/material.dart';
// import 'package:alo_taxi/core/constant/dark_colors.dart';
//
//
// showCustomDialog(BuildContext context, void Function()? onPressed) {
//   showDialog(
//     context: context,
//     builder: (context) => Dialog(
//       backgroundColor: Colors.white,
//       child: Padding(
//         padding: const EdgeInsets.symmetric(vertical: 35, horizontal: 15),
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             Text('Warning', style: TextStyles.black24bold),
//             const SizedBox(height: 20),
//             Text('Your data will be not saved, are you sure', style: TextStyles.black15medium),
//             const SizedBox(height: 20),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Expanded(
//                   child: CustomTextButton(
//                     text: 'Cancel',
//                     onPressed: () {
//                       context.pop();
//                     },
//                     backgroundColor: AppColors.backgroundDarkBlue,
//                     requestLoading: false,
//                   ),
//                 ),
//                 const SizedBox(width: 10),
//                 Expanded(
//                   child: CustomTextButton(
//                     text: 'Continue',
//                     onPressed: onPressed,
//                     backgroundColor: AppColors.backgroundDarkBlue,
//                     requestLoading: false,
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     ),
//   );
// }