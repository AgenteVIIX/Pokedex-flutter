import 'dart:convert';

import 'package:pokedex/models/pokemon.dart';
import 'package:http/http.dart' as http;

Future<List<Pokemon>> fetchPokemon() async{
  final response = await http.get(Uri.parse('https://pokeapi.co/api/v2/pokemon'));

  if(response.statusCode == "200") {
    final jsonList = jsonDecode(response.body) as List<dynamic>;

    return jsonList.map((json) => Pokemon.fromJson(json)).toList();
    
  } else {
    throw Exception('Failed to load Pokemons');
  }
}