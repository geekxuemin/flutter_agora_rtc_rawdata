import 'dart:async';
import 'dart:typed_data';

import 'package:flutter/services.dart';

class AgoraRtcRawdata {
  static const MethodChannel _channel =
      const MethodChannel('agora_rtc_rawdata');
  static const EventChannel _eventChannel =
      const EventChannel('agora_rtc_rawdata_stream');

  static Future<void> registerAudioFrameObserver(int engineHandle) {
    return _channel.invokeMethod('registerAudioFrameObserver', engineHandle);
  }

  static Future<void> unregisterAudioFrameObserver() {
    return _channel.invokeMethod('registerAudioFrameObserver');
  }

  static Future<void> registerVideoFrameObserver(int engineHandle) {
    return _channel.invokeMethod('registerVideoFrameObserver', engineHandle);
  }

  static Future<void> unregisterVideoFrameObserver() {
    return _channel.invokeMethod('unregisterVideoFrameObserver');
  }

  static Stream<Uint8List> audioFrameSteam() {
     return _eventChannel.receiveBroadcastStream().asBroadcastStream();
  }
}
