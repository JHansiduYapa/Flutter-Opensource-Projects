import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:units_converter/units_converter.dart';

import '../Const/colors.dart';
import '../Const/convertList.dart';
import '../Controllers/stringTextFormat.dart';

class converterScreen extends StatefulWidget {
  final int listSlectorIndex;

  converterScreen(this.listSlectorIndex, {super.key});

  @override
  State<converterScreen> createState() => _converterScreenState();
}

class _converterScreenState extends State<converterScreen> {
  // init numeral systems
  var numeralSystems = NumeralSystems();

  // control the text value of the editor at the convertor
  TextEditingController controller = TextEditingController();

  //
  FocusNode focusNode = FocusNode();

  // hint text of the text field
  String _hintText = '0';

  // drop down menu items that can select from the menu
  late List<String> labelValues;

  //get the relevant function from this list to process
  late List _releventFunction;

  // initial display text value
  var _displayText = '0';

  // selected value from the drop down menu from unit
  String? selectedFromValue;

  // selected value from the drop down menu to unit
  String? selectedToValue;

  // convert element that get from convertList.dart
  dynamic _convertElement;

  // convert to element that get from convertList.dart
  dynamic _convertToElement;

  @override
  void initState() {
    super.initState();
    labelValues = selectList[widget.listSlectorIndex]
        .map((e) => e['label'].toString())
        .toList();

    // listen to the text field when it is on focus mode or not
    focusNode.addListener(() {
      if (focusNode.hasFocus) {
        _hintText = '';
      } else {
        _hintText = '0';
      }
      setState(() {});
    });

    // list of function that handle the relevant logic to relevant cards
    _releventFunction = [
      _handleDoubleInputChanged,
      _handleDoubleInputChanged,
      _handleNumberSystemInputChanged,
      _handleDoubleInputChanged,
      _handleDoubleInputChanged,
      _handleDoubleInputChanged,
      _handleDoubleInputChanged,
      _handleDoubleInputChanged,
      _handleDoubleInputChanged,
      _handleDoubleInputChanged,
      _handleDoubleInputChanged,
      _handleDoubleInputChanged
    ];
  }

  //handling function to double values
  void _handleDoubleInputChanged(String newText) {
    setState(() {
      if (newText.isEmpty) {
        _displayText = 0.toString();
      } else {
        var newValue = double.parse(newText);
        if (_convertElement != null && _convertToElement != null) {
          _displayText = removeTrailingZeros(newValue.convertFromTo(_convertElement, _convertToElement)!);

        } else {
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            content: Text("Select Units"),
          ));
        }
      }
    });
  }

  // number system convert function
  void _handleNumberSystemInputChanged(String newText) {
    setState(() {
      if (newText.isEmpty) {
        _displayText = 0.toString();
      } else {
        var newValue = newText;

        _displayText =
            newValue.convertFromTo(_convertElement, _convertToElement)!;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Conversion Aid"),
        elevation: 0,
        backgroundColor: backgroundColor,
      ),
      body: Column(children: [
        Expanded(
          flex: 1,
          child: Container(
            decoration: BoxDecoration(
                color: backgroundColor,
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20))),
            child: Padding(
              padding: const EdgeInsets.only(left: 60, right: 60),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    DropdownButtonHideUnderline(
                      child: DropdownButton2<String>(
                        dropdownStyleData: DropdownStyleData(
                            width: 180,
                            decoration: BoxDecoration(color: unitColor)),
                        isExpanded: true,
                        hint: const Text(
                          'Select Unit',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                        items: labelValues
                            .map((String item) => DropdownMenuItem<String>(
                                  value: item,
                                  child: Text(
                                    item,
                                    style: const TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                    ),
                                  ),
                                ))
                            .toList(),
                        value: selectedFromValue,
                        onChanged: (String? value) {
                          setState(() {
                            selectedFromValue = value;
                            for (var map
                                in selectList[widget.listSlectorIndex]) {
                              if (map['label'] == value) {
                                _convertElement = map['Value'];
                                break; // Exit loop once the matching label is found
                              }
                            }
                            print(_convertElement.toString());
                          });
                        },
                        buttonStyleData: const ButtonStyleData(
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          height: 40,
                          width: 140,
                        ),
                        menuItemStyleData: const MenuItemStyleData(
                          height: 40,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    TextField(
                      textAlign: TextAlign.center,
                      focusNode: focusNode,
                      decoration: InputDecoration(
                        hintText: _hintText,
                        hintStyle: TextStyle(color: Colors.white, fontSize: 40),
                        border: InputBorder.none, // Remove the underline
                      ),
                      style: const TextStyle(color: Colors.white, fontSize: 40),
                      controller: controller,
                      onChanged: _releventFunction[widget.listSlectorIndex],
                      cursorOpacityAnimates: true,
                      cursorColor: Colors.white,
                      keyboardType: TextInputType.number,
                    ),
                  ]),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  DropdownButtonHideUnderline(
                    child: DropdownButton2<String>(
                      dropdownStyleData: DropdownStyleData(
                          width: 180,
                          decoration: BoxDecoration(color: unitColor)),
                      isExpanded: true,
                      hint: const Text(
                        'Select Unit',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                      items: labelValues
                          .map((String item) => DropdownMenuItem<String>(
                                value: item,
                                child: Text(
                                  item,
                                  style: const TextStyle(
                                    fontSize: 18,
                                    color: Colors.black,
                                  ),
                                ),
                              ))
                          .toList(),
                      value: selectedToValue,
                      onChanged: (String? value) {
                        setState(() {
                          selectedToValue = value;
                          for (var map in selectList[widget.listSlectorIndex]) {
                            if (map['label'] == value) {
                              _convertToElement = map['Value'];
                              break; // Exit loop once the matching label is found
                            }
                          }
                          print(_convertToElement.toString());
                        });
                      },
                      buttonStyleData: const ButtonStyleData(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        height: 40,
                        width: 140,
                      ),
                      menuItemStyleData: const MenuItemStyleData(
                        height: 40,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    _displayText,
                    style: TextStyle(color: Colors.black, fontSize: 40),
                  ),
                ]),
          ),
        ),
      ]),
    );
  }
}
