const functions = require("firebase-functions");
const admin = require("firebase-admin");
admin.initializeApp();

exports.sendChatNotification = functions.firestore
  .document("chats/{messageId}")
  .onCreate(async (snap, context) => {
    const messageData = snap.data();
    const senderId = messageData.sender.id;
    const senderName = messageData.sender.name;
    const communityId = messageData.communityId;

    // Ambil FCM token penerima
    const receiverDoc = await admin
      .firestore()
      .collection("communities")
      .doc(communityId)
      .get();
    if (!doc.exists) {
      console.log("Community not found");
      return null;
    }
    const communityData = receiverDoc.data();
    const payload = {
      notification: {
        title: `Pesan baru dari ${senderName}`,
        body: messageData.content,
        sound: "default",
      },
      data: {
        chatId: context.params.chatId,
        senderId: senderId,
      },
      token: fcmToken,
    };
    const members = communityData.members || [];
    for (const member of members) {
      if (!member.fcmToken) {
        continue;
      }
      if (member.id === senderId) {
        continue;
      }
      payload.data.senderId = member.fcmToken;

      try {
        await admin.messaging().send(payload);
        console.log("Notification sent to", receiverId);
      } catch (error) {
        console.error("Error sending notification:", error);
      }
    }

    return null;
  });
