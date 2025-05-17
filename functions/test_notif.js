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
sendNotificationToDevices(
  [
    "dxNu0uoaQaagfnQfAnrQCG:APA91bHgXHDp8bPiFWeI9vd2nBgXmU1hzEcUbuP7cB69XWgbv20IenjEY_WMSvBgwYKiWn3ArZdpFmwpZ6SQPlPsRCVKjrhu1yhsDtb30KcXmEUuN6x3HnYs", // ganti jadi fcmToken user
  ],
  "test",
  "ini testing"
);
