
import 'package:projeto_s/core/const/mask.dart';

class ItensModel {
    List<Iten> itens;

    ItensModel({
        required this.itens,
    });

    factory ItensModel.fromJson(Map<String, dynamic> json) => ItensModel(
        itens: List<Iten>.from(json["itens"].map((x) => Iten.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "itens": List<dynamic>.from(itens.map((x) => x.toJson())),
    };
}

class Iten {
    int id;
    String name;
    String init;
    String end;
    List<String> category;
    String selctCategory;
    int meta1;
    int meta2;

    String get dateFinal{
      return "$init a $end";
    } 
// "${v.day} de ${Mask().getNameOfMonth(int.parse(v.month.toString()))}. de ${v.year}"; 
    Iten({
        required this.id,
        required this.name,
        required this.init,
        required this.end,
        required this.category,
        required this.selctCategory,
        required this.meta1,
        required this.meta2,
    });

    factory Iten.fromJson(Map<String, dynamic> json) => Iten(
        id: json["id"] ?? 0,
        name: json["name"] ?? "",
        init: json["init"] ?? "",
        end: json["end"] ?? "",
        category: List<String>.from(json["category"].map((x) => x)),
        selctCategory: json["selctCategory"] ?? "",
        meta1: json["meta1"] ?? 0,
        meta2: json["meta2"] ?? 0,
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "init": init,
        "end": end,
        "category": List<dynamic>.from(category.map((x) => x)),
        "selctCategory": selctCategory,
        "meta1": meta1,
        "meta2": meta2,
    };
}
