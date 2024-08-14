import 'package:get/get.dart';

class YtController extends GetxController{
  static YtController get to => Get.put(YtController());
  var _isLike = false.obs;

  get isLike => _isLike.value;

  set isLike(value) {
    _isLike.value = value;
  }

  var _isUnLike = false.obs;

  get isUnLike => _isUnLike.value;

  set isUnLike(value) {
    _isUnLike.value = value;
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }


  Future<void> onClickIsLikeIsUnLike(index)async{
    // print(index);
    if(index == 0){
      isLike=true;
      isUnLike=false;
    }else if(index == 1){
      isLike=false;
      isUnLike=true;
    }
    else{
      isLike=false;
      isUnLike=false;
    }
    // isLike=isLike;
    // isUnLike=isUnLike;
  }

  Future<void> onClickOtherButtons(String name,index)async{
    print(index);
    // isBtnClicked = name;
  }


}