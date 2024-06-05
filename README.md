# weatherly

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. 

### Prerequisites

To run project you have to install flutter first. How to install flutter you can read here.
[Flutter Installation Guide](https://flutter.dev/docs/get-started/install)


### Install fvm

FVM helps with the need for consistent app builds by referencing the Flutter SDK version used on a per-project basis. It also allows you to have multiple Flutter versions installed to quickly validate and test upcoming Flutter releases with your apps without waiting for Flutter installation every time.

```bash
dart pub global activate fvm
```

Install flutter version, which is defined for project.

```bash
fvm install
```

### Usage 

To use fvm with flutter you need to add `fvm` before flutter command. Here are some examples.

```bash
fvm install
fvm flutter test
fvm flutter pub get
fvm flutter analyze
fvm  flutter run --flavor dev
fvm  flutter run --flavor prod
```

### Setup the project


### 1. Generate all data containing files with Freezed(view models, models, entities, DTOs)
For example:
## 1. View Models

```dart
import 'package:domain/domain_layer.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'character_view_model.freezed.dart';

@freezed
class CharacterViewModel with _$CharacterViewModel {
  const factory CharacterViewModel({
    required int id,
    required String name,
    required String status,
    required String species,
    required String gender,
    required String image,
  }) = _CharacterViewModel;

  factory CharacterViewModel.fromEntity({
    required Character character,
  }) {
    return CharacterViewModel(
      id: character.id,
      name: character.name,
      status: character.status,
      species: character.species,
      gender: character.gender,
      image: character.image,
    );
  }
}
```
## 2. Entity

```dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'character.freezed.dart';

@freezed
class Character with _$Character {
  const factory Character({
    required int id,
    required String name,
    required String status,
    required String species,
    required String gender,
    required String image,
  }) = _Character;

  const Character._();

  factory Character.fromDto(CharacterDto dto) {
    return Character(
      id: dto.id ?? 0,
      name: dto.name ?? '',
      status: dto.status ?? '',
      species: dto.species ?? '',
      gender: dto.gender ?? '',
      image: dto.image ?? '',     
    );
  }
}
```

## 3. DTO
```dart
import 'package:data/src/home/dto/origin_dto.dart';
import 'package:domain/domain_layer.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'character_dto.freezed.dart';
part 'character_dto.g.dart';

@freezed
class CharacterDto with _$CharacterDto {
  const factory CharacterDto({
    required int? id,
    required String? name,
    required String? status,
    required String? species,
    required String? gender,
    required String? image,
    required String? type,
    required OriginDto? origin,
    required OriginDto? location,
    required String? url,
    required String? created,
    required List<String>? episode,
  }) = _CharacterDto;

  factory CharacterDto.fromJson(Map<String, Object?> json) =>
      _$CharacterDtoFromJson(json);

  const CharacterDto._();

 
}
```
### 2. Create corresponding folders in the modules (Domain, Presentation, Data) with a name that describes your feature:
For example home:
```
 Presentation: home
 Domain: home
 Data: home
```
Start from `Domain` implementation. Create entities (models) that will describe the structure of response of the `Data` layer:
```dart
import 'package:domain/src/index.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_data.freezed.dart';

@freezed
class HomeData with _$HomeData {
  const factory HomeData({
    required List<Character> characters,
  }) = _HomeData;

  const HomeData._();

  factory HomeData.fromDto(HomeDataDto dto) => HomeData(
        characters: results?.map((e) => e.toEntity()).toList() ?? <Character>[],
      );
}
```

The method fromDto() works as a mapper, it converts `DTO` objects to the entities described in the `Domain` layer.

Create repository abstraction implementation will be provided in the `Data` layer:
```dart
abstract class HomeRepository {
  Future<ResponseResult<HomeData, FailureResult>> getHomeData();
}
```
With every method use `ResponseResult` as return value, it takes two entities (success and failure).

```
It is like a wrapper, can contains 1 or multiple repositories. In case of multiple we can combine responses, and as result `Presentation` layer will get only one entity.

```

The next step is `Data` layer implementation.
Implement `DTO` objects (other words response models):
```dart
part 'home_data_dto.freezed.dart';
part 'home_data_dto.g.dart';

@freezed
class HomeDataDto with _$HomeDataDto {
  const factory HomeDataDto({
    required InfoDto? info,
    required List<CharacterDto>? results,
  }) = _HomeDataDto;

  const HomeDataDto._();

  factory HomeDataDto.fromJson(Map<String, Object?> json) =>
      _$HomeDataDtoFromJson(json);
}
```
You should add DTO mapping in [lib/data/client/custom_serialize.dart]
```dart
final jsonDecoderMappings = <Map<Object, _JsonFactory<Object?>>>[
  {
    HomeDataDto: HomeDataDto.fromJson,
  },
];
```

Implement `DataSources`, it will be used in repository implementation.
If you need to create an API request, add a service for this:
```dart
import 'package:chopper/chopper.dart';
part 'home_api_service.chopper.dart';

@ChopperApi()
abstract class HomeApiService extends ChopperService {
  static HomeApiService create({ChopperClient? client}) {
    return _$HomeApiService(client);
  }

  @Get(path: 'character')
  Future<Response<HomeDataDto>> getHomeData();
}
```
For services we use `Chopper Client`. When you described the service don't forget to run:
```bash
fvm flutter pub run build_runner build  --delete-conflicting-outputs
```
As result `_$HomeApiService` object will be generated.

```dart
abstract class HomeDataSource {
  Future<ResponseResult<HomeDataDto, FailureResult>> getHomeData();
}
```

```dart
class HomeRemoteDataSource extends HomeDataSource {
  final HomeApiService _homeApiService;

  HomeRemoteDataSource({
    required HomeApiService homeApiService,
  }) : _homeApiService = homeApiService;

  @override
  Future<ResponseResult<HomeDataDto, FailureResult>> getHomeData() {
    return ApiRequestManager.guardApiCall<HomeDataDto, HomeDataDto>(
      invoker: _homeApiService.getHomeData,
      mapper: (dto) => dto,
    );
  }
}

```
In case, your data source is based on backend API, use `ApiRequestManager.guardApiCall(...)` to handle request and response. This manager creates `ResponseResult` object depends on response.

Add repository implementation:
```dart
class HomeRepositoryImpl implements HomeRepository {
  final HomeDataSource _homeRemoteDataSource;

  HomeRepositoryImpl({
    required HomeDataSource homeRemoteDataSource,
  }) : _homeRemoteDataSource = homeRemoteDataSource;

  @override
  Future<ResponseResult<HomeData, FailureResult>> getHomeData() async {
    final response = await _homeRemoteDataSource.getHomeData();

    return response.isSuccess
        ? ResponseResult.success(
            HomeData.formDto(response.success),
          )
        : ResponseResult.failure(response.failure);
  }
}

```
Don't forget to register your Services, Data sources and Repository implementations in `DataDependencies` as `LazySingleton`:

```dart
class DataDependencies extends Dependencies {
  @override
  Future<void> register(DI di) async {
    await _registerDataSources(di);

    await _registerApiServices(di);

    await _registerRepositories(di);
  }

  Future<void> _registerDataSources(
    DI di,
  ) async {
    di.registerLazySingleton<HomeRemoteDataSource>(
      () => HomeRemoteDataSource(
        homeApiService: di(),
      ),
    );
  }

  Future<void> _registerApiServices(DI di) async {
    final chopperStagingClient = BaseClient.createStagingClient(
      di(),
    );

    di.registerLazySingleton(
      () => HomeApiService.create(
        client: chopperStagingClient,
      ),
    );
  }

  Future<void> _registerRepositories(DI di) async {
    di.registerLazySingleton<HomeRepository>(
      () => HomeRepositoryImpl(
        homeRemoteDataSource: di<HomeRemoteDataSource>(),
      ),
    );
  }
}

```

When all described above steps are done, we can start with the `Presentation` layer.
Add Bloc implementation and execute `HomeRepository` from the `Domain` layer:
```dart
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomeRepository _homeRepository;

  HomeBloc({
    required HomeRepository homeRepository,
  })  : _homeRepository = homeRepository,
        super(const HomeState.initial()) {
    on<GetHomeDataEvent>(_handleGetHomeDataEvent);
  }
  Future<void> _handleGetHomeDataEvent(
    GetHomeDataEvent event,
    Emitter<HomeState> emit,
  ) async {
    emit(const HomeState.loading());

    final response = await _homeRepository.getData();

    response.when(
      success: (data) {
        emit(
          HomeState.loaded(
            homeScreenViewModel: HomeScreenViewModel.fromEntity(homeData: data),
          ),
        );
      },
      failure: (f) {
        emit(
          HomeState.error(errorMessage: f.debugMessage),
        );
      },
    );
  }
}

```

### 3. Register and provide blocs
When you created the bloc, it needs to registration in `PresentationDependencies` as `LazySingleton`:

```dart 
class PresentationDependencies extends Dependencies {
  @override
  Future<void> register(DI di) async {
    di.registerLazySingleton<HomeBloc>(
      () => HomeBloc(
        homeRepository: di(),
      ),
    );
  }
}

```
To provide the bloc, use `BlocProvider.value(...)`:
```dart
    BlocProvider.value(
        value: inject<HomeBloc>(),
        child: ...,
    );
```


After registration don't forget to run builder:

```bash
fvm flutter pub run build_runner build  --delete-conflicting-outputs
```

## Built With
* [flutter](https://flutter.dev) - Design beautiful apps


## Contributing
Please read [Dart Code Style](https://dart.dev/guides/language/effective-dart/style) for details on our code of conduct, and the process for submitting pull requests to us.


## Authors
* **Ara Periyan** - *Flutter Freelancer* 

