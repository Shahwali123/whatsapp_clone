class BaseResponse {
  bool success;
  String? error;
  BaseResponse({
    this.success = false,
    this.error,
  });
}
