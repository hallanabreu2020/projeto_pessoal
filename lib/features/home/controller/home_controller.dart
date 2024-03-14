import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:projeto_s/core/const/mask.dart';
import 'package:projeto_s/features/home/model/itens_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeController with ChangeNotifier{

  late ItensModel itens;

  HomeController(){itens =  ItensModel.fromJson({"itens":[]});}


  TextEditingController nameController = TextEditingController();
  TextEditingController meta1Controller = TextEditingController();
  TextEditingController meta2Controller = TextEditingController();

  List<String> category = ["Categoria 1","Categoria 2","Categoria 3","Categoria 4"];
  String selctCategory = "Categoria 1";

  String init = "Escolha uma data";
  String end = "Escolha uma data";

  String dateFinal = "";


  conclude(){
    itens.itens.add(Iten.fromJson(
      {
        "id": itens.itens.length + 1,
        "name": nameController.text,
        "init": init,
        "end": end,
        "category": category,
        "selctCategory": selctCategory,
        "meta1": int.parse(meta1Controller.text == "" ? "0" : meta1Controller.text),
        "meta2": int.parse(meta2Controller.text == "" ? "0" : meta2Controller.text),
      }
    ));
    disposeLocal();
    notifyListeners();
    salvarObjeto();
  }

  inclement(Iten i){
    for(var e in itens.itens){
      if(e.id == i.id){
        e.name = nameController.text;
        e.init = init;
        e.end = end;
        e.category = category;
        e.selctCategory = selctCategory;
        e.meta1 = int.parse(meta1Controller.text == "" ? "0" : meta1Controller.text);
        e.meta2 = int.parse(meta2Controller.text == "" ? "0" : meta2Controller.text);
      }
    }
    disposeLocal();
    notifyListeners();
    salvarObjeto();
  }

  deleteItem(Iten i){
    itens.itens.remove(i);
    notifyListeners();
    salvarObjeto();
  }

  


  addInitDate(DateTime v){
    init = "${Mask().cantJustOne(v.day.toString())}/${Mask().cantJustOne(v.month.toString())}/${v.year}";
    notifyListeners();
  }

  addEndDate(DateTime v){
    end = "${Mask().cantJustOne(v.day.toString())}/${Mask().cantJustOne(v.month.toString())}/${v.year}";
    notifyListeners();
  }

  

  addSelctCategory(String v){
    selctCategory = v;
    notifyListeners();
  }

  initLocal(Iten i){
    selctCategory = i.selctCategory;
    init = i.init;
    end = i.end;
    nameController.text = i.name;
    meta1Controller.text = i.meta1.toString();
    meta2Controller.text = i.meta2.toString();
  }

  disposeLocal(){
    selctCategory = "Categoria 1";
    init = "Escolha uma data";
    end = "Escolha uma data";
    nameController.text = "";
    meta1Controller.text = "";
    meta2Controller.text = "";
  }


  salvarObjeto() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String jsonString = jsonEncode(itens.toJson());
    await prefs.setString("data", jsonString);
  }

  recuperarObjeto() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? jsonString = prefs.getString("data");
    if (jsonString != null) {
      Map<String, dynamic> jsonMap = jsonDecode(jsonString);
      itens = ItensModel.fromJson(jsonMap);
    }
    notifyListeners();
  }
}


// {
//   "itens":[
//     {
//       "id": 1,
//       "name": "Meu nome",
//       "init":"data inicial",
//       "end":"data final",
//       "category":["dede", "ddd"],
//       "selctCategory":"dede",
//       "meta1": 20,
//       "meta2": 30
//     }
//   ]
// }