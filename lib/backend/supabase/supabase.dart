import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';

const _kSupabaseUrl = 'https://bsfbswlffmqhubdsnwtk.supabase.co';
const _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImJzZmJzd2xmZm1xaHViZHNud3RrIiwicm9sZSI6ImFub24iLCJpYXQiOjE2ODg2MjU5NDksImV4cCI6MjAwNDIwMTk0OX0.64fBRWuQV3IIDPWLYrr9iVOAqHKvQMFcjDcWfIyHW1I';

class SupaFlow {
  SupaFlow._();

  static SupaFlow? _instance;
  static SupaFlow get instance => _instance ??= SupaFlow._();

  final _supabase = Supabase.instance.client;
  static SupabaseClient get client => instance._supabase;

  static Future initialize() => Supabase.initialize(
        url: _kSupabaseUrl,
        anonKey: _kSupabaseAnonKey,
        debug: false,
      );
}
