// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(FurnitureApp());
// }
//
// class FurnitureApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: FurnitureHomePage(),
//     );
//   }
// }
//
// class FurnitureHomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//
//       appBar: AppBar(
//         title: Text('Furniture App'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               'Find the home Furniture',
//               style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//             ),
//             SizedBox(height: 16),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 CategoryButton(label: 'All', selected: true),
//                 CategoryButton(label: 'Sofas'),
//                 CategoryButton(label: 'Tables'),
//                 CategoryButton(label: 'Lamps'),
//               ],
//             ),
//             SizedBox(height: 16),
//             Expanded(
//               child: GridView.count(
//                 crossAxisCount: 2,
//                 crossAxisSpacing: 16,
//                 mainAxisSpacing: 16,
//                 children: [
//                   FurnitureCard(
//                     imagePath: 'assets/sofa.jpg',
//                     title: 'Room Sofa',
//                     price: 650,
//                   ),
//                   FurnitureCard(
//                     imagePath: 'assets/tv.jpg',
//                     title: 'Daewoo TV',
//                     price: 1000,
//                   ),
//                   FurnitureCard(
//                     imagePath: 'assets/lamp.jpg',
//                     title: 'Table Lamp',
//                     price: 300,
//                   ),
//                   FurnitureCard(
//                     imagePath: 'assets/cabinet.jpg',
//                     title: 'Cabinet',
//                     price: 450,
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         items: const <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.favorite),
//             label: 'Favorites',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.shopping_cart),
//             label: 'Cart',
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// class CategoryButton extends StatelessWidget {
//   final String label;
//   final bool selected;
//
//   const CategoryButton({required this.label, this.selected = false});
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
//       decoration: BoxDecoration(
//         color: selected ? Colors.orange : Colors.grey[200],
//         borderRadius: BorderRadius.circular(8),
//       ),
//       child: Text(
//         label,
//         style: TextStyle(color: selected ? Colors.white : Colors.black),
//       ),
//     );
//   }
// }
//
// class FurnitureCard extends StatelessWidget {
//   final String imagePath;
//   final String title;
//   final int price;
//
//   const FurnitureCard({required this.imagePath, required this.title, required this.price});
//
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//         child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Image.asset(imagePath, fit: BoxFit.cover, height: 100, width: double.infinity),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Text(
//                   title,
//                   style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 8.0),
//                 child: Text('\$$price'),
//               ),
//               Spacer(),
//               Padding(
//                 padding: const EdgeInsets.all(4.0),
//                 child: ElevatedButton(
//                   onPressed: () {},
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.end,
//                     children: [
//                       Text('+'),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//             ),
//         );
//     }
// }
