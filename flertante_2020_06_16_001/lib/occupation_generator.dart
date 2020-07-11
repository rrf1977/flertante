import 'dart:math';

String getOccupations(int code){ //code 0 to 2: 0 man name; 1 woman name;
  Random random = new Random();

  List<String> occupations=[
    "filósofo",
    "arquiteto",
    "engenheiro",
    "advogado",
    "médico",
    "enfermeiro",
    "empresário",
    "faxineiro",
    "cozinheiro",
    "camareiro",

    "promotor",
    "professor",
    "entregador",

    "dentista",
    "desenhista",
    "motorista",
    "musicista",

    "piloto",
    "modelo",
    "ator"
  ];

  String occupation = occupations[random.nextInt(occupations.length)];
  if (code == 1 && occupation.substring(occupation.length - 4) != "ista"){
    if (occupation.substring(occupation.length - 2) == "or" && occupation != "ator"){
      return occupation + "a";
    }
    else if (occupation == "piloto"){ //exception
      return occupation; 
    }
    else if (occupation == "modelo"){ //exception
      return occupation; 
    }
    else if (occupation == "ator"){ //exception
      return "atriz"; 
    }
    else return occupation.substring(0,(occupation.length -1)) + "a";
  }
  else return occupation; 
}
