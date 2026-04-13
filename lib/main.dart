import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

void main() {
  runApp(MaterialApp(home: BookListScreen()));
}

class BookListScreen extends StatelessWidget {
  final List<Map<String, String>> books = [
    {
      'title': 'Ayat-ayat Api',
      'author': 'Sapardi Djoko Damono',
      'pdf': 'assets/books/Ayat-ayat api.pdf',
      'image': 'assets/images/Ayat-Ayat Api.jpeg',
      'description':
          'Sebuah kumpulan puisi yang mendalam dan penuh imajinasi dari sang maestro sastra Indonesia. Dalam buku ini, Sapardi mengeksplorasi tema-tema eksistensial, cinta, dan pengamatan tajam terhadap detail kehidupan sehari-hari dengan gaya bahasa yang sederhana namun sarat makna.',
    },
    {
      'title': 'Bumi',
      'author': 'Tere Liye',
      'pdf': 'assets/books/Bumi - Tere liye.pdf',
      'image': 'assets/images/Bumi.jpeg',
      'description':
          'Novel pertama dari seri petualangan dunia paralel. Mengisahkan tentang Raib, seorang remaja perempuan yang memiliki kemampuan unik untuk menghilang. Bersama dua temannya, Seli dan Ali, ia melakukan perjalanan ke dunia lain yang membuka rahasia besar tentang asal-usul kekuatannya.',
    },
    {
      'title': 'Kami (Bukan) Sarjana Kertas',
      'author': 'J.S. Khairen',
      'pdf': 'assets/books/Kami (Bukan) Sarjana Kertas - JS Kyren.pdf',
      'image': 'assets/images/Kami (Bukan) Sarjana Kertas.jpeg',
      'description':
          'Sebuah novel inspiratif sekaligus menyentil tentang dunia perkuliahan. Mengisahkan sekelompok mahasiswa di kampus yang dianggap "buangan". Cerita ini menyoroti perjuangan mereka untuk membuktikan bahwa nilai di atas kertas bukanlah satu-satunya penentu masa depan dan kesuksesan.',
    },
    {
      'title': 'Konspirasi Alam Semesta',
      'author': 'Fiersa Besari',
      'pdf': 'assets/books/Konspirasi alam semesta - fiersa besari.pdf',
      'image': 'assets/images/Konspirasi Alam Semesta.jpeg',
      'description':
          'Sebuah perpaduan antara novel dan album musik (albubook). Menceritakan tentang perjalanan Juang Astrajingga dan Ana Tiana yang dipertemukan oleh takdir. Buku ini mengeksplorasi bagaimana alam semesta bekerja melalui kebetulan-kebetulan yang membawa mereka pada pencarian makna diri dan cinta.',
    },
    {
      'title': 'MENJADI GURU SEKOLAH MINGGU',
      'author': 'Pdt. Paulus Lie',
      'pdf': 'assets/books/MENJADI GURU SEKOLAH MINGGU.pdf',
      'image': 'assets/images/Menjadi Guru Sekolah Minggu.jpeg',
      'description':
          'Buku panduan praktis bagi para pelayan gereja, khususnya guru Sekolah Minggu. Di dalamnya dibahas mengenai persiapan mental, teknik mengajar anak-anak, hingga pemahaman teologis dasar agar pengajaran di kelas menjadi lebih menarik dan tepat sasaran.',
    },
    {
      'title': 'Muda Mendunia',
      'author': 'Rhenald Kasali',
      'pdf': 'assets/books/Muda mendunia.pdf',
      'image': 'assets/images/Muda Mendunia.jpeg',
      'description':
          'Sebuah buku motivasi yang mendorong generasi muda untuk memiliki wawasan global. Rhenald Kasali menekankan pentingnya keluar dari zona nyaman, membangun jejaring internasional, dan memiliki mentalitas pemenang agar mampu bersaing di kancah dunia.',
    },
    {
      'title': 'Negeri di Ujung Tanduk',
      'author': 'Tere Liye',
      'pdf': 'assets/books/Negeri di ujung tanduk - tere liye.pdf',
      'image': 'assets/images/Negeri Diujung Tanduk.jpeg',
      'description':
          'Sekuel dari novel Negeri Para Bedebah. Thomas, sang konsultan keuangan ternama, terjebak dalam intrik politik dan konspirasi tingkat tinggi yang mengancam nyawanya. Novel ini penuh dengan aksi cepat dan kritik sosial mengenai kondisi hukum dan kekuasaan di sebuah negara.',
    },
    {
      'title': 'Bulan',
      'author': 'Tere Liye',
      'pdf': 'assets/books/Tere Liye - Bulan.pdf',
      'image': 'assets/images/Bulan.jpeg',
      'description':
          'Buku kedua dalam seri Bumi. Raib, Seli, dan Ali melanjutkan petualangan mereka ke Klan Matahari. Di sana, mereka harus mengikuti kompetisi tahunan yang berbahaya di tengah hutan yang penuh kejutan, sambil terus mengasah kekuatan masing-masing.',
    },
    {
      'title': 'Tentang Kamu',
      'author': 'Tere Liye',
      'pdf': 'assets/books/Tere liye - tentang kamu.pdf',
      'image': 'assets/images/Tentang kamu.jpeg',
      'description':
          'Mengisahkan perjalanan Zaman Zulkarnaen, seorang pengacara muda yang harus menelusuri jejak kehidupan seorang perempuan bernama Sri Ningsih untuk menyelesaikan warisannya yang luar biasa besar. Sebuah kisah epik tentang kesabaran, cinta, dan keteguhan hati melintasi berbagai benua.',
    },
    {
      'title': 'Matahari',
      'author': 'Tere Liye',
      'pdf': 'assets/books/Tere Liye - Matahari.pdf',
      'image': 'assets/images/Matahari.jpeg',
      'description':
          'Buku ketiga dalam seri Bumi. Setelah petualangan di Klan Matahari, Ali yang jenius berhasil menciptakan kapal canggih untuk membawa mereka menuju Klan Bintang. Di sana, mereka menemukan rahasia kuno yang mengancam keselamatan seluruh dunia paralel.',
    },
    {
      'title': 'Yang Fana Adalah Waktu',
      'author': 'Sapardi Djoko Damono',
      'pdf': 'assets/books/Yang fana adalah waktu.pdf',
      'image': 'assets/images/Yang Fana Adalah Waktu.png',
      'description':
          'Buku penutup dari trilogi Hujan Bulan Juni. Novel ini merangkum perjalanan cinta Sarwono dan Pingkan yang rumit karena perbedaan budaya dan kesehatan. Dengan gaya bahasa puitis, Sapardi merenungkan bagaimana perasaan tetap abadi meskipun waktu terus berlalu.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Book List')),
      body: ListView.builder(
        itemCount: books.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                books[index]['image']!,
                width: 50,
                height: 75,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    width: 50,
                    height: 75,
                    color: Colors.grey[300],
                    child: Icon(Icons.book, color: Colors.grey[600]),
                  );
                },
              ),
            ),
            title: Text(books[index]['title']!),
            subtitle: Text(books[index]['author']!),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BookDetailScreen(
                    title: books[index]['title']!,
                    author: books[index]['author']!,
                    description: books[index]['description']!,
                    pdfAsset: books[index]['pdf']!,
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class BookDetailScreen extends StatelessWidget {
  final String title;
  final String author;
  final String description;
  final String pdfAsset;

  BookDetailScreen({
    required this.title,
    required this.author,
    required this.description,
    required this.pdfAsset,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Title: $title',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'Author: $author',
              style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic),
            ),
            SizedBox(height: 12),
            Text(
              'Description:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 6),
            Text(description, style: TextStyle(fontSize: 16)),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Back'),
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ReadingBookFile(pdfAsset: pdfAsset),
                  ),
                );
              },
              child: Text('Read the book'),
            ),
          ],
        ),
      ),
    );
  }
}

class ReadingBookFile extends StatelessWidget {
  final String pdfAsset;
  final GlobalKey<SfPdfViewerState> _pdfViewerKey = GlobalKey();

  ReadingBookFile({super.key, required this.pdfAsset});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reading Book'),
        actions: [
          IconButton(
            icon: const Icon(Icons.bookmark),
            onPressed: () {
              _pdfViewerKey.currentState?.openBookmarkView();
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SfPdfViewer.asset(
          key: _pdfViewerKey,
          pdfAsset,

          enableTextSelection: true,
          scrollDirection: PdfScrollDirection.vertical,
          canShowPaginationDialog: true,
        ),
      ),
    );
  }
}
