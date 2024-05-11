# 悪魔城ドラキュラ 蒼月の十字架 No Required Touch Screen

このパッチは、北米版向けの [Castlevania: Dawn of Sorrow No Required Touch Screen (v1.1)](https://www.romhacking.net/hacks/3408/) を日本語ROM(md5: `b3868d4c5aef98b73f084bbaeeae39db`)用に移植したものです。

## ダウンロード

[こちら](https://github.com/akatsuki105/Sogetsu-No-Touch/releases)からパッチファイル`patch.ips`をダウンロードしてください。

パッチを当てた後のROMファイルの md5 は `fcc04bfea33d922e36f2b0f39c81c072` です。

## パッチの内容

Offset は .nds ファイルの先頭からのバイト数です。

```
IPS:
  Records:
    Record: { Offset: 0x00049E94, Data: 00 00 A0 E1 }
    Record: { Offset: 0x00049EA8, Data: 06 }
    Record: { Offset: 0x000C433C, Data: 00 40 2D E9 00 00 A0 E3 BC 3D 05 EB 00 40 BD E8 01 00 50 E3 04 00 00 0A 40 00 9F E5 00 00 D0 E5 01 00 50 E3 00 00 00 AA 53 4B 05 EA 0E 00 A0 E1 0C 10 A0 E1 04 20 A0 E1 D5 53 04 EB 01 00 56 E3 1C D0 8D 02 71 40 BD 08 1E FF 2F 01 01 60 A0 E3 1C 00 9D E5 9C 4A FD EB 0A 00 80 E2 1E 4B 05 EA 0E 74 0F 02 }
    Record: { Offset: 0x0011ED8C, Data: 00 }
    Record: { Offset: 0x0013FC70, Data: AB }
    Record: { Offset: 0x0013FF74, Data: 71 }
    Record: { Offset: 0x0013FF8C, Data: 71 }
    Record: { Offset: 0x0013FFA8, Data: 71 }
    Record: { Offset: 0x0013FFC4, Data: 71 }
    Record: { Offset: 0x0013FFF4, Data: 08 30 83 E2 }
    Record: { Offset: 0x00140054, Data: A0 B4 FA EA 1C D0 8D E2 71 }
    Record: { Offset: 0x00140DC4, Data: 01 00 A0 E3 }

  RLEs:
    なし
```
