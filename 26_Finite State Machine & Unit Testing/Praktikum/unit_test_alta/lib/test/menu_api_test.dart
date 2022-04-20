import 'package:test/test.dart';
import 'package:unit_test_alta/models/menu_model.dart';
import 'package:unit_test_alta/services/menu_api.dart';
import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';
import 'menu_api_test.mocks.dart';

@GenerateMocks([MenuApi])
void main() {
  group('MenuApi', () {
    MockMenuApi menuApi = MockMenuApi();
    test(
      'get all menu returns data',
      () async {
        when(MenuApi.getMenu()).thenAnswer(
          (_) async => <MenuModel>[
            MenuModel(id: 1, name: 'naget'),
          ],
        );
        var menus = await MenuApi.getMenu();
        expect(menus.isNotEmpty, true);
      },
    );
  });
}
