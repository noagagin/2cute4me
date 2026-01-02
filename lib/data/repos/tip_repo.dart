import 'package:isar/isar.dart';
import '../isar/isar_service.dart';
import '../isar/schemas.dart';

class TipRepo {
  final Isar _isar = IsarService.isar;
  
  // ========================================
  // READ
  // ========================================
  Future<TipStatus> getTipStatus() async {
    final status = await _isar.tipStatus.get(0);
    if (status == null) {
      throw Exception('TipStatus not initialized');
    }
    return status;
  }
  
  Stream<TipStatus?> watchTipStatus() {
    return _isar.tipStatus.watchObject(0, fireImmediately: true);
  }
  
  // ========================================
  // UPDATE (After successful tip)
  // ========================================
  Future<void> recordTip(int tipLevel) async {
    final status = await getTipStatus();
    
    status
      ..hasTipped = true
      ..tipLevel = tipLevel
      ..lastTipAt = DateTime.now()
      ..updatedAt = DateTime.now();
    
    await _isar.writeTxn(() async {
      await _isar.tipStatus.put(status);
    });
  }
}
