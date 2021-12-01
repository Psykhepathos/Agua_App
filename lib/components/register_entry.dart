import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/variables.dart';

class RegisterEntry {
  static Widget ReadingEntry(
    context, {
    String day = "Dom",
    String reading1 = "0000",
    String reading2 = "0000",
    String date = "08/11/2021",
    int liters = 130,
    Function()? function,
  }) {
    return Center(
      child: Container(
        height: MediaQuery.of(context).size.height / 13.8209,
        width: MediaQuery.of(context).size.width / 1.17582,
        decoration: BoxDecoration(
          color: Vars.offWhite,
          borderRadius: Vars.borderRadius,
        ),
        padding: EdgeInsets.all(MediaQuery.of(context).size.height / 92.6),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CircleAvatar(
                    backgroundColor: Vars.primaryDark,
                    child: Vars.textSmaller(
                      context,
                      text: day,
                    )),
                SizedBox(
                  width: 10,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Vars.textSmall(context, text: date, color: Vars.blackText),
                    Row(
                      children: [
                        Vars.textSmaller(context,
                            text: "Leitura:", color: Vars.blackText),
                        SizedBox(
                          width: 10,
                        ),
                        Vars.textSmaller(context,
                            text: reading1, color: Vars.blackText),
                        SizedBox(
                          width: 3,
                        ),
                        Vars.textSmaller(context,
                            text: reading2, color: Vars.redText)
                      ],
                    )
                  ],
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  width: 30,
                  height: 22,
                  child: ElevatedButton(
                    onPressed: function,
                    child: Vars.icon("Trash", color: Vars.redText, size: 22),
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.zero,
                      shadowColor: Colors.transparent,
                      primary: Vars.offWhite,
                    ),
                  ),
                ),
                Vars.textSmaller(context,
                    text: "$liters Litros", color: Vars.activeText)
              ],
            )
          ],
        ),
      ),
    );
  }

  static Widget BillEntry(
    context, {
    String day = "Nov",
    double price = 150.25,
    String date = "08/11/2021",
    Function()? function,
  }) {
    return Center(
      child: Container(
        height: MediaQuery.of(context).size.height / 13.8209,
        width: MediaQuery.of(context).size.width / 1.17582,
        decoration: BoxDecoration(
          color: Vars.offWhite,
          borderRadius: Vars.borderRadius,
        ),
        padding: EdgeInsets.all(MediaQuery.of(context).size.height / 92.6),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CircleAvatar(
                    backgroundColor: Vars.primaryDark,
                    child: Vars.textSmaller(
                      context,
                      text: day,
                    )),
                SizedBox(
                  width: 10,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Vars.textSmall(context, text: date, color: Vars.blackText),
                    Row(
                      children: [
                        Vars.textSmaller(
                          context,
                          text: "Preço: ",
                          color: Vars.blackText,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Vars.textSmaller(
                          context,
                          text: "R\$  $price",
                          color: Vars.redText,
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  width: 30,
                  height: 22,
                  child: ElevatedButton(
                    onPressed: function,
                    child: Vars.icon("Trash", color: Vars.redText, size: 22),
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.zero,
                      shadowColor: Colors.transparent,
                      primary: Vars.offWhite,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
