import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/product.dart';
import '../localization/localization_provider.dart';
import '../widgets/product_card.dart';
import '../localization/languages.dart';

class HomeScreen extends StatelessWidget {
  final List<Product> products = [
    Product(
      name: {'en': 'Laptop', 'ar': 'حاسوب محمول', 'fr': 'Ordinateur Portable'},
      description: {
        'en': 'A powerful laptop for developers.\n' * 20,
        'ar': 'حاسوب قوي للمطورين.\n' * 20,
        'fr': 'Un ordinateur portable puissant pour les développeurs.\n' * 20,
      },
      imagePath: 'assets/laptop.png',
    ),
    Product(
      name: {'en': 'Smartphone', 'ar': 'هاتف ذكي', 'fr': 'Téléphone Intelligent'},
      description: {
        'en': 'The latest smartphone model.\n' * 20,
        'ar': 'أحدث طراز من الهواتف الذكية.\n' * 20,
        'fr': 'Le dernier modèle de smartphone.\n' * 20,
      },
      imagePath: 'assets/mobile.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<LocalizationProvider>(context);

    return Directionality(
      textDirection: provider.textDirection,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Products"),
          actions: [
            DropdownButton<String>(
              value: provider.currentLang,
              onChanged: (val) => provider.changeLang(val!),
              items: supportedLocales.map((lang) {
                return DropdownMenuItem(
                  value: lang,
                  child: Text(languageNames[lang]!),
                );
              }).toList(),
            ),
          ],
        ),
        body: ListView.builder(
          itemCount: products.length,
          itemBuilder: (_, i) => ProductCard(product: products[i]),
        ),
      ),
    );
  }
}
