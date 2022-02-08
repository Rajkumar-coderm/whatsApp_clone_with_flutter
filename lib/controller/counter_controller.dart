import 'package:get/get.dart';

class Controller extends GetxController {
  var allData = [false, false, false];
  onChange1(value) => {
        print(value),
        allData[value] = !allData[value],
        update(),
      };
  var dialogData = [false, false, false, false];
  var dic1 = [
    {0: false},
    {1: false},
    {2: false},
    {3: false}
  ];
  var emptyList = [];
  Map<int, bool> dic = {};
  onChange2(value) => {
        dialogData[value] = !dialogData[value],
        emptyList.add(dialogData[value]),
        dic[value] = dialogData[value],
        print(dic),
        update()
      };

  cancel() => {
        for (var i = 0; i < dic.length; i++)
          {
            if (dic[i] == true)
              {
                emptyList.add(false),
              }
            else
              {emptyList.add(true)}
          },
        emptyList = dialogData,
        update()
      };
  late bool me;
  okFunction() => {
        print(dic),
        for (var i = 0; i < dic.length; i++)
          {
            if (dic[i] == false)
              {dialogData.add(dic[i] as bool), print(dialogData)},

          },
    dialogData.isEmpty,
    update()

      };
}
