
abstract class DataState<T> {
  final T? data;
  final Error? exception;

  const DataState({this.data, this.exception});
}

class DataSuccess<T> extends DataState<T> {
  const DataSuccess(T data) : super(data: data);
}

class DataFailure<T> extends DataState<T> {
  const DataFailure(Error expection) : super(exception: expection);
}
