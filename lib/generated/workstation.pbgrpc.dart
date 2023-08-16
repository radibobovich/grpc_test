//
//  Generated code. Do not modify.
//  source: workstation.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'workstation.pb.dart' as $0;

export 'workstation.pb.dart';

@$pb.GrpcServiceName('RemoteTerminal')
class RemoteTerminalClient extends $grpc.Client {
  static final _$performCommand = $grpc.ClientMethod<$0.RemoteTerminalRequest, $0.RemoteTerminalReply>(
      '/RemoteTerminal/performCommand',
      ($0.RemoteTerminalRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.RemoteTerminalReply.fromBuffer(value));

  RemoteTerminalClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.RemoteTerminalReply> performCommand($0.RemoteTerminalRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$performCommand, request, options: options);
  }
}

@$pb.GrpcServiceName('RemoteTerminal')
abstract class RemoteTerminalServiceBase extends $grpc.Service {
  $core.String get $name => 'RemoteTerminal';

  RemoteTerminalServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.RemoteTerminalRequest, $0.RemoteTerminalReply>(
        'performCommand',
        performCommand_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.RemoteTerminalRequest.fromBuffer(value),
        ($0.RemoteTerminalReply value) => value.writeToBuffer()));
  }

  $async.Future<$0.RemoteTerminalReply> performCommand_Pre($grpc.ServiceCall call, $async.Future<$0.RemoteTerminalRequest> request) async {
    return performCommand(call, await request);
  }

  $async.Future<$0.RemoteTerminalReply> performCommand($grpc.ServiceCall call, $0.RemoteTerminalRequest request);
}
