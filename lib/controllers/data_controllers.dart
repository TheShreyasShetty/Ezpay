import 'package:ezpay/services/data_services.dart';
import 'package:get/get.dart';

class DataController extends GetxController{
  var list = [].obs;  // observable is used to understand changes happening
  final service = new DataServices();
  var _loading = false.obs;
  // get returns only one property at atime
  get loading{
    return _loading.value;
  }

  @override
  void onInit(){
    _loadData();
    super.onInit();
  }
  // if there is anything in the list then map/save it in the var e
  get newList{
    return list.where((e) => e["status"]).map((e) => e);
  }

  _loadData() async {
    _loading.value = false;
    try{
      var info = service.getUsers();
      list.addAll(await info);
    }catch(e){
      print("Encountered error");
      print(e);
    }finally {
      _loading.value = true;
    }
  }
}