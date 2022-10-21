import 'package:http/http.dart';
import 'package:flutter/material.dart';
import 'SecondPage.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'App';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(elevation: 0.0,backgroundColor: Colors.white,),
        body: const MyStatefulWidget(),
      ),
    );
  }
}



class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void sign(String mail,String password) async{
    try{
      Response response=await post(Uri.parse("https://reqres.in/api/register"),body: {'email':mail,'password':password});
      if(response.statusCode==200){
        print('Created Sucessfully');
      }else{
        print('failed');
      }
    }catch(e){
      print(e);
      // ScaffoldMessengerState.of(context).showSnackBar(SnackBar(content: Text('Not Valid')));
    }
  }

  void login(String mail,String password) async{
    try{
      Response response=await post(Uri.parse("https://reqres.in/api/login"),body: {'email':mail,'password':password});
      if(response.statusCode==200){
        print('login Sucessfully');
        setState(() {
          Navigator.push(context,MaterialPageRoute(builder: (context)=>SecondPage()));
        });
      }else{
        print('failed');
      }
    }catch(e){
      print(e);
      // ScaffoldMessengerState.of(context).showSnackBar(SnackBar(content: Text('Not Valid')));
    }
  }
  @override
  Widget build(BuildContext context) {

    return Container(
      color: Colors.white,

        padding: const EdgeInsets.all(10),
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Sign-in',
                  style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),
                )),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                controller: passwordController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
            ),
            SizedBox(height: 20,),
            Container(
                height: 50,
                width: double.infinity,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[200]
                  ),
                  child: const Text('Login'),
                  onPressed: () {
                    login(nameController.text.toString(),passwordController.text.toString());

                  },
                )
            ),
            SizedBox(height: 10,),
            Container(
                height: 50,
                width: double.infinity,

                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange[200]
                  ),
                  child: const Text('Sign-up'),
                  onPressed: () {
                    sign(nameController.text.toString(),passwordController.text.toString());
                  },
                )
            ),

            TextButton(
              onPressed: () {
                //forgot password screen
              },
              child: const Text('Forgot Password',style: TextStyle(color: Colors.orange),),
            ),

          ],
        ));
  }
}