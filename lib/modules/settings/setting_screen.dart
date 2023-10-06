import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketly_mobile/core/style/app_colors.dart';
import 'package:marketly_mobile/models/app_category.dart';

class SettingScreen extends StatefulWidget {
  static const String screenRoute = '/SettingScreen';

  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  bool _value = false;
  String? _gender;
  RangeValues _values = const RangeValues(10, 1000);
  List<AppCategory> _categories = <AppCategory>[
    AppCategory(title: 'T-Shirt', isChecked: false),
    AppCategory(title: 'Jackets', isChecked: false),
    AppCategory(title: 'Bags', isChecked: false),
    AppCategory(title: 'Shoes', isChecked: false),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: ListView(
        padding: EdgeInsetsDirectional.symmetric(horizontal: 16.w),
        children: [
          Text(
            'Notification',
            style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
          ),
          SwitchListTile(
              contentPadding: EdgeInsetsDirectional.zero,
              activeColor: AppColor.kMaincolor1,
              inactiveTrackColor: AppColor.paragraf,
              title: Text(
                'Notification',
                style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500),
              ),
              subtitle: Text(
                'Turn Notification ON/OFF',
                style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: AppColor.paragraf),
              ),
              value: _value,
              onChanged: (bool value) {
                setState(() {
                  _value = value;
                });
              }),
          Text(
            'Gender',
            style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
          ),
          Row(
            children: [
              Expanded(
                child: RadioListTile<String>(
                    activeColor: AppColor.kMaincolor1,
                    title: const Text(
                      'Male',
                    ),
                    value: 'm',
                    groupValue: _gender,
                    onChanged: (String? value) {
                      setState(() {
                        _gender = value;
                      });
                    }),
              ),
              Expanded(
                child: RadioListTile<String>(
                    activeColor: AppColor.kMaincolor1,
                    title: const Text(
                      'Female',
                    ),
                    value: 'f',
                    groupValue: _gender,
                    onChanged: (String? value) {
                      setState(() {
                        _gender = value;
                      });
                    }),
              ),
            ],
          ),
          Text(
            'Price Range',
            style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
          ),
          RangeSlider(
              activeColor: AppColor.kMaincolor1,
              min: 10,
              max: 1000,
              divisions: 20,
              labels:
                  RangeLabels(_values.start.toString(), _values.end.toString()),
              values: _values,
              onChanged: (RangeValues value) {
                setState(() {
                  _values = value;
                });
              }),
          Text(
            'Categories',
            style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
          ),
          for (AppCategory category in _categories)
            CheckboxListTile(
                contentPadding: EdgeInsetsDirectional.zero,
                activeColor: AppColor.kMaincolor1,
                title: Text(category.title),
                value: category.isChecked,
                onChanged: (bool? value) {
                  setState(() {
                    if (value != null) {
                      category.isChecked = value;
                    }
                  });
                }),
        ],
      ),
    );
  }
}
