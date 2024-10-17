import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageSate();
}

class _LoginPageSate extends State<LoginPage>{
  late Color myColor;
  late Size mediaSize;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool rememberUser = false;

  @override
  Widget build(BuildContext context) {
    myColor = Theme.of(context).primaryColor;
    mediaSize = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        color: myColor,
        image: DecorationImage(
            image: const AssetImage("assets/images/logo.png"),
            fit: BoxFit.none,
            colorFilter: ColorFilter.mode(myColor.withOpacity(0.2), BlendMode.dstATop))
          ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(children: [
          Positioned(top: 80, child: _buildTop()),
          Positioned(bottom: 0, child: _buildBottom())
        ],),
      ),
    );
  }

  Widget _buildTop(){
    return SizedBox(
      width: mediaSize.width,
      child: const Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.location_on_sharp,
            size: 100,
            color: Colors.white,
          ),
          Text("DFM",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 40,
            letterSpacing: 2
          ),)
        ],
      ),
    );
  }
  
  Widget _buildBottom(){
    return SizedBox(
      width: mediaSize.width,
      child: Card(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30)
          ),),
          child: Padding(
            padding: const EdgeInsets.all(32.0),
            child: _buildForm(),
          ),
      ),
    );
  }

  Widget _buildForm(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [Text("Bienvvenue",
        style: TextStyle(color: myColor, fontSize: 32, fontWeight: FontWeight.w500),),
        _buildGreyText("Espace d' administration"),
        const SizedBox(height: 60),
        _buildGreyText("Téléphone"),
        _buildInputField(emailController),
        const SizedBox(height: 40),
        _buildGreyText("Mot de passe"),
        _buildInputField(passwordController, isPassword: true),
        const SizedBox(height: 20),
        _buildRememberForgot(),
        const SizedBox(height: 20),
        _buildLoginButton(),
        const SizedBox(height: 20),
        _buildOtherLogin()
      ],
    );
  }

  Widget _buildGreyText(String text){
    return Text(text, style: const TextStyle(color: Colors.grey),
    );
  }

  Widget _buildInputField(TextEditingController controller, {isPassword = false}){
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        suffixIcon: isPassword ? Icon(Icons.remove_red_eye) : Icon(Icons.done)
      ),
      obscureText: isPassword,
    );
  }

  Widget _buildRememberForgot(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Checkbox(value: rememberUser, onChanged: (value){
              setState(() {
                rememberUser = value!;
              });
            }),
            _buildGreyText("se souvenir de moi")
          ],
        ),
        TextButton(onPressed: (){}, child: _buildGreyText("Mot de passe oublié?"))
      ],
    );
  }
  
  Widget _buildLoginButton(){
    return ElevatedButton(
        onPressed: (){
          debugPrint("Email : ${emailController.text}");
          debugPrint("Password : ${passwordController.text}");
        },
        style: ElevatedButton.styleFrom(
          shape: const StadiumBorder(),
          elevation: 20,
          shadowColor: myColor,
          minimumSize: const Size.fromHeight(60)
        ),
        child: const Text("Se connecter"));
  }
  
  Widget _buildOtherLogin(){
    return Center(
      child: Column(
        children: [
          _buildGreyText("Se connecter avec"),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Tab(icon: Image.asset("assets/images/facebook.png")),
              Tab(icon: Image.asset("assets/images/twiter.png")),
              Tab(icon: Image.asset("assets/images/insta.jpeg"))
            ],
          )
        ],
      ),
    );
  }
}
