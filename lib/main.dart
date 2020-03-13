import 'package:flutter/material.dart';

void main() 
{
  runApp(MaterialApp
  (
    debugShowCheckedModeBanner: false,
    title: 'CalulatorApp',
    home: Calculator(),
    theme: ThemeData(brightness: Brightness.light,primaryColor: Colors.red, accentColor: Colors.redAccent),
  ));
}
class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}
class _CalculatorState extends State<Calculator> 
{
  double num1 , num2 , result ;
  TextEditingController num1controller = TextEditingController(text: "");
  TextEditingController num2controller = TextEditingController(text: "");

  @override
  Widget build(BuildContext context) 
{
    TextStyle ts = Theme.of(context).textTheme.title;
    return Scaffold
    (
      appBar: AppBar
      (
        title:Text("Calculator App"),
      ),
      body: ListView
      (
        children: <Widget>
        [
          Padding
          (
            padding: EdgeInsets.all(20.0),
            child: TextFormField
            (
              keyboardType: TextInputType.number,style: ts,controller: num1controller,
              decoration: InputDecoration
              (
                labelText: 'First Number',hintText: 'Enter your first number',
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.0))
              ),
            ),
          ),

          Padding
          (
            padding: EdgeInsets.all(20.0),
            child: TextFormField
            (
              keyboardType: TextInputType.number,style: ts,controller: num2controller,
              decoration: InputDecoration
              (
                labelText: 'Second Number',hintText: 'Enter your second number',
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.0))
              ),
            ),
          ),

          Padding
          (
            padding: EdgeInsets.all(20.0),
            child: Row
            (children: <Widget>
            [
              Expanded
              (
                child: RaisedButton
                (
                  color: Colors.blueAccent,
                  child: Text('+',style: ts),
                  onPressed: ()
                  {
                    setState(() 
                    {
                      _add();
                    });
                  }
                )
              ),

              Container(width: 20.0),

              Expanded
              (
                child: RaisedButton
                (
                  color: Colors.blueAccent,
                  child: Text('-',style: ts),
                  onPressed: ()
                  {
                    setState(() 
                    {
                      _sub();
                    });
                  }
                )
              )
            ],),
          ),
          Padding
          (
            padding: EdgeInsets.all(20.0),
            child: Row
            (children: <Widget>
            [
              Expanded
              (
                child: RaisedButton
                (
                  color: Colors.blueAccent,
                  child: Text('*',style: ts),
                  onPressed: ()
                  {setState(() 
                    {
                      _mul();
                    });
                  }
                )
              ),

              Container(width: 20.0),

              Expanded
              (
                child: RaisedButton
                (
                  color: Colors.blueAccent,
                  child: Text('/',style: ts),
                  onPressed: ()
                  {
                    setState(() 
                    {
                      _div();
                    });
                  }
                )
              )
            ],),
          ),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>
        [ 
           RaisedButton
          (
            color: Colors.blueAccent,
            child: Text('Clear',style: ts),
            onPressed: ()
            {
              setState(() 
              {
                _clear();
              });
            }
          ),
        ],),
         
       Padding
      (
        padding:EdgeInsets.all(20.0),
        child: Text("Result = $result",textScaleFactor: 1.15,),
        
      ),
        ],
      )
    );
  }
  double _add()
  {
    num1 = double.parse(num1controller.text);
    num2 = double.parse(num2controller.text);
    result = num1 + num2;
    return result;
  }
  double _sub()
  {
    num1 = double.parse(num1controller.text);
    num2 = double.parse(num2controller.text);
    result = num1 - num2;
    return result;
  }
  double _mul()
  {
    num1 = double.parse(num1controller.text);
    num2 = double.parse(num2controller.text);
    result = num1 * num2;
    return result;
  }
  double _div()
  {
    num1 = double.parse(num1controller.text);
    num2 = double.parse(num2controller.text);
    result = num1 / num2;
    return result;
  }
  void _clear()
  {
    num1controller.text ="0";
    num2controller.text = "0";
    result = 0;
  }
}