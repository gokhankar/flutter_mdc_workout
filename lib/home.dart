import 'package:flutter/material.dart';

import 'model/products_repository.dart';
import 'model/product.dart';
import 'supplemental/asymmetric_view.dart';

class HomePage extends StatelessWidget {
  final Category category;

  const HomePage({this.category = Category.all, Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AsymmetricView(products: ProductsRepository.loadProducts(category));

    // return Scaffold(
    //   appBar: AppBar(
    //     systemOverlayStyle: SystemUiOverlayStyle.light,
    //     // systemOverlayStyle: SystemUiOverlayStyle.dark,
    //     leading: IconButton(
    //       icon: const Icon(
    //         Icons.menu,
    //         semanticLabel: 'menu',
    //       ),
    //       onPressed: () {
    //         print('Menu button');
    //       },
    //     ),
    //     title: const Text('SHRINE'),
    //     actions: <Widget>[
    //       IconButton(
    //         icon: const Icon(
    //           Icons.search,
    //           semanticLabel: 'search',
    //         ),
    //         onPressed: () {
    //           print('Search button');
    //         },
    //       ),
    //       IconButton(
    //         icon: const Icon(Icons.tune, semanticLabel: 'filter'),
    //         onPressed: () {
    //           print('Filter button');
    //         },
    //       ),
    //     ],
    //   ),
    //   body: AsymmetricView(
    //       products: ProductsRepository.loadProducts(Category.all)),
    // );
  }
}























// // Copyright 2018-present the Flutter authors. All Rights Reserved.
// //
// // Licensed under the Apache License, Version 2.0 (the "License");
// // you may not use this file except in compliance with the License.
// // You may obtain a copy of the License at
// //
// // http://www.apache.org/licenses/LICENSE-2.0
// //
// // Unless required by applicable law or agreed to in writing, software
// // distributed under the License is distributed on an "AS IS" BASIS,
// // WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// // See the License for the specific language governing permissions and
// // limitations under the License.

// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';

// import 'model/products_repository.dart';
// import 'model/product.dart';

// class HomePage extends StatelessWidget {
//   const HomePage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("SHRINE"),
//         actions: <Widget>[
//           IconButton(
//             icon: const Icon(
//               Icons.search,
//               semanticLabel: 'search',
//             ),
//             onPressed: () {
//               print('Search button');
//             },
//           ),
//           IconButton(
//             icon: const Icon(
//               Icons.tune,
//               semanticLabel: 'filter',
//             ),
//             onPressed: () {
//               print('Filter button');
//             },
//           ),
//         ],
//         leading: IconButton(
//           onPressed: () {
//             print("Menu button pressed");
//           },
//           icon: const Icon(Icons.menu, semanticLabel: "menu"),
//         ),
//       ),
//       body: GridView.count(
//           crossAxisCount: 2,
//           padding: const EdgeInsets.all(16.0),
//           childAspectRatio: 8.0 / 9.0,
//           children: _buildGridCards(context)),
//       resizeToAvoidBottomInset: false,
//     );
//   }
//   List<Card> _buildGridCards(BuildContext context) {
//     List<Product> products = ProductsRepository.loadProducts(Category.all);
//     if (products.isEmpty) {
//       return const <Card>[];
//     }
//     final ThemeData theme = Theme.of(context);
//     final NumberFormat formatter = NumberFormat.simpleCurrency(
//         locale: Localizations.localeOf(context).toString());
//     return products.map((product) {
//       return Card(
//         clipBehavior: Clip.antiAlias,
//         elevation: 0.0,
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: <Widget>[
//             AspectRatio(
//               aspectRatio: 18 / 11,
//               child: Image.asset(
//                 product.assetName,
//                 package: product.assetPackage,
//                 fit: BoxFit.fitWidth,
//               ),
//             ),
//             Expanded(
//               child: Padding(
//                 padding: const EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.end,
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: <Widget>[
//                     Text(
//                       product.name,
//                       style: theme.textTheme.button,
//                       softWrap: false,
//                       overflow: TextOverflow.ellipsis,
//                       maxLines: 1,
//                     ),
//                     const SizedBox(height: 4.0),
//                     Text(
//                       formatter.format(product.price),
//                       style: theme.textTheme.caption,
//                     ),
//                     // End new code
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       );
//     }).toList();
//   }
// }
