//
//  Generated code. Do not modify.
//  source: workstation.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class RemoteTerminalRequest extends $pb.GeneratedMessage {
  factory RemoteTerminalRequest({
    $core.String? command,
    $core.Iterable<$core.String>? args,
  }) {
    final $result = create();
    if (command != null) {
      $result.command = command;
    }
    if (args != null) {
      $result.args.addAll(args);
    }
    return $result;
  }
  RemoteTerminalRequest._() : super();
  factory RemoteTerminalRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RemoteTerminalRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RemoteTerminalRequest', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'command')
    ..pPS(2, _omitFieldNames ? '' : 'args')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RemoteTerminalRequest clone() => RemoteTerminalRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RemoteTerminalRequest copyWith(void Function(RemoteTerminalRequest) updates) => super.copyWith((message) => updates(message as RemoteTerminalRequest)) as RemoteTerminalRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RemoteTerminalRequest create() => RemoteTerminalRequest._();
  RemoteTerminalRequest createEmptyInstance() => create();
  static $pb.PbList<RemoteTerminalRequest> createRepeated() => $pb.PbList<RemoteTerminalRequest>();
  @$core.pragma('dart2js:noInline')
  static RemoteTerminalRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RemoteTerminalRequest>(create);
  static RemoteTerminalRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get command => $_getSZ(0);
  @$pb.TagNumber(1)
  set command($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCommand() => $_has(0);
  @$pb.TagNumber(1)
  void clearCommand() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.String> get args => $_getList(1);
}

class RemoteTerminalReply extends $pb.GeneratedMessage {
  factory RemoteTerminalReply({
    $core.String? stdout,
  }) {
    final $result = create();
    if (stdout != null) {
      $result.stdout = stdout;
    }
    return $result;
  }
  RemoteTerminalReply._() : super();
  factory RemoteTerminalReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RemoteTerminalReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RemoteTerminalReply', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'stdout')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RemoteTerminalReply clone() => RemoteTerminalReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RemoteTerminalReply copyWith(void Function(RemoteTerminalReply) updates) => super.copyWith((message) => updates(message as RemoteTerminalReply)) as RemoteTerminalReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RemoteTerminalReply create() => RemoteTerminalReply._();
  RemoteTerminalReply createEmptyInstance() => create();
  static $pb.PbList<RemoteTerminalReply> createRepeated() => $pb.PbList<RemoteTerminalReply>();
  @$core.pragma('dart2js:noInline')
  static RemoteTerminalReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RemoteTerminalReply>(create);
  static RemoteTerminalReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get stdout => $_getSZ(0);
  @$pb.TagNumber(1)
  set stdout($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStdout() => $_has(0);
  @$pb.TagNumber(1)
  void clearStdout() => clearField(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
