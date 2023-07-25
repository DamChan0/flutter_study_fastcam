import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('input of flutter'),
        ),
        body: Column(
          children: [
            Body(),
            TestRadioButton(),
            TestSlider(),
            TestSwitch(),
            TsetPopupMenu(),
          ],
        ),
      ),
    ),
  );
}

class Body extends StatefulWidget {
  Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  late List<bool> values;
  void onCheck(int index, bool value) {
    setState(() {
      values[index] = value;
    });
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    values = [true, false, false];
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
            value: values[0], onChanged: (value) => onCheck(0, value ?? false)),
        Checkbox(
            value: values[1], onChanged: (value) => onCheck(1, value ?? false)),
        Checkbox(
            value: values[2], onChanged: (value) => onCheck(2, value ?? false)),
      ],
    );

  }
  }



class TestRadioButton extends StatefulWidget {
  const TestRadioButton({Key? key}) : super(key: key);

  @override
  State<TestRadioButton> createState() => _TestRadioButtonState();
}

enum TestValue {
  Test1,
  Test2,
  Test3;
}

class _TestRadioButtonState extends State<TestRadioButton> {
  TestValue? selectValue;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Radio<TestValue>(
            value: TestValue.Test1,
            groupValue: selectValue,
            onChanged: (value) => setState(() => selectValue = value!),
          ),
          title: Text(TestValue.Test1.name),
        ),
        Radio<TestValue>(
          value: TestValue.Test2,
          groupValue: selectValue,
          onChanged: (value) => setState(() => selectValue = value!),
        ),
      ],
    );
  }
}

class TestSlider extends StatefulWidget {
  const TestSlider({Key? key}) : super(key: key);

  @override
  State<TestSlider> createState() => _TestSliderState();
}

class _TestSliderState extends State<TestSlider> {
  double value = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('${value.round()}'),
        Slider(
          value: value,
          onChanged: onSlider,
          label: value.round().toString(),
          divisions: 100,
          max: 100,
          min: 0,
          activeColor: Colors.deepPurple,
        ),
      ],
    );
  }

  void onSlider(double newvalue) {
    setState(() {
      value = newvalue;
    });
  }
}

class TestSwitch extends StatefulWidget {
  const TestSwitch({Key? key}) : super(key: key);

  @override
  State<TestSwitch> createState() => _TestSwitchState();
}

class _TestSwitchState extends State<TestSwitch> {
  late bool onSwitch = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Switch(value: onSwitch, onChanged: onClickSwitch),
        CupertinoSwitch(value: onSwitch, onChanged: onClickSwitch),
      ],
    );
  }

  void onClickSwitch(bool newvalue) {
    setState(() {
      onSwitch = newvalue;
    });
  }
}


class TsetPopupMenu extends StatefulWidget {
  const TsetPopupMenu({Key? key}) : super(key: key);

  @override
  State<TsetPopupMenu> createState() => _TsetPopupMenuState();
}

class _TsetPopupMenuState extends State<TsetPopupMenu> {
  TestValue selectValue = TestValue.Test1;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(selectValue.name),
        PopupMenuButton(itemBuilder: (context) {
          return TestValue.values.map((value) =>
              PopupMenuItem(value: value, child: Text(value.name))).toList();
        },
        onSelected: (newValue)=> setState(() {
          selectValue = newValue;
        })
        ,),
      ],
    );
  }
}


