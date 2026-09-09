import 'package:reactive_forms/reactive_forms.dart';
import 'package:skcl_vms/app/constant/app_constant.dart';
import 'package:skcl_vms/app/constant/enum/meeting_type.dart';
import 'package:skcl_vms/app/constant/field_constant.dart';
import 'package:skcl_vms/data/graphql/component/schema.graphql.dart';
import 'package:skcl_vms/data/graphql/services/account/gql/account.graphql.dart';
import 'package:skcl_vms/data/graphql/services/person/gql/person.graphql.dart';
import 'package:skcl_vms/data/graphql/services/place/gql/place.graphql.dart';
import 'package:skcl_vms/data/model/account/account_filter.dart';
import 'package:skcl_vms/data/model/place/place_filter.dart';
import 'package:skcl_vms/data/model/visitor/visitor_filter.dart';
import 'package:skcl_vms/presentation/profile/service/person_profile_service/gql/person_profile.graphql.dart';
import 'package:skcl_vms/presentation/visitor_detail/service/gql/visitor.graphql.dart'
    as detailGql;
import 'package:skcl_vms/presentation/visitor_entry_form/service/gql/visitor.graphql.dart'
    as entryGql;
import 'package:skcl_vms/presentation/visitor_history/service/gql/visitor.graphql.dart'
    as historyGql;

class MockData {
  static Query$Me$me _me = Query$Me$me(
    person: Query$Me$me$person(
      id: 'person-admin-1',
      firstName: 'Admin',
      lastName: 'User',
      emailAddress: 'admin@skcl.com',
      phoneNumber: '+91 98765 43210',
      roleType: AppConstant.ADMINISTRATOR,
    ),
    account: Query$Me$me$account(
      id: 'account-skcl-1',
      lifeState: Enum$LifeState.ACTIVE,
    ),
    credential: Query$Me$me$credential(
      id: 'cred-1',
      uId: '+91 98765 43210',
      type: Enum$CredentialType.PHONE,
    ),
  );

  static Query$Me$me getMe() {
    return _me;
  }

  static Mutation$ProfileUpdatePerson$updatePerson$source updatePerson(
    String id,
    String? firstName,
    String? lastName,
  ) {
    _me = _me.copyWith(
      person: _me.person?.copyWith(
        firstName: firstName,
        lastName: lastName,
      ),
    );
    return Mutation$ProfileUpdatePerson$updatePerson$source(
      id: id,
      firstName: firstName,
      lastName: lastName,
      emailAddress: _me.person?.emailAddress,
      phoneNumber: _me.person?.phoneNumber,
    );
  }

  static dynamic _addTypenames(dynamic data, [String defaultTypename = 'Object']) {
    if (data is Map) {
      final copy = Map<String, dynamic>.from(data);
      copy.putIfAbsent('__typename', () => defaultTypename);
      if (copy.containsKey('number') && !copy.containsKey('no')) {
        copy['no'] = copy['number'];
      }
      copy.forEach((k, v) {
        String subType = 'Object';
        if (k == 'blocks') subType = 'Block';
        else if (k == 'floors') subType = 'Floor';
        else if (k == 'accountPersons') subType = 'AccountPerson';
        else if (k == 'account') subType = 'Account';
        else if (k == 'persons') subType = 'Person';
        else if (k == 'places') subType = 'Place';
        else if (k == 'place') subType = 'Place';
        else if (k == 'block') subType = 'Block';
        else if (k == 'floor') subType = 'Floor';
        else if (k == 'comingFrom') subType = 'ComingFrom';
        else if (k == 'createdByPerson') subType = 'Person';
        else if (k == 'idProof') subType = 'IdProof';
        else if (k == 'additionalDetails') subType = 'AdditionalDetails';
        copy[k] = _addTypenames(v, subType);
      });
      return copy;
    } else if (data is List) {
      return data.map((item) => _addTypenames(item, defaultTypename)).toList();
    }
    return data;
  }

  static final List<Map<String, dynamic>> _rawPlaces = [
    {
      'id': 'place-1',
      'name': 'SKCL Infinity Park',
      'blocks': [
        {
          'id': 'block-1',
          'name': 'Block A',
          'floors': [
            {
              'id': 'floor-1-1',
              'no': 1,
              'name': 'Floor 1',
              'accountPersons': [
                {
                  'account': {'id': 'acc-1', 'name': 'Plugzmart Technologies'},
                  'persons': [
                    {
                      'id': 'person-101',
                      'firstName': 'John',
                      'lastName': 'Doe',
                      'emailAddress': 'john.doe@plugzmart.com',
                      'phoneNumber': '+91 98765 11111'
                    },
                    {
                      'id': 'person-102',
                      'firstName': 'Priya',
                      'lastName': 'Sharma',
                      'emailAddress': 'priya.s@plugzmart.com',
                      'phoneNumber': '+91 98765 22222'
                    }
                  ]
                }
              ]
            },
            {
              'id': 'floor-1-2',
              'no': 2,
              'name': 'Floor 2',
              'accountPersons': [
                {
                  'account': {'id': 'acc-2', 'name': 'Wipro Limited'},
                  'persons': [
                    {
                      'id': 'person-201',
                      'firstName': 'Rajesh',
                      'lastName': 'Kumar',
                      'emailAddress': 'rajesh.k@wipro.com',
                      'phoneNumber': '+91 98765 33333'
                    }
                  ]
                }
              ]
            }
          ]
        },
        {
          'id': 'block-2',
          'name': 'Block B',
          'floors': [
            {
              'id': 'floor-1-3',
              'no': 1,
              'name': 'Floor 1',
              'accountPersons': [
                {
                  'account': {'id': 'acc-3', 'name': 'Tata Consultancy Services'},
                  'persons': [
                    {
                      'id': 'person-301',
                      'firstName': 'Anitha',
                      'lastName': 'M',
                      'emailAddress': 'anitha.m@tcs.com',
                      'phoneNumber': '+91 98765 44444'
                    }
                  ]
                }
              ]
            }
          ]
        }
      ]
    },
    {
      'id': 'place-2',
      'name': 'SKCL Tech Square',
      'blocks': [
        {
          'id': 'block-3',
          'name': 'Tower 1',
          'floors': [
            {
              'id': 'floor-2-1',
              'no': 1,
              'name': 'Ground Floor',
              'accountPersons': [
                {
                  'account': {'id': 'acc-4', 'name': 'Infosys Limited'},
                  'persons': [
                    {
                      'id': 'person-401',
                      'firstName': 'Sneha',
                      'lastName': 'Patel',
                      'emailAddress': 'sneha.p@infosys.com',
                      'phoneNumber': '+91 98765 55555'
                    }
                  ]
                }
              ]
            }
          ]
        }
      ]
    },
    {
      'id': 'place-3',
      'name': 'SKCL Central Avenue',
      'blocks': [
        {
          'id': 'block-4',
          'name': 'Main Wing',
          'floors': [
            {
              'id': 'floor-3-1',
              'no': 1,
              'name': 'Level 1',
              'accountPersons': [
                {
                  'account': {'id': 'acc-5', 'name': 'Cognizant'},
                  'persons': [
                    {
                      'id': 'person-501',
                      'firstName': 'Karthik',
                      'lastName': 'R',
                      'emailAddress': 'karthik.r@cognizant.com',
                      'phoneNumber': '+91 98765 66666'
                    }
                  ]
                }
              ]
            }
          ]
        }
      ]
    }
  ];

  static final List<Map<String, dynamic>> _rawAccounts = [
    {
      'id': 'acc-1',
      'name': 'Plugzmart Technologies',
      'places': [
        {
          'name': 'SKCL Infinity Park',
          'blocks': [
            {
              'name': 'Block A',
              'floors': [
                {
                  'no': 1,
                  'accountFloorId': 'af-1',
                  'persons': [
                    {
                      'firstName': 'John',
                      'lastName': 'Doe',
                      'emailAddress': 'john.doe@plugzmart.com',
                      'phoneNumber': '+91 98765 11111'
                    },
                    {
                      'firstName': 'Priya',
                      'lastName': 'Sharma',
                      'emailAddress': 'priya.s@plugzmart.com',
                      'phoneNumber': '+91 98765 22222'
                    }
                  ]
                }
              ]
            }
          ]
        }
      ]
    },
    {
      'id': 'acc-2',
      'name': 'Wipro Limited',
      'places': [
        {
          'name': 'SKCL Infinity Park',
          'blocks': [
            {
              'name': 'Block A',
              'floors': [
                {
                  'no': 2,
                  'accountFloorId': 'af-2',
                  'persons': [
                    {
                      'firstName': 'Rajesh',
                      'lastName': 'Kumar',
                      'emailAddress': 'rajesh.k@wipro.com',
                      'phoneNumber': '+91 98765 33333'
                    }
                  ]
                }
              ]
            }
          ]
        }
      ]
    },
    {
      'id': 'acc-3',
      'name': 'Tata Consultancy Services',
      'places': [
        {
          'name': 'SKCL Infinity Park',
          'blocks': [
            {
              'name': 'Block B',
              'floors': [
                {
                  'no': 1,
                  'accountFloorId': 'af-3',
                  'persons': [
                    {
                      'firstName': 'Anitha',
                      'lastName': 'M',
                      'emailAddress': 'anitha.m@tcs.com',
                      'phoneNumber': '+91 98765 44444'
                    }
                  ]
                }
              ]
            }
          ]
        }
      ]
    },
    {
      'id': 'acc-4',
      'name': 'Infosys Limited',
      'places': [
        {
          'name': 'SKCL Tech Square',
          'blocks': [
            {
              'name': 'Tower 1',
              'floors': [
                {
                  'no': 1,
                  'accountFloorId': 'af-4',
                  'persons': [
                    {
                      'firstName': 'Sneha',
                      'lastName': 'Patel',
                      'emailAddress': 'sneha.p@infosys.com',
                      'phoneNumber': '+91 98765 55555'
                    }
                  ]
                }
              ]
            }
          ]
        }
      ]
    },
    {
      'id': 'acc-5',
      'name': 'Cognizant',
      'places': [
        {
          'name': 'SKCL Central Avenue',
          'blocks': [
            {
              'name': 'Main Wing',
              'floors': [
                {
                  'no': 1,
                  'accountFloorId': 'af-5',
                  'persons': [
                    {
                      'firstName': 'Karthik',
                      'lastName': 'R',
                      'emailAddress': 'karthik.r@cognizant.com',
                      'phoneNumber': '+91 98765 66666'
                    }
                  ]
                }
              ]
            }
          ]
        }
      ]
    }
  ];

  static final List<Map<String, dynamic>> _rawVisitors = [
    {
      'id': 'visitor-1',
      'firstName': 'Aravind',
      'lastName': 'Ramesh',
      'phoneNumber': '+91 98765 77777',
      'visitingDate': DateTime.now().toIso8601String(),
      'type': 'GUEST',
      'plannedVisit': false,
      'createdDate': DateTime.now().subtract(const Duration(hours: 2)).toIso8601String(),
      'notes': 'Discussion regarding EV charging infrastructure project.',
      'tools': 'Laptop, Notebook',
      'purposeOfVisit': 'Business Meeting',
      'emailAddress': 'aravind.r@gmail.com',
      'checkInDate': DateTime.now().subtract(const Duration(hours: 1)).toIso8601String(),
      'accountFloorId': 'af-1',
      'comingFrom': {'placeName': 'Guindy', 'companyName': 'EV Power Labs'},
      'createdByPerson': {'firstName': 'Admin', 'lastName': 'User'},
      'idProof': {'type1': 'AADHAR', 'number': '9876-5432-1098'},
      'additionalDetails': {
        'place': {'id': 'place-1', 'name': 'SKCL Infinity Park'},
        'account': {'id': 'acc-1', 'name': 'Plugzmart Technologies'},
        'block': {'id': 'block-1', 'name': 'Block A'},
        'floor': {'id': 'floor-1-1', 'no': 1, 'name': 'Floor 1'},
        'persons': [
          {
            'firstName': 'John',
            'lastName': 'Doe',
            'phoneNumber': '+91 98765 11111'
          }
        ]
      }
    },
    {
      'id': 'visitor-2',
      'firstName': 'Meenakshi',
      'lastName': 'Sundaram',
      'phoneNumber': '+91 98765 88888',
      'visitingDate': DateTime.now().toIso8601String(),
      'type': 'VENDOR',
      'plannedVisit': false,
      'createdDate': DateTime.now().subtract(const Duration(hours: 3)).toIso8601String(),
      'notes': 'Delivering network hardware equipment.',
      'tools': 'Toolkit, Multimeter',
      'purposeOfVisit': 'Hardware Delivery & Installation',
      'emailAddress': 'meenakshi.s@cisco.com',
      'checkInDate': DateTime.now().subtract(const Duration(hours: 2)).toIso8601String(),
      'accountFloorId': 'af-2',
      'comingFrom': {'placeName': 'T. Nagar', 'companyName': 'Cisco Systems'},
      'createdByPerson': {'firstName': 'Admin', 'lastName': 'User'},
      'idProof': {'type1': 'DRIVING_LICENSE', 'number': 'TN-01-2020-0012345'},
      'additionalDetails': {
        'place': {'id': 'place-1', 'name': 'SKCL Infinity Park'},
        'account': {'id': 'acc-2', 'name': 'Wipro Limited'},
        'block': {'id': 'block-1', 'name': 'Block A'},
        'floor': {'id': 'floor-1-2', 'no': 2, 'name': 'Floor 2'},
        'persons': [
          {
            'firstName': 'Rajesh',
            'lastName': 'Kumar',
            'phoneNumber': '+91 98765 33333'
          }
        ]
      }
    },
    {
      'id': 'visitor-3',
      'firstName': 'Deepak',
      'lastName': 'Chopra',
      'phoneNumber': '+91 98765 99999',
      'visitingDate': DateTime.now().add(const Duration(days: 1)).toIso8601String(),
      'type': 'GUEST',
      'plannedVisit': true,
      'createdDate': DateTime.now().subtract(const Duration(days: 1)).toIso8601String(),
      'notes': 'Client review for Q3 cloud roadmap.',
      'tools': 'MacBook Pro',
      'purposeOfVisit': 'Quarterly Business Review',
      'emailAddress': 'deepak.c@fintech.io',
      'checkInDate': null,
      'accountFloorId': 'af-3',
      'comingFrom': {'placeName': 'Bengaluru', 'companyName': 'FinTech Solutions'},
      'createdByPerson': {'firstName': 'Admin', 'lastName': 'User'},
      'idProof': {'type1': 'VOTER_ID', 'number': 'VTR-998877'},
      'additionalDetails': {
        'place': {'id': 'place-1', 'name': 'SKCL Infinity Park'},
        'account': {'id': 'acc-3', 'name': 'Tata Consultancy Services'},
        'block': {'id': 'block-2', 'name': 'Block B'},
        'floor': {'id': 'floor-1-3', 'no': 1, 'name': 'Floor 1'},
        'persons': [
          {
            'firstName': 'Anitha',
            'lastName': 'M',
            'phoneNumber': '+91 98765 44444'
          }
        ]
      }
    },
    {
      'id': 'visitor-4',
      'firstName': 'Kavitha',
      'lastName': 'Suresh',
      'phoneNumber': '+91 98765 00112',
      'visitingDate': DateTime.now().add(const Duration(days: 2)).toIso8601String(),
      'type': 'INTERVIEW',
      'plannedVisit': true,
      'createdDate': DateTime.now().toIso8601String(),
      'notes': 'Senior Flutter Engineer candidate interview.',
      'tools': 'Resume, Portfolio',
      'purposeOfVisit': 'Job Interview',
      'emailAddress': 'kavitha.suresh@gmail.com',
      'checkInDate': null,
      'accountFloorId': 'af-4',
      'comingFrom': {'placeName': 'Velachery', 'companyName': 'Independent'},
      'createdByPerson': {'firstName': 'Admin', 'lastName': 'User'},
      'idProof': {'type1': 'AADHAR', 'number': '1122-3344-5566'},
      'additionalDetails': {
        'place': {'id': 'place-2', 'name': 'SKCL Tech Square'},
        'account': {'id': 'acc-4', 'name': 'Infosys Limited'},
        'block': {'id': 'block-3', 'name': 'Tower 1'},
        'floor': {'id': 'floor-2-1', 'no': 1, 'name': 'Ground Floor'},
        'persons': [
          {
            'firstName': 'Sneha',
            'lastName': 'Patel',
            'phoneNumber': '+91 98765 55555'
          }
        ]
      }
    }
  ];

  static List<Query$Places$places$values> getPlaces([
    PlaceFilter? filter,
    int? offset,
    int? first,
  ]) {
    return _rawPlaces
        .map((p) => Query$Places$places$values.fromJson(
            Map<String, dynamic>.from(_addTypenames(p, 'Place') as Map)))
        .toList();
  }

  static List<Query$Accounts$accounts$values> getAccounts([
    AccountFilter? filter,
    int? offset,
    int? first,
  ]) {
    return _rawAccounts
        .map((a) => Query$Accounts$accounts$values.fromJson(
            Map<String, dynamic>.from(_addTypenames(a, 'Account') as Map)))
        .toList();
  }

  static List<historyGql.Query$Visitors$visitors$values> getVisitors([
    VisitorFilter? filter,
    int? offset,
    int? first,
  ]) {
    final list = _rawVisitors
        .map((v) => historyGql.Query$Visitors$visitors$values.fromJson(
            Map<String, dynamic>.from(_addTypenames(v, 'Visitor') as Map)))
        .toList();
    if (filter != null && filter.meetingTypeFilter != null) {
      final bool isPlanned = filter.meetingTypeFilter == MeetingType.PLANNED;
      return list.where((v) => v.plannedVisit == isPlanned).toList();
    }
    return list;
  }

  static String? _getControlValue(FormGroup formGroup, String name) {
    if (formGroup.contains(name)) {
      return formGroup.control(name).value?.toString();
    }
    return null;
  }

  static entryGql.Mutation$CreateVisitor$createVisitor$source createVisitor(
    FormGroup formGroup,
  ) {
    final String id = 'visitor-${DateTime.now().millisecondsSinceEpoch}';
    final String firstName =
        _getControlValue(formGroup, FieldConstant.FIRST_NAME) ?? 'Visitor';
    final String? lastName =
        _getControlValue(formGroup, FieldConstant.LAST_NAME);
    final String? phoneNumber =
        _getControlValue(formGroup, FieldConstant.PHONE_NUMBER);
    final String? emailAddress =
        _getControlValue(formGroup, FieldConstant.EMAIL_ADDRESS);
    final String? buildingName =
        _getControlValue(formGroup, FieldConstant.BUILDING_NAME);
    final String? companyName =
        _getControlValue(formGroup, FieldConstant.COMPANY_NAME);
    final String? blockName =
        _getControlValue(formGroup, FieldConstant.BLOCK_NAME);
    final int? floorNo =
        int.tryParse(_getControlValue(formGroup, FieldConstant.FLOOR_NO) ?? '1');
    final String? purpose =
        _getControlValue(formGroup, FieldConstant.PURPOSE_OF_VISIT);
    final String? comingFromPlace =
        _getControlValue(formGroup, FieldConstant.COMING_FROM_PLACE);
    final String? comingFromCompany =
        _getControlValue(formGroup, FieldConstant.COMING_FROM_COMPANY);
    final String? proofType =
        _getControlValue(formGroup, FieldConstant.PROOF_ID);
    final String? proofVal =
        _getControlValue(formGroup, FieldConstant.PROOF_VALUE);

    final newVisitorMap = <String, dynamic>{
      'id': id,
      'firstName': firstName,
      'lastName': lastName,
      'phoneNumber': phoneNumber,
      'visitingDate': DateTime.now().toIso8601String(),
      'type': 'GUEST',
      'plannedVisit': false,
      'createdDate': DateTime.now().toIso8601String(),
      'notes': _getControlValue(formGroup, FieldConstant.NOTES) ?? '',
      'tools': _getControlValue(formGroup, FieldConstant.TOOLS) ?? '',
      'purposeOfVisit': purpose ?? 'Visitor Registration',
      'emailAddress': emailAddress,
      'checkInDate': DateTime.now().toIso8601String(),
      'accountFloorId': 'af-new',
      'comingFrom': {
        'placeName': comingFromPlace ?? 'Local',
        'companyName': comingFromCompany ?? ''
      },
      'createdByPerson': {'firstName': 'Admin', 'lastName': 'User'},
      'idProof': {
        'type1': proofType ?? 'AADHAR',
        'number': proofVal ?? 'XXXX-1234'
      },
      'additionalDetails': {
        'place': {'id': 'place-new', 'name': buildingName ?? 'SKCL Infinity Park'},
        'account': {'id': 'acc-new', 'name': companyName ?? 'Plugzmart Technologies'},
        'block': {'id': 'block-new', 'name': blockName ?? 'Block A'},
        'floor': {'id': 'floor-new', 'no': floorNo ?? 1, 'name': 'Floor ${floorNo ?? 1}'},
        'persons': [
          {
            'firstName': 'Host',
            'lastName': 'Person',
            'phoneNumber': '+91 98765 00000'
          }
        ]
      }
    };

    _rawVisitors.insert(0, newVisitorMap);

    return entryGql.Mutation$CreateVisitor$createVisitor$source(
      id: id,
      firstName: firstName,
      lastName: lastName,
      emailAddress: emailAddress,
      phoneNumber: phoneNumber,
    );
  }

  static entryGql.Mutation$UpdateVisitor$updateVisitor$source updateVisitor(
    FormGroup formGroup,
  ) {
    final String? id =
        _getControlValue(formGroup, FieldConstant.ID);
    final String firstName =
        _getControlValue(formGroup, FieldConstant.FIRST_NAME) ?? 'Visitor';
    final String? lastName =
        _getControlValue(formGroup, FieldConstant.LAST_NAME);
    final String? phoneNumber =
        _getControlValue(formGroup, FieldConstant.PHONE_NUMBER);
    final String? emailAddress =
        _getControlValue(formGroup, FieldConstant.EMAIL_ADDRESS);

    return entryGql.Mutation$UpdateVisitor$updateVisitor$source(
      id: id,
      firstName: firstName,
      lastName: lastName,
      emailAddress: emailAddress,
      phoneNumber: phoneNumber,
    );
  }

  static detailGql.Mutation$DeleteVisitor$deleteVisitor$source deleteVisitor(
    String visitorId,
  ) {
    _rawVisitors.removeWhere((v) => v['id'] == visitorId);
    return detailGql.Mutation$DeleteVisitor$deleteVisitor$source(
      id: visitorId,
    );
  }
}
