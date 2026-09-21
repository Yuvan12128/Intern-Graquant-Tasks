import 'package:skcl_vms/data/graphql/component/base_interface.graphql.dart';

String addressBuilder(Fragment$AddressResponse? address) {
  List<String> _deviceAddress = [];
  String? value = address?.street;
  if (value != null && value.length > 0) {
    _deviceAddress.add(value);
  }

  value = address?.area;
  if (value != null && value.length > 0) {
    _deviceAddress.add(value);
  }

  value = address?.city;
  if (value != null && value.length > 0) {
    _deviceAddress.add(value);
  }

  value = address?.state;
  if (value != null && value.length > 0) {
    _deviceAddress.add(value);
  }

  value = address?.pincode;
  if (value != null && value.length > 0) {
    _deviceAddress.add(value);
  }
  if (_deviceAddress.isNotEmpty) {
    return _deviceAddress.join(', ');
  } else {
    return '';
  }
}

String chargingStationFlatAddressBuilder(
  Fragment$AddressResponse? deviceAddress,
) {
  List<String> _deviceAddress = [];
  String? value = deviceAddress?.no;
  if (value != null && value.length > 0) {
    _deviceAddress.add(value);
  }

  value = deviceAddress?.block;
  if (value != null && value.length > 0) {
    _deviceAddress.add(value);
  }

  value = deviceAddress?.floor;
  if (value != null && value.length > 0) {
    _deviceAddress.add(value);
  }
  if (_deviceAddress.isNotEmpty) {
    return _deviceAddress.join(', ');
  } else {
    return '';
  }
}
