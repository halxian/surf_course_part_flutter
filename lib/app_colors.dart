import 'package:flutter/material.dart';

abstract class TestAppColors {
  static const secondary = Color(0xff292929);
  static const accent = Colors.blue;
  static const music = Colors.red;
  static const friends = Colors.blue;
  static const chat = Colors.green;
  static const video = Colors.purple;
  static const text = Colors.white;
  static const secondaryText = Colors.grey;
  static const background = Color(0xff222222);
  static const avatarBorder = Colors.white24;
  static final shadow = Colors.black.withOpacity(0.1);
}

abstract class TestAppStrings {
  static const appBar = 'Ваша страница';
  static const editBtnLbl = 'Редактировать';
  static const logoutBtnLbl = 'Выйти';
  static const categoryFriendsLbl = 'Друзья';
  static const categoryMusicLbl = 'Музыка';
  static const categoryVideoLbl = 'Видео';
  static const categoryChatLbl = 'Чат';
  static const headerPhotosLbl = 'Фотографии';
  static const headerNewsLbl = 'Новости';
}
