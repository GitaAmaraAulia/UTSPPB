import 'package:flutter/material.dart';
import '../models/tas_model.dart';
import '../widgets/card_tas_widget.dart';
import 'detail_page.dart';

class GridPage extends StatelessWidget {
  static const routeName = '/grid';
  const GridPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Katalog Tas'),
        backgroundColor: Colors.transparent,
        foregroundColor: Theme.of(context).primaryColor,
        elevation: 0,
      ),
      body: LayoutBuilder(builder: (context, constraints) {
        // responsive: 2 columns on narrow screens, 3 on wider
        final crossAxisCount = constraints.maxWidth < 600 ? 2 : 3;
        return Padding(
          padding: const EdgeInsets.all(12.0),
          child: GridView.builder(
            itemCount: tasList.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: crossAxisCount,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
              childAspectRatio: 0.72,
            ),
            itemBuilder: (context, index) {
              final tas = tasList[index];
              return CardTasWidget(
                tas: tas,
                onTap: () => Navigator.pushNamed(context, DetailPage.routeName, arguments: tas),
              );
            },
          ),
        );
      }),
    );
  }
}
