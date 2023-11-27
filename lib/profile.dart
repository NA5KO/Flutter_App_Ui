import 'package:flutter/material.dart';
import 'package:flutter_app_ui/widgets/total_wallet.dart';

class Profile extends StatefulWidget {
  const Profile(this.goHistory, {super.key});

  final void Function() goHistory;

  @override
  State<StatefulWidget> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  get goHistory => widget.goHistory;

  bool isDarkMode = false;

  void toggleDarkMode() {
    setState(() {
      isDarkMode = !isDarkMode;
    });
  }

  var colorDark = const Color.fromARGB(255, 120, 174, 218);
  var colorLight = const Color.fromARGB(255, 54, 136, 202);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Scaffold(
        backgroundColor: isDarkMode
            ? const Color.fromRGBO(9, 16, 30, 0.855)
            : const Color.fromARGB(255, 231, 237, 248),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: TextButton.icon(
            style: TextButton.styleFrom(
              padding: const EdgeInsets.all(0),
            ),
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back,
              color: isDarkMode ? colorDark : colorLight,
              size: 35,
            ),
            label: const Text(''),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.exit_to_app,
                color: Color.fromARGB(255, 222, 171, 32),
                size: 30,
              ),
            ),
          ],
        ),
        body: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 60,
              ),
              const Stack(
                alignment: Alignment.bottomRight,
                children: [
                  CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage('assets/images/avatar.png'),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Icon(
                      Icons.settings,
                      color: Color.fromARGB(255, 192, 189, 189),
                      size: 30,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                width: 220,
                child: Text(
                  'Baha Bouali',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: isDarkMode ? colorDark : colorLight,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 220,
                child: Text(
                  'INSAT',
                  style: TextStyle(
                    fontSize: 24,
                    color: isDarkMode ? colorDark : colorLight,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 220,
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.email,
                      color: isDarkMode ? colorDark : colorLight,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      'bahabouali.71@gmail.com',
                      style: TextStyle(
                        color: isDarkMode ? colorDark : colorLight,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 220,
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.contact_phone,
                      color: isDarkMode ? colorDark : colorLight,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      '20000240',
                      style: TextStyle(
                        color: isDarkMode ? colorDark : colorLight,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              const TotalWallet(),
              const SizedBox(
                height: 30,
              ),
              Column(
                children: [
                  SizedBox(
                    width: 260,
                    child: ElevatedButton.icon(
                      onPressed: () {
                        goHistory();
                      },
                      icon: const Icon(
                        Icons.history,
                        color: Colors.blue,
                        size: 30,
                      ),
                      label: const Text(
                        'History',
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 20,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        shadowColor: Colors.grey,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 40,
                          vertical: 12,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: 260,
                    child: ElevatedButton(
                      onPressed: () {
                        toggleDarkMode();
                      },
                      style: ElevatedButton.styleFrom(
                        shadowColor: Colors.grey,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 40,
                          vertical: 12,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            isDarkMode
                                ? Icons.wb_sunny_outlined
                                : Icons.nightlight_outlined,
                            color: Colors.blue,
                            size: 30,
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Text(
                            isDarkMode ? 'Light mode' : 'Dark mode',
                            style: const TextStyle(
                              color: Colors.blue,
                              fontSize: 20,
                            ),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Icon(
                            isDarkMode ? Icons.toggle_on : Icons.toggle_off,
                            color: Colors.blue,
                            size: 30,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const Spacer(),
              const Padding(
                padding: EdgeInsets.only(
                  bottom: 20,
                ),
                child: Text(
                  'Made with ❤️',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
