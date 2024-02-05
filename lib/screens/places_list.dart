import 'package:favorite_places/models/Place.dart';
import 'package:flutter/material.dart';

class PlacesList extends StatelessWidget {
  const PlacesList({super.key, required this.places});

  final List<Place> places;

  @override
  Widget build(BuildContext context) {
    if (places.isEmpty) {
      return const Center(
        child: Text('No places yet, start adding some!'),
      );
    }
    return ListView.builder(
      itemCount: places.length,
      itemBuilder: (context, index) => ListTile(
        title: Text(places[index].title, style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Theme.of(context).colorScheme.onBackground),),
        
      )
    );
  }
}