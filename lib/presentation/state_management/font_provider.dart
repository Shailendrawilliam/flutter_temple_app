import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../services/local_storage.dart';

class FontSizeNotifier extends StateNotifier<double> {
  FontSizeNotifier() : super(16.0); // Default font size

  Future<void> loadFontSize() async {
    state = await LocalStorageService.loadFontSize();
  }

  void updateFontSize(double newSize) async {
    state = newSize;
    await LocalStorageService.saveFontSize(newSize);
  }
}

final fontSizeProvider = StateNotifierProvider<FontSizeNotifier, double>((ref) {
  return FontSizeNotifier();
});
