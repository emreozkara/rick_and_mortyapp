import 'package:flutter/foundation.dart';
import 'package:rickandmortyapp/app/locator.dart';
import 'package:rickandmortyapp/models/characters_model.dart';
import 'package:rickandmortyapp/services/api_services.dart';


class ResidentViewmodel extends ChangeNotifier {
  final _apiService = locator<ApiService>();

  List<CharacterModel> _residents = [];
  List<CharacterModel> get residents => _residents;

  void getResidents(List residentsUrlList) async {
    _residents = await _apiService.getCharactersFromUrlList(
      residentsUrlList.map((e) => e.toString()).toList(),
    );
    notifyListeners();
  }
}