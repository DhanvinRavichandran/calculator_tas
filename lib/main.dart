import 'package:flutter/material.dart';

void main() {
  runApp(const calculator());
}

class calculator extends StatelessWidget {
  const calculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home:caltask(),
      debugShowCheckedModeBanner: false,
    );
  }
}
class caltask extends StatefulWidget {
  const caltask({Key? key}) : super(key: key);

  @override
  State<caltask> createState() => _caltaskState();
}
class _caltaskState extends State<caltask> {
  var result = " ";
  double firstnumber =0;
  double secondnumber =0;
  var operator = " ";
  var Result = " ";
  double ans =0;


  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar:AppBar(centerTitle:true,title: const Text("Calculator",
        style: TextStyle(color: Colors.black,fontStyle: FontStyle.italic) ),),
      body:  Center(child: Column(
      children: [Container(color: Colors.black45,
      width: 400,
      height: 200,
      child: Text(result,style: const TextStyle(color: Colors.black,fontSize: 50),),),
       Row(mainAxisAlignment: MainAxisAlignment.start,
      children: [Container(color: Colors.blueGrey,width: 90,height: 90,
      child: TextButton(onPressed:(){
        setState(() {
          result=" ";
        });
      },child: const
      Text("AC",style:TextStyle(color: Colors.black,fontSize: 30,)) ,),),

      const SizedBox(width: 5,),
      Container(color: Colors.blueGrey,width: 90,height: 90,
        child: TextButton(onPressed:(){},child: const
        Text(" ",style:TextStyle(color: Colors.black,fontSize: 30,)) ,),),

      const SizedBox(width: 5,),
        Container(color: Colors.blueGrey,width: 90,height: 90,
          child: TextButton(onPressed:(){
            setState(() {
              firstnumber=double.parse(result);
              result=" ";
              operator="%";
            });
          },child: const
          Text("%",style:TextStyle(color: Colors.black,fontSize: 30,)) ,),),

        const SizedBox(width: 5,),
        Container(color: Colors.blueGrey,width: 105,height: 90,
          child: TextButton(onPressed:(){
            setState(() {
              firstnumber=double.parse(result);
              result=" ";
              operator="/";
            });
          },child: const
          Text("/",style:TextStyle(color: Colors.black,fontSize: 30,)) ,),),],),
      const SizedBox(height: 5,),


      Row(mainAxisAlignment: MainAxisAlignment.start,
        children: [Container(color: Colors.blueGrey,width: 90,height: 90,
          child: TextButton(onPressed:(){
            setState(() {
              result = result+"7";

            });
          },child:
          Text("7",style:TextStyle(color: Colors.black,fontSize: 30,)) ,),),

          const SizedBox(width: 5,),
          Container(color: Colors.blueGrey,width: 90,height: 90,
            child: TextButton(onPressed:(){
              setState(() {
                result = result+"8";
              });
            },child:
            Text("8",style:TextStyle(color: Colors.black,fontSize: 30,)) ,),),

          const SizedBox(width: 5,),
          Container(color: Colors.blueGrey,width: 90,height: 90,
            child: TextButton(onPressed:(){
             setState(() {
               result = result+"9";
             });

            },child: const
            Text("9",style:TextStyle(color: Colors.black,fontSize: 30,)) ,),),

          const SizedBox(width: 5,),
          Container(color: Colors.blueGrey,width: 105,height: 90,
            child: TextButton(onPressed:(){
              setState(() {
                firstnumber=double.parse(result);
                result=" ";
                operator="*";
              });
            },child: const
            Text("*",style:TextStyle(color: Colors.black,fontSize: 30,)) ,),),],),
        const SizedBox(height: 5,),



      Row(mainAxisAlignment: MainAxisAlignment.start,
        children: [Container(color: Colors.blueGrey,width: 90,height: 90,
          child: TextButton(onPressed:(){
            setState(() {
              result = result+"4";
            });
          },child: const
          Text("4",style:TextStyle(color: Colors.black,fontSize: 30,)) ,),),

          const SizedBox(width: 5,),
          Container(color: Colors.blueGrey,width: 90,height: 90,
            child: TextButton(onPressed:(){
              setState(() {
                result = result+"5";
              });
            },child: const
            Text("5",style:TextStyle(color: Colors.black,fontSize: 30,)) ,),),

          const SizedBox(width: 5,),
          Container(color: Colors.blueGrey,width: 90,height: 90,
            child: TextButton(onPressed:(){
              setState(() {
                result = result+"6";
              });
            },child: const
            Text("6",style:TextStyle(color: Colors.black,fontSize: 30,)) ,),),

          const SizedBox(width: 5,),
          Container(color: Colors.blueGrey,width: 105,height: 90,
            child: TextButton(onPressed:(){
              setState(() {
                firstnumber=double.parse(result);
                result=" ";
                operator="-";
              });
            },child: const
            Text("-",style:TextStyle(color: Colors.black,fontSize: 30,)) ,),),],),
        const SizedBox(height: 5,),



      Row(mainAxisAlignment: MainAxisAlignment.start,
        children: [Container(color: Colors.blueGrey,width: 90,height: 90,
          child: TextButton(onPressed:(){
            setState(() {
              result = result+"1";
            });},child: const
          Text("1",style:TextStyle(color: Colors.black,fontSize: 30,)) ,),),

          const SizedBox(width: 5,),
          Container(color: Colors.blueGrey,width: 90,height: 90,
            child: TextButton(onPressed:(){
              setState(() {
                result = result+"2";
              });
            },child: const
            Text("2",style:TextStyle(color: Colors.black,fontSize: 30,)) ,),),

          const SizedBox(width: 5,),
          Container(color: Colors.blueGrey,width: 90,height: 90,
            child: TextButton(onPressed:(){
              setState(() {
                result = result+"3";
              });
            },child: const
            Text("3",style:TextStyle(color: Colors.black,fontSize: 30,)) ,),),

          const SizedBox(width: 5,),
          Container(color: Colors.blueGrey,width: 105,height: 90,
            child: TextButton(onPressed:(){
              setState(() {
                firstnumber=double.parse(result);
                result=" ";
                operator="+";
              });
            },child: const
            Text("+",style:TextStyle(color: Colors.black,fontSize: 30,)) ,),),],),
        const SizedBox(height: 5,),




      Row(mainAxisAlignment: MainAxisAlignment.start,
        children: [Container(color: Colors.blueGrey,width: 180,height: 90,
          child: TextButton(onPressed:(){
            setState(() {
              result = result+"0";
            });
          },child: const
          Text("0",style:TextStyle(color: Colors.black,fontSize: 30,)) ,),),

          const SizedBox(width: 5,),
          Container(color: Colors.blueGrey,width: 90,height: 90,
            child: TextButton(onPressed:(){
              setState(() {
                result = result+".";
              });
            },child: const
            Text(".",style:TextStyle(color: Colors.black,fontSize: 30,)) ,),),

          const SizedBox(width: 5,),
          Container(color: Colors.blueGrey,width: 105,height: 90,
            child: TextButton(onPressed:(){
              setState(() {
                secondnumber=double.parse(result);
                if(operator=="+")
                  {
                    ans=(firstnumber+secondnumber);
                  }
                else if(operator=="-")
                  {
                    ans=(firstnumber-secondnumber);
                  }
                else if(operator=="*")
                {
                  ans=(firstnumber*secondnumber);
                }
                else if(operator=="/")
                  {
                    ans=(firstnumber/secondnumber);
                  }
                else
                {
                  ans=(firstnumber%secondnumber);
                }

                result=ans.toString();

              });
            },child: const
            Text("=",style:TextStyle(color: Colors.black,fontSize: 30,)) ,),),],)],),),

    );
  }
}


