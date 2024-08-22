part of 'connectivity_cubit.dart';

@freezed
class ConnectivityState with _$ConnectivityState {
  const factory ConnectivityState.initial() = InitialState;
  const factory ConnectivityState.connected() = ConnectedState;
  const factory ConnectivityState.offline() = OfflineState;
  const factory ConnectivityState.vpn() = VpnlState;
}
