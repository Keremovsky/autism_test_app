import 'package:autism_test_app/gen/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class DropdownMenuItemConstants {
  static List<DropdownMenuItem<String>> get gender => [
        DropdownMenuItem(
          value: "m",
          child: Text(LocaleKeys.boy.tr()),
        ),
        DropdownMenuItem(
          value: "f",
          child: Text(LocaleKeys.girl.tr()),
        ),
      ];

  static List<DropdownMenuItem<String>> get ethnicity => [
        DropdownMenuItem(
          value: "middle eastern",
          child: Text(LocaleKeys.middleEastern.tr()),
        ),
        DropdownMenuItem(
          value: "white european",
          child: Text(LocaleKeys.whiteEuropean.tr()),
        ),
        DropdownMenuItem(
          value: "hispanic",
          child: Text(LocaleKeys.hispanic.tr()),
        ),
        DropdownMenuItem(
          value: "black",
          child: Text(LocaleKeys.black.tr()),
        ),
        DropdownMenuItem(
          value: "asian",
          child: Text(LocaleKeys.asian.tr()),
        ),
        DropdownMenuItem(
          value: "south asian",
          child: Text(LocaleKeys.southAsian.tr()),
        ),
        DropdownMenuItem(
          value: "native indian",
          child: Text(LocaleKeys.nativeIndian.tr()),
        ),
        DropdownMenuItem(
          value: "latino",
          child: Text(LocaleKeys.latino.tr()),
        ),
        DropdownMenuItem(
          value: "pacifica",
          child: Text(LocaleKeys.pacifica.tr()),
        ),
        DropdownMenuItem(
          value: "mixed",
          child: Text(LocaleKeys.mixed.tr()),
        ),
        DropdownMenuItem(
          value: "others",
          child: Text(LocaleKeys.others.tr()),
        ),
      ];

  static List<DropdownMenuItem<String>> get personSolvedTest => [
        DropdownMenuItem(
          value: "family member",
          child: Text(LocaleKeys.familyMember.tr()),
        ),
        DropdownMenuItem(
          value: "health care professional",
          child: Text(LocaleKeys.healthCareProfessional.tr()),
        ),
        DropdownMenuItem(
          value: "self",
          child: Text(LocaleKeys.self.tr()),
        ),
        DropdownMenuItem(
          value: "others",
          child: Text(LocaleKeys.others.tr()),
        ),
      ];
}
