import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:quical/core/common/api_service.dart';
import 'package:quical/logic/repository/splash_screen_repository.dart';

import '../core/common/db_share_preferences.dart';
import '../entity/value_holder_entity.dart';
// import 'provider/item_provider.dart';

List<SingleChildWidget> providers = <SingleChildWidget>[
  ...independentProviders,
  ..._dependentProviders,
  ..._valueProviders,
];

List<SingleChildWidget> independentProviders = <SingleChildWidget>[
  Provider<PsSharedPreferences>.value(value: PsSharedPreferences.instance),
  Provider<ApiService>.value(value: ApiService()),
];

List<SingleChildWidget> _dependentProviders = <SingleChildWidget>[
  ProxyProvider<PsSharedPreferences, FlashScreenRepository>(
    update: (_, PsSharedPreferences ssSharedPreferences,
            FlashScreenRepository? psThemeRepository) =>
        FlashScreenRepository(psSharedPreferences: ssSharedPreferences),
  ),
  // ProxyProvider<ApiService, AuthenticationRepository>(
  //   update:
  //       (_, ApiService apiService, AuthenticationRepository? userRepository) =>
  //           AuthenticationRepository(
  //     psApiService: apiService,
  //   ),
  // ),
  // ProxyProvider<ApiService, CountryRepository>(
  //   update: (_, ApiService apiService, CountryRepository? countryRepo) =>
  //       CountryRepository(
  //     psApiService: apiService,
  //   ),
  // ),
  // ProxyProvider<ApiService, CityRepository>(
  //   update: (_, ApiService apiService, CityRepository? cityRepository) =>
  //       CityRepository(
  //     psApiService: apiService,
  //   ),
  // ),
  // ProxyProvider<ApiService, StateRepository>(
  //   update: (_, ApiService apiService, StateRepository? stateRepository) =>
  //       StateRepository(
  //     psApiService: apiService,
  //   ),
  // ),
  // ProxyProvider<ApiService, UserRepository>(
  //   update: (_, ApiService apiService, UserRepository? userRepo) =>
  //       UserRepository(
  //     psApiService: apiService,
  //   ),
  // ),
  // ProxyProvider<ApiService, ServiceHourRepository>(
  //   update: (_, ApiService apiService,
  //           ServiceHourRepository? serviceHourRepository) =>
  //       ServiceHourRepository(
  //     psApiService: apiService,
  //   ),
  // ),
  // ProxyProvider<ApiService, CategoriesRepository>(
  //   update: (_, ApiService apiService,
  //           CategoriesRepository? categoriesRepository) =>
  //       CategoriesRepository(
  //     psApiService: apiService,
  //   ),
  // ),
  // ProxyProvider<ApiService, CampaignRepository>(
  //   update:
  //       (_, ApiService apiService, CampaignRepository? campaignRepository) =>
  //           CampaignRepository(
  //     psApiService: apiService,
  //   ),
  // ),
  // ProxyProvider<ApiService, EmployeeRepository>(
  //   update:
  //       (_, ApiService apiService, EmployeeRepository? employeeRepository) =>
  //           EmployeeRepository(
  //     psApiService: apiService,
  //   ),
  // ),
  // ProxyProvider<ApiService, CouponsRepository>(
  //   update: (_, ApiService apiService, CouponsRepository? couponsRepository) =>
  //       CouponsRepository(
  //     psApiService: apiService,
  //   ),
  // ),

  //   ProxyProvider<ApiService, WalletRepository>(
  //   update: (_, ApiService apiService, WalletRepository? walletRepository) =>
  //       WalletRepository(
  //     psApiService: apiService,
  //   ),
  // ),

  // ProxyProvider<ApiService, AddOnsListRepository>(
  //   update: (_, ApiService apiService,
  //           AddOnsListRepository? addOnsListRepository) =>
  //       AddOnsListRepository(
  //     psApiService: apiService,
  //   ),
  // ),
];

List<SingleChildWidget> _valueProviders = <SingleChildWidget>[
  StreamProvider<ValueHolder?>(
    initialData: null,
    create: (BuildContext context) =>
        Provider.of<PsSharedPreferences>(context, listen: false).psValueHolder,
  ),
  // ChangeNotifierProvider(
  //   create: (_) => ItemListViewModel(
  //     psValueHolder: Provider.of<ValueHolder>(_, listen: false),
  //     context: _,
  //   ),
  // ),
  // ChangeNotifierProvider(
  //   create: (_) => OrderProvider(
  //     psValueHolder: Provider.of<ValueHolder>(_, listen: false),
  //     context: _,
  //   ),
  // ),
  // ChangeNotifierProvider(
  //   create: (_) => ReviewProvider(
  //     psValueHolder: Provider.of<ValueHolder>(_, listen: false),
  //     context: _,
  //   ),
  // ),
  // ChangeNotifierProvider(
  //   create: (_) => WalletProvider(
  //     psValueHolder: Provider.of<ValueHolder>(_, listen: false),
  //     context: _,
  //   ),
  // ),
  // ChangeNotifierProvider(
  //   create: (_) => DashBoardViewmodel(
  //     psValueHolder: Provider.of<ValueHolder>(_, listen: false),
  //     context: _,
  //   ),
  // ),
  // ChangeNotifierProvider(
  //   create: (_) => ProfileProvider(
  //     context: _,
  //     psValueHolder: Provider.of<ValueHolder>(_, listen: false),
  //   ),
  // ),
  // ChangeNotifierProvider(
  //   create: (_) => AddBankProvider(
  //     context: _,
  //     psValueHolder: Provider.of<ValueHolder>(_, listen: false),
  //   ),
  // ),
  // ChangeNotifierProvider(
  //   create: (_) => RequestATabProvider(
  //     context: _,
  //     psValueHolder: Provider.of<ValueHolder>(_, listen: false),
  //   ),
  // ),
  // ChangeNotifierProvider(
  //     create: (_) => CouponProvider(
  //           context: _,
  //           psValueHolder: Provider.of<ValueHolder>(_, listen: false),
  //         )),
  // ChangeNotifierProvider(
  //   create: (_) => HelpProvider(
  //     context: _,
  //     psValueHolder: Provider.of<ValueHolder>(_, listen: false),
  //   ),
  // ),
];
