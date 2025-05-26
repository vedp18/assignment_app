import 'package:assignment_app/providers/music_services_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:assignment_app/widgets/music_service_tile.dart';

class MusicServiceView extends StatefulWidget {
  const MusicServiceView({super.key});

  @override
  State<MusicServiceView> createState() => _MusicServiceViewState();
}

class _MusicServiceViewState extends State<MusicServiceView> {
  @override
  void initState() {
    super.initState();

    Future.microtask(() {
      Provider.of<MusicServicesProvider>(context, listen: false).loadServices();
    });
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<MusicServicesProvider>(context);

    if (provider.isLoading) {
      return const Center(child: CircularProgressIndicator());
    }
    if (provider.services.isEmpty) {
      return Center(child: Text("Error", style: TextStyle(fontSize: 24)));
    }

    return Column(
      children:
          provider.services.map((service) {
            return MusicServiceTile(
              title: service.title,
              description: service.description,
              iconNname: service.iconName,
              bgImage: service.bgImage,
            );
          }).toList(),
    );
  }
}
