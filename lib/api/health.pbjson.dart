///
//  Generated code. Do not modify.
//  source: health.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import

const Health$json = const {
  '1': 'Health',
  '2': const [
    const {'1': 'status', '3': 1, '4': 1, '5': 14, '6': '.health.Health.Status', '10': 'status'},
  ],
  '4': const [Health_Status$json],
};

const Health_Status$json = const {
  '1': 'Status',
  '2': const [
    const {'1': 'UNSPECIFIED', '2': 0},
    const {'1': 'READY', '2': 1},
    const {'1': 'NOT_READY', '2': 2},
  ],
};

const GetHealthRequest$json = const {
  '1': 'GetHealthRequest',
};

const HealthService$json = const {
  '1': 'HealthService',
  '2': const [
    const {'1': 'GetHealth', '2': '.health.GetHealthRequest', '3': '.health.Health'},
    const {'1': 'StreamHealth', '2': '.health.GetHealthRequest', '3': '.health.Health', '6': true},
  ],
};

const HealthService$messageJson = const {
  '.health.GetHealthRequest': GetHealthRequest$json,
  '.health.Health': Health$json,
};

