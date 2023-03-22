import 'package:json_annotation/json_annotation.dart';

class MarsWeather {
  final String sol_keys;

  @JsonKey(name: 'AT')
  final int atmospheric_temp;

  MarsWeather({required this.sol_keys, required this.atmospheric_temp});

  factory MarsWeather.fromJson(Map<String, dynamic> json) =>
      _$MarsWeatherFromJson(json);
}
// idea is to iterate over the list of sol_keys from the JSON object
// and then use the sol_key to get the corresponding JSON values


// for(int i; i < 50; i++) {
//   print("Hello World");
// }


// for (final sol_key in sol_keys) {}
// }

// for (int i = 0; i < sol_keys.length(); i++) {}