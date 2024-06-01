class MusicInfo {
  MusicInfo({required this.isOn, required this.currentSong});

  final bool isOn;
  final Song currentSong;
}

class Song {
  const Song(this.title, this.artist, this.thumbUrl);

  final String title;
  final String artist;
  final String thumbUrl;

  static const Song defaultSong = Song(
    'I wanna be your slave',
    'MANESKIN',
    'https://i1.sndcdn.com/artworks-1FUlzqSq0hnQoRMn-sWeyfQ-t1080x1080.jpg',
  );
}
