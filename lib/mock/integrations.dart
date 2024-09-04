import 'integration.dart';

class Integrations {
  List<Integration> integrationsList;

  Integrations({required this.integrationsList});

  static Integrations fromJson(List<dynamic> json) {
    return Integrations(
      integrationsList: json.map((e) => Integration.fromJson(e)).toList(),
    );
  }
}
