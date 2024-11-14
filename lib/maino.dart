import 'package:flutter/material.dart';
import 'dart:async';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoadingPage(),
    );
  }
}

class LoadingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomePage()),
      );
    });

    return Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  final List<String> languages = [
    'پایتون',
    'جاوا',
    'C++',
    'جاوا اسکریپت',
    'C#',
    'PHP',
    'Swift',
    'Kotlin',
    'Ruby',
    'Go'

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('پرطرافدار ترین زبان های برنامه نویسی'),
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: Text('گزینه‌ها'),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text('اشتراک'),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text('درباره'),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                        Navigator.of(context).pop();
                      },
                      child: Text('خروج'),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: languages.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(languages[index]),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LanguageDetailPage(languages[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class LanguageDetailPage extends StatelessWidget {
  final String languageName;

  LanguageDetailPage(this.languageName);

  @override
  Widget build(BuildContext context) {
    String imageUrl;
    String description;

    switch (languageName) {
      case 'پایتون':
        imageUrl = 'https://www.python.org/static/community_logos/python-logo.png';
        description = 'پایتون یک زبان برنامه نویسی سطح بالا است که برای مقاصد عمومی طراحی شده است.';
        break;
      case 'جاوا':
        imageUrl = 'https://upload.wikimedia.org/wikipedia/commons/6/6f/Java_logo_icon.png';
        description = 'جاوا یک زبان برنامه نویسی شیءگرا است که در برنامه نویسی سمت سرور و اپلیکیشن‌های موبایل استفاده می‌شود.';
        break;
      case 'C++':
        imageUrl = 'https://upload.wikimedia.org/wikipedia/commons/1/18/ISO_C%2B%2B_Logo.svg';
        description = 'C++ یک زبان برنامه نویسی چند‌منظوره است که برای توسعه نرم‌افزارهای پیچیده و برنامه‌های سیستم استفاده می‌شود.';
        break;
      case 'جاوا اسکریپت':
        imageUrl = 'https://upload.wikimedia.org/wikipedia/commons/6/6a/JavaScript-logo.png';
        description = 'جاوا اسکریپت یک زبان برنامه نویسی است که در توسعه وب و اپلیکیشن‌های وب استفاده می‌شود.';
        break;
      case 'C#':
        imageUrl = 'https://upload.wikimedia.org/wikipedia/commons/7/7a/C_Sharp_logo.png';
        description = 'C# یک زبان برنامه نویسی شیءگرا است که توسط مایکروسافت توسعه داده شده و برای توسعه برنامه‌های ویندوز استفاده می‌شود.';
        break;
      case 'PHP':
        imageUrl = 'https://upload.wikimedia.org/wikipedia/commons/2/27/PHP_logo.png';
        description = 'PHP یک زبان برنامه نویسی سمت سرور است که برای ایجاد وب‌سایت‌ها و اپلیکیشن‌های وب استفاده می‌شود.';
        break;
      case 'Swift':
        imageUrl = 'https://upload.wikimedia.org/wikipedia/commons/9/9d/Swift_logo.svg';
        description = 'Swift یک زبان برنامه نویسی است که توسط اپل برای توسعه اپلیکیشن‌های iOS و macOS ساخته شده است.';
        break;
      case 'Kotlin':
        imageUrl = 'https://upload.wikimedia.org/wikipedia/commons/7/74/Kotlin_Icon.png';
        description = 'Kotlin یک زبان برنامه نویسی است که برای توسعه اپلیکیشن‌های اندروید استفاده می‌شود.';
        break;
      case 'Ruby':
        imageUrl = 'https://upload.wikimedia.org/wikipedia/commons/7/73/Ruby_logo.svg';
        description = 'Ruby یک زبان برنامه نویسی است که به طور عمده در توسعه وب استفاده می‌شود، به ویژه با فریمورک Ruby on Rails.';
        break;
      case 'Go':
        imageUrl = 'https://upload.wikimedia.org/wikipedia/commons/0/05/Go_Logo.png';
        description = 'Go یک زبان برنامه نویسی متن باز است که توسط گوگل برای توسعه سیستم‌های مقیاس‌پذیر و توزیع شده طراحی شده است.';
        break;
      default:
        imageUrl = '';
        description = 'اطلاعاتی برای این زبان یافت نشد.';
        break;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(languageName),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.network(imageUrl),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              description,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18),

            ),
          ),
        ],
      ),
    );
  }
}
