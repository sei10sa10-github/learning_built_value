import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'contact.g.dart';

abstract class Contact implements Built<Contact, ContactBuilder> {
  int get id;
  String get fullName;
  @nullable
  int get age;
  @nullable
  String get mobile;
  @nullable
  bool get isFriend;

  static Serializer<Contact> get serializer => _$contactSerializer;

  Contact._();
  factory Contact([update(ContactBuilder b)]) = _$Contact;
}