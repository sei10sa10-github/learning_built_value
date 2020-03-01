import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'contact.dart';

part 'serializers.g.dart';

@SerializersFor([
  Contact,
])
final Serializers serializers = (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();