///
//  Generated code. Do not modify.
//  source: api/auth.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import

const Account$json = const {
  '1': 'Account',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'username', '3': 2, '4': 1, '5': 9, '10': 'username'},
    const {'1': 'password', '3': 3, '4': 1, '5': 9, '10': 'password'},
  ],
};

const LoginAccountRequest$json = const {
  '1': 'LoginAccountRequest',
  '2': const [
    const {'1': 'username', '3': 1, '4': 1, '5': 9, '10': 'username'},
    const {'1': 'password', '3': 2, '4': 1, '5': 9, '10': 'password'},
  ],
};

const LoginResponse$json = const {
  '1': 'LoginResponse',
  '2': const [
    const {'1': 'user_id', '3': 1, '4': 1, '5': 9, '10': 'userId'},
  ],
};

const GetUsernameRequest$json = const {
  '1': 'GetUsernameRequest',
  '2': const [
    const {'1': 'user_id', '3': 1, '4': 1, '5': 9, '10': 'userId'},
  ],
};

const GetUsernameResponse$json = const {
  '1': 'GetUsernameResponse',
  '2': const [
    const {'1': 'username', '3': 1, '4': 1, '5': 9, '10': 'username'},
  ],
};

const AuthService$json = const {
  '1': 'AuthService',
  '2': const [
    const {'1': 'Login', '2': '.auth.LoginAccountRequest', '3': '.auth.LoginResponse'},
    const {'1': 'Register', '2': '.auth.LoginAccountRequest', '3': '.auth.LoginResponse'},
    const {'1': 'GetUsername', '2': '.auth.GetUsernameRequest', '3': '.auth.GetUsernameResponse'},
  ],
};

const AuthService$messageJson = const {
  '.auth.LoginAccountRequest': LoginAccountRequest$json,
  '.auth.LoginResponse': LoginResponse$json,
  '.auth.GetUsernameRequest': GetUsernameRequest$json,
  '.auth.GetUsernameResponse': GetUsernameResponse$json,
};

