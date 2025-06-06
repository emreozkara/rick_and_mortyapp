import 'package:flutter/material.dart';
import 'package:rickandmortyapp/app/locator.dart';
import 'package:rickandmortyapp/models/characters_model.dart';
import 'package:rickandmortyapp/services/api_services.dart';
import 'package:rickandmortyapp/services/prefrences_service.dart';


class FavouritesViewmodel extends ChangeNotifier {
  final _preferencesService = locator<PreferencesService>();
  final _apiService = locator<ApiService>();

  List<int> _favourites = [];
  List<CharacterModel> _characters = [];

  List<CharacterModel> get characters => _characters;

  void getFavourites() {
    _favourites = _preferencesService.getSavedCharacters();
    _getCharacters();
  }

  void _getCharacters() async {
    _characters = await _apiService.getMultipleCharacters(_favourites);
    notifyListeners();
  }
}