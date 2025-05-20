import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hotel_booking_app/Controller/Widgets/alternativebutton/alternativebutton.dart';
import 'package:hotel_booking_app/Controller/Widgets/appcolors/appcolors.dart';
import 'package:hotel_booking_app/Controller/Widgets/textfieldwidget/textfieldwidget.dart';
import 'package:hotel_booking_app/Controller/Widgets/textformwidget/textformwidget.dart';
import 'package:hotel_booking_app/Controller/Widgets/textwidget/textwidget.dart';

class FindRoomView extends StatefulWidget {
  const FindRoomView({super.key});

  @override
  State<FindRoomView> createState() => _FindRoomViewState();
}

class _FindRoomViewState extends State<FindRoomView> {

  bool isSwitched = false;
  int selectedIndex = 0;
   final List<String> labels = ['Hotels', 'Villas'];

   String groupvalue = "fan";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            SizedBox(height: 30,),
            Row(
              children: [
              Textwidget(text: "Find Room", color: AppColors.blackColor, fontsize: 28,
               fontweight: FontWeight.w600),
               Spacer(),
                  const Text('Stay',
            style: TextStyle(fontSize: 18),
          ),
          const SizedBox(width: 10),
          Transform.scale(                                  // <== SHORTENS HEIGHT
            scale: 0.75,                                     // <== ADJUST SCALE HERE
            child: Switch(
              value: isSwitched,
              onChanged: (value) {
                setState(() {
                  isSwitched = value;
                  print("Switched to: $isSwitched");
                });
             },
              activeColor: Colors.deepPurpleAccent,
             inactiveThumbColor: Colors.grey,            ),
          ),
          const SizedBox(width: 10),
          Text('Pass',
            style: TextStyle(fontSize: 18),
          ),
            ],),
            SizedBox(height: 30,),
            ToggleButtons(
              isSelected: [true, false], // Control which button is selected
              onPressed: (index) {
                setState(() {
                  selectedIndex = index; // Update selected index
                  });
                  },
                  children: labels
                  .map((label) => Container(
                    width: 100,
                    decoration: BoxDecoration(
                      color: selectedIndex == labels.indexOf(label)
                      ? Colors.blue
                      : Colors.transparent, // Background color
                      border: Border.all(color: Colors.blue),
                      ),
              child: Center(
                child: Text(
                  label,
                    style: TextStyle(
                      color: selectedIndex == labels.indexOf(label)
                      ? Colors.white
                      : Colors.blue, // Text color
                    ),
                   ),
                  ),
                ))
              .toList(),
            ),
            SizedBox(height: 20,),
            TextFormWidget(prefixicon: Icon(Icons.location_on), text: "where do you want",
             color: AppColors.blackColor, size: 18, fontweight: FontWeight.w600),
             SizedBox(height: 20,),
             TextFieldWidget(preIcon: Icon(Icons.calendar_today), text: "Checkin date & time",
              color: AppColors.blackColor, size: 18, fontweight: FontWeight.w600,
               suffixIcon: Icon(Icons.keyboard_arrow_down)),
               SizedBox(height: 20,),
               TextFieldWidget(preIcon: Icon(Icons.calendar_today_outlined), text: "Checkout date & time",
              color: AppColors.blackColor, size: 18, fontweight: FontWeight.w600,
               suffixIcon: Icon(Icons.keyboard_arrow_down)),
               SizedBox(height: 10,),
              Row(children: [
                 Row(children: [
                  Radio(value: "fan", groupValue: groupvalue, onChanged: ((value){
                groupvalue = value.toString();
                setState(() {
                  
                });
               }),
               ),Text("Fan"),
                 ],),
               Row(children: [
                Radio(value: "Air condition", groupValue: groupvalue, onChanged: ((value){
                groupvalue = value.toString();
                setState(() {
                  
                });
               }),
               ),Text("Air Condition")
               ],),
              ],),
               SizedBox(height: 10,),
               AlternativeButton(text: "Search"),
               SizedBox(height: 10,),
               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 20),
                 child: Row(children: [
                  Textwidget(text: "BEST PLACES", color: AppColors.greyColor,
                   fontsize: 18, fontweight: FontWeight.w600),
                   Spacer(),
                   Textwidget(text: "VIEW ALL", color: AppColors.blueColor, fontsize: 18,
                    fontweight: FontWeight.w600)
                 ],),
               )
          ],
        ),
      )
    );
  }
}