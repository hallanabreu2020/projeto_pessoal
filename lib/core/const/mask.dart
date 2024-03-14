

class Mask {
  String getNameOfMonth(int numeroMes) {
    List<String> meses = [
      "", 
      "Jan",
      "Fev",
      "Mar",
      "Abr",
      "Mai",
      "Jun",
      "Jul",
      "Ago",
      "Set",
      "Out",
      "Nov",
      "Dez"
    ];

    if (numeroMes >= 1 && numeroMes <= 12) {
      return meses[numeroMes];
    } else {
      return "Mês inválido";
    }
  }

  String cantJustOne(String v){
    if(v.length == 1){
      return "0$v";
    }
    return v;
  }

  String convertData(String v){
    List r = v.split("/");
    if(v == "Escolha uma data"){
      return v;
    }
    return "${r[0] ?? 0} de ${Mask().getNameOfMonth(int.parse((r[1] ?? 0).toString()))}. de ${r[2] ?? ""}";
  }

}


