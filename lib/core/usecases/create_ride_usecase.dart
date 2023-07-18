import 'package:saffar_app/core/models/ride.dart';
import 'package:saffar_app/core/models/user.dart';
import 'package:uuid/uuid.dart';

import '../models/address.dart';
import '../models/driver.dart';

class CreateRideUsecase {
  /// Creates an instance of the Ride model
  Ride call({
    required User user,
    required Driver driver,
    required Address sourceAddress,
    required Address destinationAddress,
    required DateTime startTime,
    DateTime? endTime,
    required bool cancelled,
    required double price,
    double? discountPrice,
  }) {
    final String id = const Uuid().v4();

    return Ride(
      id: id,
      user: user,
      driver: driver,
      sourceAddress: sourceAddress,
      destinationAddress: destinationAddress,
      startTime: startTime,
      endTime: endTime,
      cancelled: cancelled,
      price: price,
      discountPrice: discountPrice,
    );
  }
}
