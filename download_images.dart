import 'dart:io';

void main() async {
  final dir = Directory('assets/images');
  if (!await dir.exists()) {
    await dir.create(recursive: true);
  }

  final urls = {
    'splash_bg.png': 'https://lh3.googleusercontent.com/aida-public/AB6AXuDKt7dflX5MkWZW-tKB2qNY7LZ2i2IImfBCk8pNnTYMHVbPpfZBS8JN6MHgaYxPDYW00bhfc50M7omfNN8PV-f_e7zrxaj11OiSU-RPQhiNd7UVXU5UX_7UCZzgU6zmVScWp3uwvbdOlvKfYYOv7qyQwo96DDDIqoKadliguqrEVL6s0nAOIJkAmBkEJUFu1HrEvM_ax1UsHsNcN1R3lh-buTgJapnnZvSTrwH3b7dwSzHONEz1YKF3LcluT9q2wdtgxnL2Jffh3iuU',
    'logo.png': 'https://lh3.googleusercontent.com/aida-public/AB6AXuBzHLMK1nhO_h1WwNBQCCCy7XJX5Sfr76P7UA8f0QM6gg33M6hnT1zrzN2wgfUlSAZqi30a4k7tiaadhxGzYAry8F3rGFJO4pPKbl49u-B6lgS80znTbkm3_leUEax6mZjgyGm5ZaMSMvUJUzeJ4QBEv7vZmPGopvMRNZmGMKHUOaBWUM6SG0EHfNRXV_RgnpwRIqQCcjPpXqfMKIElVWPy2ZY_Os31PJTekXWLI5e8jo_499gtDucX-LrIOxYPsxx_zS-gYRvC3H5v',
    'avatar.png': 'https://lh3.googleusercontent.com/aida-public/AB6AXuBbp-R8suWqVlhUYICQTyeeke6N4eHMy5K3N9fWB7TOgylmLdcLkdGFxvTSOKoJzUPAEN1du8-biRoy1azg4TSB5HgdmU2MxXHm7x5bUHpNuFK5RaEjwh3paThXX2-Cnytkc65VRrAAPtDxhcaWtpf0gdeyXvZ_8l8fS6-f4Vklwy1KOzWVadR9dQnuvoxtXhYiKvffxz8euLKaT2yv0ZhC-hZKEDGypixkRRS5MocO3a9bcMLO8B5MjDqc3wi7xAqMtHa3JAYiW-FP',
    'food1.png': 'https://lh3.googleusercontent.com/aida-public/AB6AXuDly_AaAuGultgzu5KylMQfsnBcHNGylVjFrPXTpUMtXALjsDtQQnPkuPvUpRN4_dQrtiMwCJ0tPgO2VCkS_nXJWwK6KL-T2rZPJ7gvBnh2hphXl5h7pU_lsKSnWyJLSff2lGW7laCt5PB3_y3TgtbsxUcKGOcjcxczt737Wv5_GndWp2i1v76jdr3ljJhTSvfMH-UJFWwVyT9EImEHO1nHXJ9lk0SOf7uvHHt7dHnRxSH7z_pA02o-pkPtp_p2zmzrXA05H-WF4Rg4',
    'food2.png': 'https://lh3.googleusercontent.com/aida-public/AB6AXuBwCbaKAYKJqBDWb7DAZhnskc1Yx_74GgDUBgoTcip1n2S27qRndGPFZO1MqrkAKtBNuJ2TS7jCdPwDnJvaUUyZLuiWN6wZqR0yCsE61VKmdkIlwmpXscW5vLTfbfu4I8seK592F9P9WZNmnr7U9XVBRImOGjLX5dNMfue0T4xMwoR7lo6hvcB-BMmGszrZYIxooF8pqgB-IXPSkCqEhgk_YRBrKAsLx__LbdT-U9pQCgSyqTnkkwNqzRdfmmBgueYXNoGGVscdLSMx',
  };

  final client = HttpClient();
  
  for (final entry in urls.entries) {
    try {
      final req = await client.getUrl(Uri.parse(entry.value));
      final res = await req.close();
      if (res.statusCode == 200) {
        final file = File('assets/images/${entry.key}');
        await res.pipe(file.openWrite());
        print('Downloaded ${entry.key}');
      } else {
        print('Failed to download ${entry.key}: ${res.statusCode}');
      }
    } catch (e) {
      print('Error downloading ${entry.key}: $e');
    }
  }
  
  client.close();
}
