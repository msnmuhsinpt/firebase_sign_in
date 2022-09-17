import 'package:firebase_sign_in/ui/app_color.dart';
import 'package:firebase_sign_in/utils/constant.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: screenWidth(context),
        color: AppColor.bgWhite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            loginUi(context),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: AppColor.bgWhite,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(width: 1.5, color: AppColor.white),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child:
                        Image.asset('assets/images/ic_google.png', width: 45),
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: AppColor.bgWhite,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(width: 1.5, color: AppColor.white),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: Image.asset('assets/images/ic_apple.png', width: 45),
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: AppColor.bgWhite,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(width: 1.5, color: AppColor.white),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child:
                        Image.asset('assets/images/ic_facebook.png', width: 45),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget loginUi(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Hello Again!',
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.w500, color: AppColor.black),
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          'welcome back you' 've \n been missed!',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontWeight: FontWeight.w500,
              color: AppColor.lightBlack,
              fontSize: 15),
        ),
        const SizedBox(
          height: 50,
        ),
        Container(
          padding: const EdgeInsets.only(left: 10, right: 10),
          width: screenWidth(context) - 50,
          height: 50,
          decoration: BoxDecoration(
              color: AppColor.white, borderRadius: BorderRadius.circular(15)),
          child: const TextField(
            //controller: passwordController,
            decoration: InputDecoration(
                border: InputBorder.none, hintText: 'user name'),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Container(
          padding: const EdgeInsets.only(left: 10, right: 10),
          width: screenWidth(context) - 50,
          height: 50,
          decoration: BoxDecoration(
              color: AppColor.white, borderRadius: BorderRadius.circular(15)),
          child: const TextField(
            //controller: passwordController,
            decoration:
                InputDecoration(border: InputBorder.none, hintText: 'password'),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          width: screenWidth(context) - 50,
          height: 50,
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: AppColor.lightRed,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  )),
              onPressed: () {},
              child: const Text(
                'SignIn',
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: AppColor.white),
              )),
        ),
        const SizedBox(
          height: 20,
        ),
        Row(children: [
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(right: 10, left: 25),
              child: const Divider(
                thickness: 0.2,
                color: AppColor.black,
              ),
            ),
          ),
          const Text('or continue with'),
          Expanded(
            child: Container(
                margin: const EdgeInsets.only(right: 25, left: 10),
                child: const Divider(
                  thickness: 0.2,
                  color: AppColor.black,
                )),
          ),
        ]),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
