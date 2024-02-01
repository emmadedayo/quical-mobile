import 'package:hive/hive.dart';

import '../../entity/country_entity.dart';

class CountryModelAdapter extends TypeAdapter<CountryEntity> {
  @override
  final int typeId = 3;

  @override
  CountryEntity read(BinaryReader reader) {
    return CountryEntity(
      id: reader.readInt(),
      countryCurrency: reader.readString(),
      countryName: reader.readString(),
      countryPhoneCode: reader.readString(),
      countryCurrencySymbol: reader.readString(),
    );
  }

  @override
  void write(BinaryWriter writer, CountryEntity obj) {
    writer.writeInt(obj.id ?? 0);
    writer.writeString(obj.countryCurrency ?? '');
    writer.writeString(obj.countryName ?? '');
    writer.writeString(obj.countryPhoneCode ?? '');
    writer.writeString(obj.countryCurrencySymbol ?? '');
  }
}
