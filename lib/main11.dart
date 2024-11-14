// // import 'package:flutter/material.dart';
// //
// // void main() {
// //   runApp(MyApp());
// // }
// //
// // class MyApp extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       title: 'Programming Languages App',
// //       home: LanguageListPage(), // صفحه اول که لیست زبان‌ها را نشان می‌دهد
// //     );
// //   }
// // }
// //
// // // صفحه اول که لیست زبان‌های برنامه‌نویسی را نمایش می‌دهد
// // class LanguageListPage extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text("Programming Languages"),
// //       ),
// //       body: Center(
// //         child: Column(
// //           mainAxisAlignment: MainAxisAlignment.center,
// //           children: <Widget>[
// //             // لیست زبان‌های برنامه‌نویسی
// //             Text('Languages to learn:',
// //                 style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
// //             SizedBox(height: 20),
// //             Text('1. Python', style: TextStyle(fontSize: 18)),
// //             Text('2. JavaScript', style: TextStyle(fontSize: 18)),
// //             Text('3. Java', style: TextStyle(fontSize: 18)),
// //             Text('4. Dart', style: TextStyle(fontSize: 18)),
// //             Text('5. C++', style: TextStyle(fontSize: 18)),
// //             SizedBox(height: 20),
// //             ElevatedButton(
// //               onPressed: () {
// //                 // رفتن به صفحه بعد
// //                 Navigator.push(
// //                   context,
// //                   MaterialPageRoute(builder: (context) => LanguageDetailsPage()),
// //                 );
// //               },
// //               child: Text("Learn More"),
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }
// //
// // // صفحه دوم که اطلاعات بیشتر را نشان می‌دهد
// // class LanguageDetailsPage extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text("Language Details"),
// //       ),
// //       body: Center(
// //         child: Column(
// //           mainAxisAlignment: MainAxisAlignment.center,
// //           children: <Widget>[
// //             Text('Learn more about programming languages!',
// //                 style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
// //             SizedBox(height: 20),
// //             Text(
// //                 'Programming languages help developers to communicate with computers. Each language has its strengths and is used for specific tasks.',
// //                 style: TextStyle(fontSize: 18)),
// //             SizedBox(height: 20),
// //             ElevatedButton(
// //               onPressed: () {
// //                 // برگشت به صفحه قبلی
// //                 Navigator.pop(context);
// //               },
// //               child: Text("Back to Language List"),
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }
//
// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Programming Languages',
//       home: LanguageListPage(),
//     );
//   }
// }
//
// // صفحه اول که لیست زبان‌های برنامه‌نویسی را نشان می‌دهد
// class LanguageListPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Programming Languages'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text('Select a language to learn more:', style: TextStyle(fontSize: 24)),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () {
//                 // رفتن به صفحه زبان Python
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => LanguageDetailsPage(language: 'Python')),
//                 );
//               },
//               child: Text('Python'),
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 // رفتن به صفحه زبان Dart
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => LanguageDetailsPage(language: 'Dart')),
//                 );
//               },
//               child: Text('Dart'),
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 // رفتن به صفحه زبان Java
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => LanguageDetailsPage(language: 'Java')),
//                 );
//               },
//               child: Text('Java'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// // صفحه جزئیات زبان برنامه‌نویسی
// class LanguageDetailsPage extends StatelessWidget {
//   final String language;
//
//   LanguageDetailsPage({required this.language});
//
//   @override
//   Widget build(BuildContext context) {
//     String description = '';
//
//     switch (language) {
//       case 'Python':
//         description = 'Python is an easy-to-learn programming language used for web development, data science, and automation.';
//         break;
//       case 'Dart':
//         description = 'Dart is a language optimized for building mobile, desktop, and web applications. It is the language behind Flutter.';
//         break;
//       case 'Java':
//         description = 'Java is a widely-used, object-oriented language, often used in web development, Android apps, and large-scale systems.';
//         break;
//       default:
//         description = 'No description available.';
//     }
//
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('$language Details'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text(
//               '$language Programming Language',
//               style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//             ),
//             SizedBox(height: 20),
//             Text(
//               description,
//               style: TextStyle(fontSize: 18),
//               textAlign: TextAlign.center,
//             ),
//             SizedBox(height: 40),
//             ElevatedButton(
//               onPressed: () {
//                 // برگشت به صفحه لیست زبان‌ها
//                 Navigator.pop(context);
//               },
//               child: Text('Back to Language List'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'dart:async';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Programming Languages',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}

// صفحه Splash که ابتدا نمایش داده می‌شود
class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // بعد از 3 ثانیه، به صفحه LanguageListPage می‌رویم
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LanguageListPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Welcome to the Programming Languages App!',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

//
class LanguageListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Programming Languages'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: <Widget>[
          LanguageTile(
            language: 'Python',
            description: 'پایتون یک زبان برنامه‌نویسی ساده و قدرتمند است که در توسعه وب، داده‌کاوی، و هوش مصنوعی کاربرد دارد.',
          ),
          LanguageTile(
            language: 'Dart',
            description: 'Dart زبان اصلی برای توسعه اپلیکیشن‌های موبایل و وب با استفاده از فریم‌ورک فلاتر است.',
          ),
          LanguageTile(
            language: 'Java',
            description: 'جاوا یک زبان شی‌گرا و قدرتمند است که در توسعه اپلیکیشن‌های موبایل، وب و سیستم‌های بزرگ استفاده می‌شود.',
          ),
        ],
      ),
    );
  }
}

// ویجت زبان برنامه‌نویسی که نام زبان و توضیحات آن را نمایش می‌دهد
class LanguageTile extends StatelessWidget {
  final String language;
  final String description;

  LanguageTile({required this.language, required this.description});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        title: Text(
          language,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        subtitle: Text(description),
        onTap: () {
          // هنگامی که روی زبان کلیک می‌شود، صفحه جدید با توضیحات بیشتر باز می‌شود
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => LanguageDetailsPage(
                language: language,
                description: description,
              ),
            ),
          );
        },
      ),
    );
  }
}

// صفحه جزئیات زبان برنامه‌نویسی
class LanguageDetailsPage extends StatelessWidget {
  final String language;
  final String description;

  LanguageDetailsPage({required this.language, required this.description});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$language Details'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '$language Programming Language',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
              description,
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                // برگشت به صفحه قبلی
                Navigator.pop(context);
              },
              child: Text('Back to Language List'),
            ),
          ],
        ),
      ),
    );
  }
}