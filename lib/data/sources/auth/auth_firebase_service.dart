import 'package:firebase_auth/firebase_auth.dart';
import 'package:spotify/data/models/auth/create_user_req.dart';

abstract class AuthFirebaseService {

  Future<void> signup(CreateUserReq );
  Future<void> signuin();

}

class AuthFirebaseServiceImpl extends AuthFirebaseService{
 
  @override
  Future<void> signuin() {
    // TODO: implement signuin
    throw UnimplementedError();
  }

  @override
  Future<void> signup(CreateUserReq) async {
   try{

    await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: CreateUserReq.email,
       password: CreateUserReq.password,
       );
  
    } on FirebaseAuthException catch(e) {

    }

  }
  

}