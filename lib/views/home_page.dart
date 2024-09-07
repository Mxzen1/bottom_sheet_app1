import 'package:flutter/material.dart';
import '../widgets/login_bottom_sheet.dart';
import '../widgets/register_bottom_sheet.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF050522), 
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            Image.asset(
              '../Assets/image1.png',
              scale: 1.5,
            ),
            const SizedBox(height: 40),

            const Text(
              'Welcome',
              style: TextStyle(
                color: Color.fromRGBO(239, 88, 88, 1),
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
             Container(height: 20),
            
            const Text(
              'Lorem ipsum dolor sit amet,',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white70,
                fontSize: 16,
  
              ),
            ),
            const Text('consectetur adipiscing elit, sed do eiusmod',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white70,
                fontSize: 16,),
            ),       
            const SizedBox(height: 40),
            
            Row(
              mainAxisAlignment : MainAxisAlignment.center,
              children: [
                Flexible(
                  child: ElevatedButton(
                    onPressed: () {
                      showModalBottomSheet(
                        context: context,
                        builder: (context) =>  RegisterBottomSheet(),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFFFDE69),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: const Text(
                      'Register',
                      style: TextStyle(
                        color:  Color(0xFF050522), 
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment : MainAxisAlignment.center,
              children: [
                Flexible(
                  child: ElevatedButton(
                    onPressed: () {
                      showModalBottomSheet(
                        context: context,
                        builder: (context) => const LoginBottomSheet(),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      side: const BorderSide(color: Color(0xFFFFDE69)),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text(
                      'Login',
                      style: TextStyle(
                        color: Color(0xFFFFDE69),
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const Spacer(),
            
            const Text(
              'All Right Reserved ©2021',
              style: TextStyle(
                color: Color(0xFFFFDE69),
                fontSize: 12,
              ),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}



/////////////////////////////////////////////////////////////////////////////////////////////////////////


// import 'package:bottom_sheet_mohamed_refaat_d14/widgets/login_bottom_sheet.dart';
// import 'package:bottom_sheet_mohamed_refaat_d14/widgets/register_bottom_sheet.dart';
// import 'package:flutter/material.dart';

// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
        // // appBar: AppBar( 
        // //   title: const Text('Home Page',),
        // //   backgroundColor: const Color.fromRGBO(5, 5, 34, 1),
        // // ),
//         backgroundColor: const Color.fromRGBO(5, 5, 34, 1),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               // const Spacer(),
//               ElevatedButton(onPressed: (){
//                 showModalBottomSheet(
//                   context: context, 
//                   builder: (context)=> const LoginBottomSheet()
//                 );
//               }, child: const Text('Login')),
//               const SizedBox(
//                 height: 20,
//               ),
//               ElevatedButton(onPressed: (){
//                 showModalBottomSheet(
//                   context: context, 
//                   builder: (context)=> const RegisterBottomSheet()
//                 );
//               }, child: const Text('Register')),
//               // const Spacer(),
//             ],
//           ),
//         ),
//       );
//   }
// }