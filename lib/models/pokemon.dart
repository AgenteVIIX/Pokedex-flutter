class Pokemon {
  String? name;
  String? spriteUrl;

  Pokemon({this.name, this.spriteUrl});

  factory Pokemon.fromJson(Map<String, dynamic> json) {
    return Pokemon(
      name: json['name'],
      spriteUrl: json['sprites']['front_default'],
    );
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    return data;
  }
}


