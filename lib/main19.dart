import 'package:flutter/material.dart';
import 'dart:async';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

// صفحه اول (لودر)
class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => MainPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}

// صفحه دوم (صفحه اصلی)
class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("بهترین زبان‌های برنامه نویسی"),
        actions: [
          PopupMenuButton<String>(
            onSelected: (value) {
              if (value == 'خروج') {
                // خروج از برنامه
                Navigator.of(context).pop();
              } else if (value == 'درباره') {
                // نمایش صفحه درباره
                showAboutDialog(context: context);
              } else if (value == 'اشتراک') {
                // نمایش صفحه اشتراک
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text('اشتراک'),
                      content: Text('برای اشتراک با ما تماس بگیرید!'),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text('بستن'),
                        ),
                      ],
                    );
                  },
                );
              }
            },
            itemBuilder: (BuildContext context) {
              return {'اشتراک', 'درباره', 'خروج'}
                  .map((String choice) {
                return PopupMenuItem<String>(
                  value: choice,
                  child: Text(choice),
                );
              }).toList();
            },
          ),
        ],
      ),
      body: ListView(
        children: [
          LanguageItem(
            title: "Python",
            description: "پایتون یک زبان برنامه‌نویسی سطح بالا است.",
          ),
          LanguageItem(
            title: "Java",
            description: "جاوا یک زبان برنامه‌نویسی شی‌گرا است.",
          ),
          LanguageItem(
            title: "C++",
            description: "سی++ یک زبان برنامه‌نویسی چندمنظوره است.",
          ),
          LanguageItem(
            title: "JavaScript",
            description: "جاوااسکریپت برای برنامه‌نویسی وب استفاده می‌شود.",
          ),
          LanguageItem(
            title: "Dart",
            description: "دارت برای توسعه برنامه‌های موبایل و وب استفاده می‌شود.",
          ),
          LanguageItem(
            title: "Go",
            description: "گو یک زبان برنامه‌نویسی سیستم است که توسط گوگل توسعه داده شده است.",
          ),
          LanguageItem(
            title: "Ruby",
            description: "روبی یک زبان برنامه‌نویسی انعطاف‌پذیر است.",
          ),
          LanguageItem(
            title: "Swift",
            description: "سوئیفت برای توسعه اپلیکیشن‌های iOS استفاده می‌شود.",
          ),
          LanguageItem(
            title: "Kotlin",
            description: "کوتلین یک زبان برنامه‌نویسی برای توسعه اپلیکیشن‌های Android است.",
          ),
          LanguageItem(
            title: "PHP",
            description: "پی‌اچ‌پی برای توسعه وب استفاده می‌شود.",
          ),
        ],
      ),
    );
  }
}

// ویجت برای هر آیتم زبان برنامه نویسی
class LanguageItem extends StatelessWidget {
  final String title;
  final String description;

  LanguageItem({required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text(title),
              content: Text(description),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('بستن'),
                ),
              ],
            );
          },
        );
      },
    );
  }
}
