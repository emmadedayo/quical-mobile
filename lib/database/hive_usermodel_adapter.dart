
// import 'package:hive/hive.dart';
// import 'package:vendor/entity/user_entity.dart';

// class UserModelAdapter extends TypeAdapter<UserEntity> {
//   @override
//   final int typeId = 1;

//   @override
//   UserEntity read(BinaryReader reader) {
//     return UserEntity(
//       id: reader.readInt(),
//       firstName: reader.readString(),
//       lastName: reader.readString(),
//       phone: reader.readInt(),
//       email: reader.readString(),
//       image: reader.readString(),
//     );
//   }

//   @override
//   void write(BinaryWriter writer, UserEntity obj) {
//     writer.writeInt(obj.id ?? 0);
//     writer.writeString(obj.firstName ?? '');
//     writer.writeString(obj.lastName ?? '');
//     writer.writeInt(obj.phone ?? 0);
//     writer.writeString(obj.email ?? '');
//     writer.writeString(obj.image ?? '');
//   }
// }
