abstract class ILocalStorage<T> {
  T? read([String key]);
  void write(T model, [String key]);
  void delete([String key]);
}
