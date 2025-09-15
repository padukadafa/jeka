# JeKa - Community Management App

JeKa adalah aplikasi manajemen komunitas yang dirancang untuk membantu pengguna menemukan, bergabung, dan mengelola komunitas sesuai dengan minat mereka. Aplikasi ini dikembangkan menggunakan Flutter dan Firebase untuk memberikan pengalaman yang lancar dalam berinteraksi dan berkolaborasi dalam komunitas.

## 📱 Fitur Utama

### 🔐 Autentikasi & Manajemen Pengguna

- **Login & Register**: Sistem autentikasi dengan email/password
- **Google Sign-In**: Login cepat menggunakan akun Google
- **Profile Management**: Kelola profil pengguna dengan foto dan informasi pribadi
- **Settings**: Pengaturan notifikasi, bahasa, tema, dan privasi

### 🏘️ Manajemen Komunitas

- **Pencarian Komunitas**: Cari komunitas berdasarkan minat, lokasi, dan kategori
- **Bergabung & Keluar**: Join atau leave komunitas dengan mudah
- **Buat Komunitas**: Buat komunitas baru dengan deskripsi, logo, dan aturan
- **Detail Komunitas**: Lihat informasi lengkap, member, dan aktivitas komunitas
- **Kategori Komunitas**: Organisasi komunitas berdasarkan tipe dan lokasi

### 💬 Chat & Komunikasi

- **Chat Komunitas**: Sistem chat real-time untuk setiap komunitas
- **Search Messages**: Pencarian pesan dalam riwayat chat
- **Notifikasi**: Notifikasi push untuk pesan baru dan aktivitas komunitas
- **Share Content**: Bagikan konten dan file dalam komunitas

### 📝 Content Management

- **Rich Text Editor**: Editor konten dengan support Markdown dan HTML
- **AI Writing Assistant**: Integrasi Google Gemini AI untuk membantu menulis konten
- **Image Support**: Upload dan share gambar dalam postingan
- **File Sharing**: Berbagi berbagai jenis file dengan anggota komunitas

### 🔔 Notifikasi & Pengaturan

- **Push Notifications**: Notifikasi real-time untuk aktivitas penting
- **Notification Settings**: Kontrol detail untuk jenis notifikasi
- **Multi-language**: Dukungan bahasa Indonesia dan Inggris
- **Dark/Light Theme**: Tema yang dapat disesuaikan

## 🛠️ Teknologi yang Digunakan

### Frontend

- **Flutter 3.4+**: Framework UI cross-platform
- **Dart**: Bahasa pemrograman utama
- **Auto Route**: Navigasi dan routing
- **BLoC Pattern**: State management dengan flutter_bloc
- **GetIt**: Dependency injection

### Backend & Database

- **Firebase Authentication**: Sistem autentikasi
- **Cloud Firestore**: Database NoSQL real-time
- **Firebase Storage**: Penyimpanan file dan gambar
- **Firebase Messaging**: Push notifications
- **Firebase Functions**: Server-side logic

### AI & Machine Learning

- **Google Gemini AI**: AI generatif untuk bantuan penulisan konten
- **Google Generative AI SDK**: Integrasi AI dalam aplikasi

### Libraries & Packages

- **flutter_quill**: Rich text editor
- **appflowy_editor**: Advanced text editing
- **cached_network_image**: Optimasi loading gambar
- **file_picker**: Pemilihan file
- **image_picker**: Pengambilan foto/gambar
- **shared_preferences**: Local storage
- **floor**: Local database (SQLite)

## 📁 Struktur Proyek

```
lib/
├── core/                 # Core utilities & configurations
│   ├── constants.dart    # App constants
│   ├── router/          # App routing
│   └── theme/           # App themes
├── features/            # Feature modules
│   ├── auth/           # Authentication
│   ├── chat/           # Chat functionality
│   ├── community/      # Community management
│   ├── notification/   # Notifications
│   ├── search/         # Search functionality
│   ├── settings/       # App settings
│   └── user/           # User management
├── common/             # Shared widgets & models
│   ├── widgets/        # Reusable UI components
│   └── models/         # Shared data models
├── services/           # External services
└── utils/              # Utility functions
```

## 🚀 Instalasi & Setup

### Prerequisites

- Flutter SDK 3.4.0 atau lebih baru
- Dart SDK
- Android Studio / VS Code
- Firebase account

### Langkah Instalasi

1. **Clone repository**

   ```bash
   git clone https://github.com/padukadafa/jeka.git
   cd jeka
   ```

2. **Install dependencies**

   ```bash
   flutter pub get
   ```

3. **Firebase Setup**

   - Buat project baru di [Firebase Console](https://console.firebase.google.com)
   - Enable Authentication, Firestore, Storage, dan Messaging
   - Download `google-services.json` untuk Android
   - Download `GoogleService-Info.plist` untuk iOS

4. **Code Generation**

   ```bash
   flutter packages pub run build_runner build
   ```

5. **Run aplikasi**
   ```bash
   flutter run
   ```

## 🔧 Konfigurasi

### Firebase Configuration

1. Ganti `firebase_options.dart` dengan konfigurasi project Firebase Anda
2. Update `google-services.json` di folder `android/app/`
3. Untuk iOS, tambahkan `GoogleService-Info.plist` di folder `ios/Runner/`

### API Keys

- **Gemini AI**: Update `GEMINI_API_KEY` di `core/constants.dart`
- **Google Sign-In**: Konfigurasi di Firebase Console

## 📱 Platform Support

- ✅ **Android** (API level 21+)
- ✅ **iOS** (iOS 12.0+)
- ✅ **Web** (Beta)
- ⏳ **Windows** (Dalam pengembangan)
- ⏳ **macOS** (Dalam pengembangan)
- ⏳ **Linux** (Dalam pengembangan)

## 🧪 Testing

```bash
# Run unit tests
flutter test

# Run integration tests
flutter test integration_test/
```

## 📦 Build & Deploy

### Android

```bash
flutter build apk --release
# atau
flutter build appbundle --release
```

### iOS

```bash
flutter build ios --release
```

### Web

```bash
flutter build web --release
```

## 🤝 Kontribusi

Kami menyambut kontribusi dari developer lain! Silakan:

1. Fork repository ini
2. Buat branch untuk fitur baru (`git checkout -b feature/AmazingFeature`)
3. Commit perubahan (`git commit -m 'Add some AmazingFeature'`)
4. Push ke branch (`git push origin feature/AmazingFeature`)
5. Buat Pull Request

## 📄 Lisensi

Project ini menggunakan lisensi MIT. Lihat file `LICENSE` untuk detail lebih lanjut.

## 👥 Tim Pengembang

- **Lead Developer**: [padukadafa](https://github.com/padukadafa)

## 📞 Kontak & Dukungan

- **GitHub Issues**: [Laporkan Bug](https://github.com/padukadafa/jeka/issues)
- **Email**: danielferryalzuhri@gmail.com
- **Documentation**: [Wiki](https://github.com/padukadafa/jeka/wiki)

## 🗺️ Roadmap

- [ ] **v1.1**: Fitur event & meetup komunitas
- [ ] **v1.2**: Integrasi video call untuk komunitas
- [ ] **v1.3**: Sistem reward & gamifikasi
- [ ] **v2.0**: Marketplace untuk komunitas
- [ ] **v2.1**: Advanced analytics & insights

## 📊 Stats

![Flutter Version](https://img.shields.io/badge/Flutter-3.4.0+-blue)
![Dart Version](https://img.shields.io/badge/Dart-3.0+-blue)
![Firebase](https://img.shields.io/badge/Firebase-Enabled-orange)
![Platform](https://img.shields.io/badge/Platform-Android%20|%20iOS%20|%20Web-green)

---

**JeKa** - _Connecting Communities, Building Together_ 🌟
