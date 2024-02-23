import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

class UnitDropdown extends StatefulWidget {
  final Map<String, String> items;
  final Function(String) onUnitChanged;
  const UnitDropdown({super.key,
    required this.items,
    required this.onUnitChanged,
  });

  @override
  State<UnitDropdown> createState() => _UnitDropdownState();
}

class _UnitDropdownState extends State<UnitDropdown> {
  String? selectedValue;
  

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
        child: DropdownButton2<String>(
          isExpanded: true,
          hint: const Text(
            'Select',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
            overflow: TextOverflow.ellipsis,
          ),
          items: widget.items.keys
              .map((String item) => DropdownMenuItem<String>(
                    value: item,
                    child: Text(
                      item,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ))
              .toList(),
          value: selectedValue,
          onChanged: (String? value) {
            setState(() {
              selectedValue = value;
            });
            widget.onUnitChanged(value ?? "");
          },
          selectedItemBuilder: (BuildContext context) {
                return widget.items.values.map<Widget>((String item) {
                  return Container(
                    alignment: Alignment.centerLeft,
                    constraints: const BoxConstraints(minWidth: 100),
                    child: Text(
                      item,
                      style: const TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0), fontWeight: FontWeight.w600),
                    ),
                  );
                }).toList();
              },
          buttonStyleData: ButtonStyleData(
            height: 50,
            width: 80,
            padding: const EdgeInsets.only(left: 14, right: 14),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              border: Border.all(
                color: const Color.fromARGB(66, 106, 106, 106),
              ),
              color: const Color.fromARGB(255, 255, 255, 255),
            ),
            elevation: 0,
          ),
          iconStyleData: const IconStyleData(
            icon: Icon(
              Icons.arrow_drop_down,
            ),
            iconSize: 14,
            iconEnabledColor: Color.fromARGB(255, 0, 0, 0),
            iconDisabledColor: Colors.grey,
          ),
          dropdownStyleData: DropdownStyleData(
            maxHeight: 500,
            width: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              color: const Color.fromARGB(255, 255, 255, 255).withOpacity(1.0),
            ),
            offset: const Offset(-20, 0),
            scrollbarTheme: ScrollbarThemeData(
              radius: const Radius.circular(40),
              thickness: MaterialStateProperty.all<double>(6),
              thumbVisibility: MaterialStateProperty.all<bool>(true),
            ),
          ),
          menuItemStyleData: const MenuItemStyleData(
            height: 40,
            padding: EdgeInsets.only(left: 14, right: 14),
          ),
        ),
      );
    
  }
}

