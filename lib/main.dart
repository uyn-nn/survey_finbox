import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Survey Flutter',
      debugShowCheckedModeBanner: false,
      home: Survey(),
    );
  }
}

class Survey extends StatefulWidget {
  const Survey({Key? key}) : super(key: key);

  @override
  State<Survey> createState() => SurveyState();
}

class ListItem {
  int value;
  String name;
  ListItem(this.value, this.name);
}

class SurveyState extends State<Survey> {
  String? timeHolding;
  int count = 0;
  final List<String> dropdownElement1 = [
    'Chưa từng, đang tìm hiểu',
    'Dưới 1 năm',
    '1-3 năm',
    'Trên 3 năm'
  ];

  final List<String> dropdownElement3 = [
    'Dưới 1 triệu',
    '1-3 triệu',
    'Trên 3 triệu'
  ];

  final List<String> dropdownElement4 = [
    'Chưa biết',
    'Biết một ít',
    'Đã biết nhiều'
  ];

  final List<String> dropdownElement5 = ['Chưa từng', 'Đã từng'];

  final List<String> dropdownElement6 = [
    'Mạng xã hội',
    'Bạn bè giới thiệu',
    'Tự tìm hiểu',
  ];

  final int value = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
      body: Container(
        padding:
            const EdgeInsets.only(left: 15, top: 15, right: 30, bottom: 30),
        child: ListView(
          children: <Widget>[
            const Text(
              'Hãy để Finbox hiểu hơn về Bạn',
              style: TextStyle(
                  color: Color(0xff1B447E),
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            const Text(
              'Question ?/6',
              style: TextStyle(fontSize: 15.0, color: Color(0xff8692A6)),
            ),
            const Text(
              '_ _ _ _ _ _',
              style: TextStyle(fontSize: 20.0, color: Color(0xff8692A6)),
            ),
            const SizedBox(height: 15),
            const Text('Bạn đầu tư chứng khoán bao lâu rồi?',
                style: TextStyle(fontSize: 15.0, color: Color(0xff8692A6))),
            const SizedBox(height: 20),
            DropdownButtonFormField(
              decoration: InputDecoration(
                hintText: 'Choose an option',
                hintStyle: const TextStyle(color: Colors.grey),
                focusColor: Colors.white,
                enabledBorder: OutlineInputBorder(
                  borderSide:
                      const BorderSide(color: Color(0xff8692A6), width: 1),
                  borderRadius: BorderRadius.circular(6),
                ),
                border: OutlineInputBorder(
                  borderSide:
                      const BorderSide(color: Color(0xff8692A6), width: 1),
                  borderRadius: BorderRadius.circular(6),
                ),
                filled: true,
                fillColor: Colors.white,
              ),
              onChanged: (value) {
                setState(() {
                  if (timeHolding == null) {
                    count++;
                  }
                  timeHolding = value as String?;
                });
              },
              items: dropdownElement1
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value,
                        style: const TextStyle(
                            fontSize: 15.0, color: Color(0xff8692A6))));
              }).toList(),
            ),
            const SizedBox(height: 20),
            const Text('Bạn thường nắm giữ cổ phiếu trong bao lâu?',
                style: TextStyle(fontSize: 15.0, color: Color(0xff8692A6))),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      primary: Colors.grey.shade400,
                      fixedSize: const Size(90, 30),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50))),
                  child: const Center(
                      child: Text(
                    'Vài tuần',
                    style: TextStyle(fontSize: 12),
                  )),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      primary: Colors.grey.shade400,
                      fixedSize: const Size(90, 30),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50))),
                  child: const Center(
                      child: Text(
                    'Vài tháng',
                    style: TextStyle(fontSize: 12),
                  )),
                ),
                ElevatedButton(
                  onPressed: () {},

                style: ElevatedButton.styleFrom(
                    primary: Colors.grey.shade400,
                    fixedSize: const Size(90, 30),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50))),
                  child: const Center(
                      child: Text(
                    'Vài năm',
                    style: TextStyle(fontSize: 12),
                  ))),
              ],
            ),
            const SizedBox(height: 20),
            const Text('Mức vốn đầu tư của bạn là bao nhiêu?',
                style: TextStyle(fontSize: 15.0, color: Color(0xff8692A6))),
            const SizedBox(height: 20),
            DropdownButtonFormField(
              decoration: InputDecoration(
                hintText: 'Choose an option',
                hintStyle: const TextStyle(color: Colors.grey),
                focusColor: Colors.white,
                enabledBorder: OutlineInputBorder(
                  borderSide:
                      const BorderSide(color: Color(0xff8692A6), width: 1),
                  borderRadius: BorderRadius.circular(6),
                ),
                border: OutlineInputBorder(
                  borderSide:
                      const BorderSide(color: Color(0xff8692A6), width: 1),
                  borderRadius: BorderRadius.circular(6),
                ),
                filled: true,
                fillColor: Colors.white,
              ),
              onChanged: (value) {
                setState(() {
                  if (timeHolding == null) {
                    count++;
                  }
                  timeHolding = value as String?;
                });
              },
              items: dropdownElement3
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value,
                        style: const TextStyle(
                            fontSize: 15.0, color: Color(0xff8692A6))));
              }).toList(),
            ),
            const SizedBox(height: 20),
            const Text('Kiến thức về chứng khoán đang ở mức nào?',
                style: TextStyle(fontSize: 15.0, color: Color(0xff8692A6))),
            const SizedBox(height: 20),
            DropdownButtonFormField(
              decoration: InputDecoration(
                hintText: 'Choose an option',
                hintStyle: const TextStyle(color: Colors.grey),
                focusColor: Colors.white,
                enabledBorder: OutlineInputBorder(
                  borderSide:
                      const BorderSide(color: Color(0xff8692A6), width: 1),
                  borderRadius: BorderRadius.circular(6),
                ),
                border: OutlineInputBorder(
                  borderSide:
                      const BorderSide(color: Color(0xff8692A6), width: 1),
                  borderRadius: BorderRadius.circular(6),
                ),
                filled: true,
                fillColor: Colors.white,
              ),
              onChanged: (value) {
                setState(() {
                  if (timeHolding == null) {
                    count++;
                  }
                  timeHolding = value as String?;
                });
              },
              items: dropdownElement4
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value,
                        style: const TextStyle(
                            fontSize: 15.0, color: Color(0xff8692A6))));
              }).toList(),
            ),
            const SizedBox(height: 20),
            const Text('Bạn đã từng sử dụng các công cụ hỗ trợ đầu tư chưa?',
                style: TextStyle(fontSize: 15.0, color: Color(0xff8692A6))),
            const SizedBox(height: 20),
            DropdownButtonFormField(
              decoration: InputDecoration(
                hintText: 'Choose an option',
                hintStyle: const TextStyle(color: Colors.grey),
                focusColor: Colors.white,
                enabledBorder: OutlineInputBorder(
                  borderSide:
                      const BorderSide(color: Color(0xff8692A6), width: 1),
                  borderRadius: BorderRadius.circular(6),
                ),
                border: OutlineInputBorder(
                  borderSide:
                      const BorderSide(color: Color(0xff8692A6), width: 1),
                  borderRadius: BorderRadius.circular(6),
                ),
                filled: true,
                fillColor: Colors.white,
              ),
              onChanged: (value) {
                setState(() {
                  if (timeHolding == null) {
                    count++;
                  }
                  timeHolding = value as String?;
                });
              },
              items: dropdownElement5
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value,
                        style: const TextStyle(
                            fontSize: 15.0, color: Color(0xff8692A6))));
              }).toList(),
            ),
            const SizedBox(height: 20),
            const Text('Bạn biết đến Finbox qua đâu?',
                style: TextStyle(fontSize: 15.0, color: Color(0xff8692A6))),
            const SizedBox(height: 20),
            DropdownButtonFormField(
              decoration: InputDecoration(
                hintText: 'Choose an option',
                hintStyle: const TextStyle(color: Colors.grey),
                focusColor: Colors.white,
                enabledBorder: OutlineInputBorder(
                  borderSide:
                      const BorderSide(color: Color(0xff8692A6), width: 1),
                  borderRadius: BorderRadius.circular(6),
                ),
                border: OutlineInputBorder(
                  borderSide:
                      const BorderSide(color: Color(0xff8692A6), width: 1),
                  borderRadius: BorderRadius.circular(6),
                ),
                filled: true,
                fillColor: Colors.white,
              ),
              onChanged: (value) {
                setState(() {
                  if (timeHolding == null) {
                    count++;
                  }
                  timeHolding = value as String?;
                });
              },
              items: dropdownElement6
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value,
                        style: const TextStyle(
                            fontSize: 15.0, color: Color(0xff8692A6))));
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
