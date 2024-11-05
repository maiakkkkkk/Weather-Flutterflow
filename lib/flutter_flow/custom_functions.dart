import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

String? getImageConditionCode(int? code) {
  // "Returns the corresponding image URL based on the current weather condition code obtained from the API. If the condition code is 1000, it returns a specific image; if it's 1003, it returns another image, and so on. If none of the specified codes match, it returns a default image URL."
  switch (code) {
    case 1000:
      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/weather-mobile-pi-sdg6jk/assets/0hxytz9iveik/6.png';
    case 1003:
      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/weather-mobile-pi-sdg6jk/assets/v77k7gznmmlu/7.png';
    case 1006:
      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/weather-mobile-pi-sdg6jk/assets/u8ruwpohcetw/8.png';
    case 1009:
      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/weather-mobile-pi-sdg6jk/assets/wlor89zfqf6g/5.png';
    case 1063:
      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/weather-mobile-pi-sdg6jk/assets/6hf6a0hngus0/2.png';
    case 1195:
      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/weather-mobile-pi-sdg6jk/assets/9bqw219e4o7u/3.png';
    case 1276:
      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/weather-mobile-pi-sdg6jk/assets/tk34iijx1dqy/1.png';
    case 1225:
      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/weather-mobile-pi-sdg6jk/assets/ysus4fwavdtt/4.png';
    case 1030:
      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/weather-mobile-pi-sdg6jk/assets/enkzlepjywe0/9.png';
    default:
      return 'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/weather-mobile-pi-sdg6jk/assets/26zr6u5rk1cd/Animation_-_1730177934566.gif';
  }
}
