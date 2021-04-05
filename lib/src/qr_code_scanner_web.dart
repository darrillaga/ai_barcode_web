import 'package:flutter/widgets.dart';
import 'qr_code_scanner_web_impl.dart';

abstract class CameraController {
  Future<void> startCamera();

  Future<String> startCameraPreview();

  Future<void> stopCameraPreview();

  Future<void> stopCamera();
}
///
/// QrCodeCameraWeb
class QrCodeCameraWeb extends StatelessWidget {
  final void Function(String qrValue) qrCodeCallback;
  final Widget? child;
  final BoxFit fit;
  final Widget Function(BuildContext context, Object error)? onError;
  final CameraController? cameraController;

  QrCodeCameraWeb({
    Key? key,
    required this.qrCodeCallback,
    this.child,
    this.fit = BoxFit.contain,
    this.onError,
    this.cameraController
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return QrCodeCameraWebImpl(
      key: key,
      qrCodeCallback: qrCodeCallback,
      child: child,
      fit: fit,
      onError: onError,
      cameraController: cameraController
    );
  }
}
