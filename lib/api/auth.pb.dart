///
//  Generated code. Do not modify.
//  source: api/auth.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import

import 'dart:async' as $async;
// ignore: UNUSED_SHOWN_NAME
import 'dart:core' show int, bool, double, String, List, override;

import 'package:protobuf/protobuf.dart' as $pb;

class Account extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('Account', package: const $pb.PackageName('auth'))
    ..aOS(1, 'id')
    ..aOS(2, 'username')
    ..aOS(3, 'password')
    ..hasRequiredFields = false
  ;

  Account() : super();
  Account.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  Account.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  Account clone() => new Account()..mergeFromMessage(this);
  Account copyWith(void Function(Account) updates) => super.copyWith((message) => updates(message as Account));
  $pb.BuilderInfo get info_ => _i;
  static Account create() => new Account();
  static $pb.PbList<Account> createRepeated() => new $pb.PbList<Account>();
  static Account getDefault() => _defaultInstance ??= create()..freeze();
  static Account _defaultInstance;
  static void $checkItem(Account v) {
    if (v is! Account) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  String get id => $_getS(0, '');
  set id(String v) { $_setString(0, v); }
  bool hasId() => $_has(0);
  void clearId() => clearField(1);

  String get username => $_getS(1, '');
  set username(String v) { $_setString(1, v); }
  bool hasUsername() => $_has(1);
  void clearUsername() => clearField(2);

  String get password => $_getS(2, '');
  set password(String v) { $_setString(2, v); }
  bool hasPassword() => $_has(2);
  void clearPassword() => clearField(3);
}

class LoginAccountRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('LoginAccountRequest', package: const $pb.PackageName('auth'))
    ..aOS(1, 'username')
    ..aOS(2, 'password')
    ..hasRequiredFields = false
  ;

  LoginAccountRequest() : super();
  LoginAccountRequest.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  LoginAccountRequest.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  LoginAccountRequest clone() => new LoginAccountRequest()..mergeFromMessage(this);
  LoginAccountRequest copyWith(void Function(LoginAccountRequest) updates) => super.copyWith((message) => updates(message as LoginAccountRequest));
  $pb.BuilderInfo get info_ => _i;
  static LoginAccountRequest create() => new LoginAccountRequest();
  static $pb.PbList<LoginAccountRequest> createRepeated() => new $pb.PbList<LoginAccountRequest>();
  static LoginAccountRequest getDefault() => _defaultInstance ??= create()..freeze();
  static LoginAccountRequest _defaultInstance;
  static void $checkItem(LoginAccountRequest v) {
    if (v is! LoginAccountRequest) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  String get username => $_getS(0, '');
  set username(String v) { $_setString(0, v); }
  bool hasUsername() => $_has(0);
  void clearUsername() => clearField(1);

  String get password => $_getS(1, '');
  set password(String v) { $_setString(1, v); }
  bool hasPassword() => $_has(1);
  void clearPassword() => clearField(2);
}

class LoginResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('LoginResponse', package: const $pb.PackageName('auth'))
    ..aOS(1, 'userId')
    ..hasRequiredFields = false
  ;

  LoginResponse() : super();
  LoginResponse.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  LoginResponse.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  LoginResponse clone() => new LoginResponse()..mergeFromMessage(this);
  LoginResponse copyWith(void Function(LoginResponse) updates) => super.copyWith((message) => updates(message as LoginResponse));
  $pb.BuilderInfo get info_ => _i;
  static LoginResponse create() => new LoginResponse();
  static $pb.PbList<LoginResponse> createRepeated() => new $pb.PbList<LoginResponse>();
  static LoginResponse getDefault() => _defaultInstance ??= create()..freeze();
  static LoginResponse _defaultInstance;
  static void $checkItem(LoginResponse v) {
    if (v is! LoginResponse) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  String get userId => $_getS(0, '');
  set userId(String v) { $_setString(0, v); }
  bool hasUserId() => $_has(0);
  void clearUserId() => clearField(1);
}

class GetUsernameRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('GetUsernameRequest', package: const $pb.PackageName('auth'))
    ..aOS(1, 'userId')
    ..hasRequiredFields = false
  ;

  GetUsernameRequest() : super();
  GetUsernameRequest.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  GetUsernameRequest.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  GetUsernameRequest clone() => new GetUsernameRequest()..mergeFromMessage(this);
  GetUsernameRequest copyWith(void Function(GetUsernameRequest) updates) => super.copyWith((message) => updates(message as GetUsernameRequest));
  $pb.BuilderInfo get info_ => _i;
  static GetUsernameRequest create() => new GetUsernameRequest();
  static $pb.PbList<GetUsernameRequest> createRepeated() => new $pb.PbList<GetUsernameRequest>();
  static GetUsernameRequest getDefault() => _defaultInstance ??= create()..freeze();
  static GetUsernameRequest _defaultInstance;
  static void $checkItem(GetUsernameRequest v) {
    if (v is! GetUsernameRequest) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  String get userId => $_getS(0, '');
  set userId(String v) { $_setString(0, v); }
  bool hasUserId() => $_has(0);
  void clearUserId() => clearField(1);
}

class GetUsernameResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('GetUsernameResponse', package: const $pb.PackageName('auth'))
    ..aOS(1, 'username')
    ..hasRequiredFields = false
  ;

  GetUsernameResponse() : super();
  GetUsernameResponse.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  GetUsernameResponse.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  GetUsernameResponse clone() => new GetUsernameResponse()..mergeFromMessage(this);
  GetUsernameResponse copyWith(void Function(GetUsernameResponse) updates) => super.copyWith((message) => updates(message as GetUsernameResponse));
  $pb.BuilderInfo get info_ => _i;
  static GetUsernameResponse create() => new GetUsernameResponse();
  static $pb.PbList<GetUsernameResponse> createRepeated() => new $pb.PbList<GetUsernameResponse>();
  static GetUsernameResponse getDefault() => _defaultInstance ??= create()..freeze();
  static GetUsernameResponse _defaultInstance;
  static void $checkItem(GetUsernameResponse v) {
    if (v is! GetUsernameResponse) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  String get username => $_getS(0, '');
  set username(String v) { $_setString(0, v); }
  bool hasUsername() => $_has(0);
  void clearUsername() => clearField(1);
}

class AuthServiceApi {
  $pb.RpcClient _client;
  AuthServiceApi(this._client);

  $async.Future<LoginResponse> login($pb.ClientContext ctx, LoginAccountRequest request) {
    var emptyResponse = new LoginResponse();
    return _client.invoke<LoginResponse>(ctx, 'AuthService', 'Login', request, emptyResponse);
  }
  $async.Future<LoginResponse> register($pb.ClientContext ctx, LoginAccountRequest request) {
    var emptyResponse = new LoginResponse();
    return _client.invoke<LoginResponse>(ctx, 'AuthService', 'Register', request, emptyResponse);
  }
  $async.Future<GetUsernameResponse> getUsername($pb.ClientContext ctx, GetUsernameRequest request) {
    var emptyResponse = new GetUsernameResponse();
    return _client.invoke<GetUsernameResponse>(ctx, 'AuthService', 'GetUsername', request, emptyResponse);
  }
}

