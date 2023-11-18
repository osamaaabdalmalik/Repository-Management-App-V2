import 'package:get/get.dart';
import 'package:rms/features/client/data/data_sources/client_remote_data_source.dart';
import 'package:rms/features/client/data/repository/client_repo_impl.dart';
import 'package:rms/features/client/domain/repository/client_repo.dart';
import 'package:rms/features/client/domain/usecases/add_client_to_archive_use_case.dart';
import 'package:rms/features/client/domain/usecases/create_client_use_case.dart';
import 'package:rms/features/client/domain/usecases/delete_client_register_use_case.dart';
import 'package:rms/features/client/domain/usecases/delete_client_use_case.dart';
import 'package:rms/features/client/domain/usecases/get_archive_client_use_case.dart';
import 'package:rms/features/client/domain/usecases/get_archives_clients_use_case.dart';
import 'package:rms/features/client/domain/usecases/get_client_registers_use_case.dart';
import 'package:rms/features/client/domain/usecases/get_client_use_case.dart';
import 'package:rms/features/client/domain/usecases/get_clients_use_case.dart';
import 'package:rms/features/client/domain/usecases/meet_debt_client_register_use_case.dart';
import 'package:rms/features/client/domain/usecases/remove_client_to_archive_use_case.dart';
import 'package:rms/features/client/domain/usecases/update_client_use_case.dart';

class ClientBindings extends Bindings {
  @override
  dependencies() async {
    Get.put<ClientRemoteDataSource>(
      ClientRemoteDataSourceImpl(apiService: Get.find()),
    );
    Get.put<ClientRepo>(
      ClientRepoImpl(clientRemoteDataSource: Get.find()),
    );

    Get.put(GetClientsUseCase(Get.find()));
    Get.put(GetClientUseCase(Get.find()));
    Get.put(GetArchivesClientsUseCase(Get.find()));
    Get.put(GetArchiveClientUseCase(Get.find()));
    Get.put(GetClientRegistersUseCase(Get.find()));
    Get.put(CreateClientUseCase(Get.find()));
    Get.put(UpdateClientUseCase(Get.find()));
    Get.put(DeleteClientUseCase(Get.find()));
    Get.put(DeleteClientRegisterUseCase(Get.find()));
    Get.put(MeetDebtClientRegisterUseCase(Get.find()));
    Get.put(AddClientToArchiveUseCase(Get.find()));
    Get.put(RemoveClientToArchiveUseCase(Get.find()));
  }
}
