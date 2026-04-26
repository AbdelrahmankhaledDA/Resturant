// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mealsModel.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MealsModelAdapter extends TypeAdapter<MealsModel> {
  @override
  final int typeId = 0;

  @override
  MealsModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MealsModel(
      id: fields[0] as int,
      description: fields[4] as String,
      image: fields[2] as String,
      name: fields[1] as String,
      price: fields[3] as String,
    );
  }

  @override
  void write(BinaryWriter writer, MealsModel obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.image)
      ..writeByte(3)
      ..write(obj.price)
      ..writeByte(4)
      ..write(obj.description);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MealsModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
