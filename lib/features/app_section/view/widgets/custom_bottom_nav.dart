// import 'package:fitness/core/responsive/size_helper.dart';
// import 'package:flutter/material.dart';
//
// import '../../../home/presentation/view/widgets/nav_item.dart';
// import 'bottom_nav_clip.dart';
//
// class CustomBottomNav extends StatelessWidget {
//   final int currentIndex;
//   final ValueChanged<int> onTap;
//
//   const CustomBottomNav({
//     super.key,
//     required this.currentIndex,
//     required this.onTap,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     final width = (context.sizeProvider.width);
//
//     return Positioned(
//       bottom: 16,
//       left: width > 600 ? width * 0.25 : 16,
//       right: width > 600 ? width * 0.25 : 16,
//       child: ClipPath(
//         clipper: BottomNavClipper(),
//         child: Container(
//           height: (context.sizeProvider.height) * 0.085,
//           decoration: BoxDecoration(
//             color: Colors.black.withOpacity(0.6),
//             borderRadius: BorderRadius.circular(24),
//             boxShadow: [
//               BoxShadow(
//                 color: Colors.black.withOpacity(0.4),
//                 blurRadius: 20,
//               ),
//             ],
//           ),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: List.generate(4, (index) {
//               return NavItem(
//                 icon: Svg,
//                 isSelected: currentIndex == index,
//                 onTap: () => onTap(index),
//               );
//             }),
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// final _icons = [
//   Icons.home_rounded,
//   Icons.search_rounded,
//   Icons.favorite_rounded,
//   Icons.person_rounded,
// ];
