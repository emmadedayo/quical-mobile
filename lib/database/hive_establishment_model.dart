// import 'package:hive/hive.dart';
// import 'package:vendor/entity/establishment_entity.dart';

// class EstablishmentModelAdapter extends TypeAdapter<EstablishmentEntity> {
//   @override
//   final int typeId = 2;

//   @override
//   EstablishmentEntity read(BinaryReader reader) {
//     return EstablishmentEntity(
//       id: reader.readInt(),
//       name: reader.readString(),
//       phone: reader.readString(),
//       email: reader.readString(),
//       logo: reader.readString(),
//       latitude: reader.readDouble(),
//       longitude: reader.readDouble(),
//       address: reader.readString(),
//       minimumOrder: reader.readString(),
//       scheduleOrder: reader.readBool(),
//       openingTime: reader.readString(),
//       isOpen: reader.readBool(),
//       closingTime: reader.readString(),
//       status: reader.readBool(),
//       vendorId: reader.readInt(),
//       freeDelivery: reader.readBool(),
//       coverPhoto: reader.readString(),
//       delivery: reader.readBool(),
//       takeAway: reader.readBool(),
//       foodSection: reader.readBool(),
//       tax: reader.readString(),
//       zoneId: reader.readInt(),
//       active: reader.readBool(),
//       offDay: reader.readString(),
//       selfDeliverySystem: reader.readBool(),
//       minimumShippingCharge: reader.readString(),
//       deliveryTime: reader.readString(),
//       orderCount: reader.readInt(),
//       totalOrder: reader.readInt(),
//       kmShippingCharges: reader.readString(),
//       establishmentId: reader.readString(),
//       maximumShippingCharge: reader.readString(),
//       slug: reader.readString(),
//       orderSubscriptionActive: reader.readBool(),
//       establishmentType: reader.readString(),
//       deliveryCharge: reader.readString(),
//       altId: reader.readString(),
//     );
//   }

//   @override
//   void write(BinaryWriter writer, EstablishmentEntity obj) {
//     writer.writeInt(obj.id ?? 0);
//     writer.writeString(obj.name ?? '');
//     writer.writeString(obj.phone ?? '');
//     writer.writeString(obj.email ?? '');
//     writer.writeString(obj.logo ?? '');
//     writer.writeDouble(obj.latitude ?? 0.0);
//     writer.writeDouble(obj.longitude ?? 0.0);
//     writer.writeString(obj.address ?? '');
//     writer.writeString(obj.minimumOrder ?? '');
//     writer.writeBool(obj.scheduleOrder ?? false);
//     writer.writeString(obj.openingTime ?? '');
//     writer.writeBool(obj.isOpen ?? false);
//     writer.writeString(obj.closingTime ?? '');
//     writer.writeBool(obj.status ?? false);
//     writer.writeInt(obj.vendorId ?? 0);
//     writer.writeBool(obj.freeDelivery ?? false);
//     writer.writeString(obj.coverPhoto ?? '');
//     writer.writeBool(obj.delivery ?? false);
//     writer.writeBool(obj.takeAway ?? false);
//     writer.writeBool(obj.foodSection ?? false);
//     writer.writeString(obj.tax ?? '');
//     writer.writeInt(obj.zoneId ?? 0);
//     writer.writeBool(obj.active ?? false);
//     writer.writeString(obj.offDay ?? '');
//     writer.writeBool(obj.selfDeliverySystem ?? false);
//     writer.writeString(obj.minimumShippingCharge ?? '');
//     writer.writeString(obj.deliveryTime ?? '');
//     writer.writeInt(obj.orderCount ?? 0);
//     writer.writeInt(obj.totalOrder ?? 0);
//     writer.writeString(obj.kmShippingCharges ?? '');
//     writer.writeString(obj.establishmentId ?? '');
//     writer.writeString(obj.maximumShippingCharge ?? '');
//     writer.writeString(obj.slug ?? '');
//     writer.writeBool(obj.orderSubscriptionActive ?? false);
//     writer.writeString(obj.establishmentType);
//     writer.writeString(obj.deliveryCharge ?? '');
//     writer.writeString(obj.altId ?? '');
//   }
// }
