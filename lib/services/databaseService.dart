import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:lifer_app/models/bloodRequest.dart';
import 'package:lifer_app/models/campaign.dart';

class DatabaseService {
  final firebase = FirebaseFirestore.instance;
  final String campaignCollection = "Campaigns";
  final String bloodRequestCollection = "BloodRequests";

  Future<bool> postCampaign(Campaign campaign) async {
    try {
      await firebase.collection(campaignCollection).add(campaign.toMap());
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }

  Future<bool> requestBoold(BloodRequest request) async {
    try {
      await firebase.collection(bloodRequestCollection).add(request.toMap());
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }

  Future<bool> editPostCampaign(Campaign campaign, String id) async {
    try {
      var doc = await firebase.collection(campaignCollection).doc(id).get();
      var oldCampaign = Campaign.fromMap(doc.data());
      if (oldCampaign.nic != campaign.nic) return false;
      await firebase
          .collection(campaignCollection)
          .doc(id)
          .update(campaign.toMap());
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }

  Future<bool> deletePostCampaign(Campaign campaign, String id) async {
    try {
      var doc = await firebase.collection(campaignCollection).doc(id).get();
      var oldCampaign = Campaign.fromMap(doc.data());
      if (oldCampaign.nic != campaign.nic) return false;
      await firebase.collection(campaignCollection).doc(id).delete();
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }

  Future<bool> editRequestBoold(BloodRequest request, String id) async {
    try {
      var doc = await firebase.collection(bloodRequestCollection).doc(id).get();
      var oldRequest = BloodRequest.fromMap(doc.data());
      if (oldRequest.nic != request.nic) return false;
      await firebase
          .collection(bloodRequestCollection)
          .doc(id)
          .update(request.toMap());
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }

  Future<bool> deleteBloodRequest(BloodRequest request, String id) async {
    try {
      var doc = await firebase.collection(bloodRequestCollection).doc(id).get();
      var oldRequest = BloodRequest.fromMap(doc.data());
      if (oldRequest.nic != request.nic) return false;
      await firebase.collection(bloodRequestCollection).doc(id).delete();
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }

  Future<BloodRequest> getBloodRequest(String id) async {
    try {
      var doc = await firebase.collection(bloodRequestCollection).doc(id).get();
      return BloodRequest.fromMap(doc.data());
    } catch (e) {
      print(e);
      return null;
    }
  }

  Future<Campaign> getCampaign(String id) async {
    try {
      var doc = await firebase.collection(campaignCollection).doc(id).get();
      return Campaign.fromMap(doc.data());
    } catch (e) {
      print(e);
      return null;
    }
  }

  Stream<List<Campaign>> get getAllCampaigns {
    try {
      return firebase
          .collection(campaignCollection)
          .snapshots()
          .map((event) => event.docs.map((e) {
                var data = e.data();
                data['id'] = e.id;
                return Campaign.fromMap(data);
              }).toList());
    } catch (e) {
      print(e);
      return null;
    }
  }

  Stream<List<BloodRequest>> get getAllBloodRequests {
    try {
      return firebase
          .collection(bloodRequestCollection)
          .snapshots()
          .map((event) => event.docs.map((e) {
                var data = e.data();
                data['id'] = e.id;
                return BloodRequest.fromMap(data);
              }).toList());
    } catch (e) {
      print(e);
      return null;
    }
  }
}
