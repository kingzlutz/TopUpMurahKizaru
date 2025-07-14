
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const TopUpApp());
}

class TopUpApp extends StatelessWidget {
  const TopUpApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TopUp Game Murah',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.black,
        primaryColor: Colors.tealAccent,
        colorScheme: ColorScheme.dark(
          primary: Colors.tealAccent,
          secondary: Colors.cyanAccent,
        ),
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: Colors.white),
          bodyMedium: TextStyle(color: Colors.white70),
        ),
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void openWhatsApp() async {
    final Uri url = Uri.parse("https://wa.me/6289649925248");
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    }
  }

  void openTelegram() async {
    final Uri url = Uri.parse("https://t.me/kizarureall");
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TopUp Game Murah'),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Pilih layanan top-up Anda:",
                  style: TextStyle(fontSize: 18)),
              const SizedBox(height: 20),
              ElevatedButton(
                  onPressed: () {}, child: const Text("Diamond ML / FF")),
              ElevatedButton(
                  onPressed: () {}, child: const Text("Saldo Dana / OVO / GoPay")),
              const SizedBox(height: 30),
              const Text("Hubungi Admin:"),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                      onPressed: openWhatsApp,
                      icon: const Icon(Icons.whatsapp)),
                  IconButton(
                      onPressed: openTelegram,
                      icon: const Icon(Icons.send)),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
