import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nulti_auth/domain/use_case/controllers/location.dart';
import 'package:nulti_auth/domain/use_case/controllers/permissions.dart';
import 'package:nulti_auth/domain/use_case/location_management.dart';
import 'package:url_launcher/url_launcher.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key key}) : super(key: key);

  @override
  _State createState() => _State();
}

enum RadioState { on, off }

class _State extends State<NotificationPage> {
  PermissionsController permissionsController;
  LocationController locationController;
  LocationManager manager;

  @override
  void initState() {
    super.initState();
    permissionsController = Get.find();
    locationController = Get.find();
    manager = LocationManager();
  }

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0XFFD58CFC),
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.account_circle)),
        centerTitle: true,
        title: Text('Future Event',
            style: TextStyle(fontSize: 20, color: Color(0xFF000000))),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.settings))],
      ),
      body: Container(
        color: Color(0XFFD58CFC),
        child: Center(
          child: Column(
            children: [
        Expanded(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: ElevatedButton(
                onPressed: () async {
                  locationController.location.value = null;
                  if (permissionsController.locationGranted) {
                    final position = await manager.getCurrentLocation();
                    locationController.location.value = position;
                    Get.snackbar('Tu ubicación es...',
                        'Latitud ${position.latitude} - Longitud: ${position.longitude}');
                  }
                },
                child: const Text('Obtener Ubicacion'),
              ),
            ),
          ),
        ),
        Expanded(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Obx(
                () => ElevatedButton(
                  onPressed: locationController.location.value != null
                      ? () async {
                          final location = locationController.location.value;
                          final url =
                              "https://www.google.es/maps?q=${location?.latitude},${location?.longitude}";
                          await launch(url);
                        }
                      : null,
                  child: const Text('Abrir Maps'),
                ),
              ),
            ),
          ),
        ),
      ],
          ),
        ),
      ),
    );
  }
}



