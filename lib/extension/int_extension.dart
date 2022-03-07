import '../shared/size_fit.dart';

extension IntFit on int {
  double get rpx {
    return HYSizeFit.setRpx(this.toDouble());
  }
}
