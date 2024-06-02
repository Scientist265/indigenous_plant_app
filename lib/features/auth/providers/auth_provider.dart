import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:indigenous_plant/features/auth/repository/auth_repository.dart';

final authProvider = Provider((ref) => AuthRepository());
