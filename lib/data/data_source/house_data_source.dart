import 'dart:async';
import 'package:home_rabbit/domain/model/house.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

class HouseDataSource {
  static late final Isar _isar;
  HouseDataSource._();
  static HouseDataSource houseDataSource = HouseDataSource._();

  static Future<void> init() async {
    final dir = await getApplicationDocumentsDirectory();
    _isar = await Isar.open(
      [HouseSchema],
      directory: dir.path,
    );
  }

  Future<void> addHouse(House house) async {
    await _isar.writeTxn(() async {
      await _isar.houses.put(house);
    });
  }

  Future<List<House>> getHouse(String houseName) async {
    final result = await _isar.houses.filter()
        .houseNameEqualTo(houseName).findAll();
    return result;
  }

  Future<List<House>> getHouses() async {
    final result = await _isar.houses.where().findAll();
    return result;
  }

  Future<void> updateHouse(House house) async {
    await _isar.writeTxn(() async {
      await _isar.houses.put(house);
    });
  }

  Future<void> deleteHouse(int id) async {
    await _isar.writeTxn(() async {
      await _isar.houses.delete(id);
    });
  }

}
