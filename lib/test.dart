import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class textformfiledLesson extends StatelessWidget {

  var contoller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        controller: contoller, //to take the text to make an action after click at button
        //take the text that was in textform filed
        obscureText: true,
        //to make text not visibale if you make visible password
        style: TextStyle(fontSize: 20, color: Colors.red)
        //to change text style
        ,
        decoration: InputDecoration(
            hintText: "Enter Password"
            //disapper after user will enter data
            ,
            labelText: "password "
            //never diapper but go to up
            // ,border:InputBorder.none//to disapper brder
            ,
            border: OutlineInputBorder()
            //to put order
            ,
            prefixIcon: Icon(Icons.ice_skating)
            //to put icon before text
            ,
            suffixIcon: Icon(Icons.ice_skating)
            //to put icon after text
            ,
            icon: Icon(Icons.ice_skating) //to put icon before that textfield
            ),
        //put type of text that go
        keyboardType: TextInputType.visiblePassword
        // keyboardType:TextInputType.number
        // keyboardType:TextInputType.phone
        // keyboardType:TextInputType.number
        // keyboardType:TextInputType.text
        // keyboardType:TextInputType.datetime
        // keyboardType:TextInputType.multiline
        // keyboardType:TextInputType.visiblePassword
        ,
        onFieldSubmitted: (value) => {print(value), print(value)},
        //when you clicked at sumbitt button
        onChanged: (value) => {print(value)} //while your write,
        );
  }
}
