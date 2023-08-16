//
//  Generated code. Do not modify.
//  source: workstation.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use remoteTerminalRequestDescriptor instead')
const RemoteTerminalRequest$json = {
  '1': 'RemoteTerminalRequest',
  '2': [
    {'1': 'command', '3': 1, '4': 1, '5': 9, '10': 'command'},
    {'1': 'args', '3': 2, '4': 3, '5': 9, '10': 'args'},
  ],
};

/// Descriptor for `RemoteTerminalRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List remoteTerminalRequestDescriptor = $convert.base64Decode(
    'ChVSZW1vdGVUZXJtaW5hbFJlcXVlc3QSGAoHY29tbWFuZBgBIAEoCVIHY29tbWFuZBISCgRhcm'
    'dzGAIgAygJUgRhcmdz');

@$core.Deprecated('Use remoteTerminalReplyDescriptor instead')
const RemoteTerminalReply$json = {
  '1': 'RemoteTerminalReply',
  '2': [
    {'1': 'stdout', '3': 1, '4': 1, '5': 9, '10': 'stdout'},
  ],
};

/// Descriptor for `RemoteTerminalReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List remoteTerminalReplyDescriptor = $convert.base64Decode(
    'ChNSZW1vdGVUZXJtaW5hbFJlcGx5EhYKBnN0ZG91dBgBIAEoCVIGc3Rkb3V0');

