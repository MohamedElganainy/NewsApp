import 'package:flutter/material.dart';
class PageModel {
  String _images ;
  String _title;
  String _describtion;
  IconData _icons;

  PageModel(this._images, this._title, this._describtion, this._icons);

  IconData get icons => _icons;

  String get describtion => _describtion;

  String get title => _title;

  String get images => _images;


}