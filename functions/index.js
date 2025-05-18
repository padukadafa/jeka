const { initializeApp } = require("firebase/app");
const { getFirestore, collection, onSnapshot } = require("firebase/firestore");
const admin = require("firebase-admin");
const serviceAccount = require("./jeka-85742-firebase-adminsdk-c4cjp-e79aa708a0.json");
const firebaseConfig = {
  apiKey: "AIzaSyAC8A1xsgMeVHgbseEUXeiyzvLuD1lpyyA",
  authDomain: "jeka-85742.firebaseapp.com",
  projectId: "jeka-85742",
  storageBucket: "jeka-85742.appspot.com",
  messagingSenderId: "867130052345",
  appId: "1:867130052345:web:3d1fcea192dfee7650dc28",
  measurementId: "G-DZWB8X3FD4",
};
initializeApp(firebaseConfig);
const db = getFirestore();

admin.initializeApp({
  credential: admin.credential.cert(serviceAccount),
});
admin.firestore();
async function sendNotificationToDevices(tokens, title, body) {
  const message = {
    notification: {
      title: title,
      body: body,
    },
    tokens: tokens,
  };

  try {
    const response = await admin.messaging().sendEachForMulticast(message);
    console.log("Notifikasi berhasil dikirim:", response.successCount);
  } catch (error) {
    console.error("Gagal mengirim notifikasi:", error);
  }
}
const colRef = collection(db, "posts");
onSnapshot(colRef, (snapshot) => {
  snapshot.docChanges().forEach(async (change) => {
    const docId = change.doc.id;
    const data = change.doc.data();
    const community = await admin
      .firestore()
      .collection("communities")
      .doc(data.communityId)
      .get();
    const members = community.data().members;
    if (change.type === "added") {
      const tokens = [];
      for (const member of members) {
        const user = await admin
          .firestore()
          .collection("users")
          .doc(member.userId)
          .get();
        const token = user.data().fcmToken;

        if (
          tokens &&
          !tokens.includes(token) &&
          member.userId !== data.writerId
        ) {
          tokens.push(token);
        }
      }
      if (tokens.length > 0) {
        await sendNotificationToDevices(
          tokens,
          "Postingan Baru",
          `Ada postingan baru dari ${data.writer}: ${
            data.desc ? data.desc?.slice(0, 20) : ""
          }...`
        );
      }
    } else if (change.type === "modified") {
      console.log(`Dokumen diupdate: ${docId}`);
    } else if (change.type === "removed") {
      console.log(` Dokumen dihapus: ${docId}`);
    }
  });
});
