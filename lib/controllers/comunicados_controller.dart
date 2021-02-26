import 'package:get/get.dart';
import 'package:getx_testing/repository/comunicados_repository.dart';
import 'package:getx_testing/repository/mapa_comunicados.dart';

class ComunicadosController extends GetxController {
  var comunicados = List<DadosComunicados>().obs;
  var isLoading = true.obs;

  void getComunicados() {
    isLoading(true);

    ComunicadosRepository.getComunicados().then((response) {
      comunicados.assignAll(response);
      isLoading(false);
    });
  }

  @override
  void onInit() {
    getComunicados();
    super.onInit();
  }
}
