
import 'dart:async' as _i5;

import 'package:bitspan_flutter_task/data/models/home_page_model.dart' as _i3;
import 'package:bitspan_flutter_task/domain/repositories/home_repository.dart'
    as _i2;
import 'package:bitspan_flutter_task/domain/use_cases/get_home_page_data.dart'
    as _i4;
import 'package:mockito/mockito.dart' as _i1;



class _FakeHomeRepository_0 extends _i1.SmartFake
    implements _i2.HomeRepository {
  _FakeHomeRepository_0(Object parent, Invocation parentInvocation)
    : super(parent, parentInvocation);
}

class _FakeHomePageModel_1 extends _i1.SmartFake implements _i3.HomePageModel {
  _FakeHomePageModel_1(Object parent, Invocation parentInvocation)
    : super(parent, parentInvocation);
}

/// A class which mocks [GetHomePageData].
///
/// See the documentation for Mockito's code generation for more information.
class MockGetHomePageData extends _i1.Mock implements _i4.GetHomePageData {
  MockGetHomePageData() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.HomeRepository get repository =>
      (super.noSuchMethod(
            Invocation.getter(#repository),
            returnValue: _FakeHomeRepository_0(
              this,
              Invocation.getter(#repository),
            ),
          )
          as _i2.HomeRepository);

  @override
  _i5.Future<_i3.HomePageModel> call() =>
      (super.noSuchMethod(
            Invocation.method(#call, []),
            returnValue: _i5.Future<_i3.HomePageModel>.value(
              _FakeHomePageModel_1(this, Invocation.method(#call, [])),
            ),
          )
          as _i5.Future<_i3.HomePageModel>);
}