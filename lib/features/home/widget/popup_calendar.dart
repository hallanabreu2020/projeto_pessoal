import 'package:flutter/material.dart';
import 'package:projeto_s/features/home/controller/home_controller.dart';

class PopUpCalendar{
  popUp(BuildContext context,{ bool init = true, required  HomeController homeController}){
    showDialog(
      context: context,
      builder: (context){
        return  Dialog(
          child: SizedBox(
            height: 400,
            child: Column(
              children: [
                Align(alignment: Alignment.centerRight, child: IconButton(onPressed: (){
                  Navigator.pop(context);
                }, icon: const Icon(Icons.close))),
                CalendarDatePicker(
                  initialDate: DateTime.now(),
                  firstDate: DateTime.now(),
                  lastDate: DateTime.now().add(const Duration(days: 100000)),
                  onDateChanged: (DateTime v) {
                    if(init){
                      homeController.addInitDate(v);
                    }else{
                      homeController.addEndDate(v);
                    }
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          )
        );
      },
    );
  }
}