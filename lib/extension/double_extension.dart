import '../shared/size_fit.dart';

extension DoubleFit on double {
  double get rpx {
    return HYSizeFit.setRpx(this);
  }
}
