// import 'package:cloud_firestore/cloud_firestore.dart';

// class User {
//   List? bookmarkeditems;
//   String? email;
//   String? imageUrl;
//   List? loveditems;
//   String? name;
//   String? rId;
//   String? timestamp;
//   String? uid;

//   User({
//     this.bookmarkeditems,
//     this.email,
//     this.imageUrl,
//     this.loveditems,
//     this.name,
//     this.rId,
//     this.timestamp,
//     this.uid,
//   });

//   factory User.fromFirestore(DocumentSnapshot snapshot) {
//     Map u = snapshot.data() as Map<dynamic, dynamic>;
//     return User(
//       bookmarkeditems: u['bookmarked items'],
//       email: u['email'],
//       imageUrl: u['image url'],
//       loveditems: u['loved items'],
//       name: u['name'],
//       rId: u['rId'],
//       timestamp: u['timestamp'],
//       uid: u['uid'],
//     );
//   }
// }
