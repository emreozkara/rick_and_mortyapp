import 'package:flutter/foundation.dart';
import 'package:rickandmortyapp/app/locator.dart';
import 'package:rickandmortyapp/models/characters_model.dart';
import 'package:rickandmortyapp/models/episode_model.dart';
import 'package:rickandmortyapp/services/api_services.dart';

class SectionCharactersViewmodel extends ChangeNotifier {
  final _apiService = locator<ApiService>();

  List<CharacterModel> _characters = [];
  List<CharacterModel> get characters => _characters;

  void getCharacters(EpisodeModel episodeModel) async {
    _characters =
        await _apiService.getCharactersFromUrlList(episodeModel.characters);
    notifyListeners();
  }
}