import 'package:get/get.dart';
import 'package:souls_anime/domain/models/location_model.dart';

class LocationController extends GetxController {
  var listLocation = [].obs; //lista vacia observable

  addLocation({userName, message, avatarLink, distance}) {
    var locationModel = LocationModel(
        userName: userName,
        avatarLink: avatarLink,
        distance: distance,
        message: message);
    listLocation.add(locationModel);
  }
}
