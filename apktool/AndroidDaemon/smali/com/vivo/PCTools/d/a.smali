.class public final Lcom/vivo/PCTools/d/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/util/HashMap;

.field private static b:Ljava/util/HashMap;

.field private static c:Ljava/util/HashMap;

.field private static d:Ljava/util/HashMap;

.field private static e:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/16 v8, 0x18f

    const v7, 0xb902

    const/16 v6, 0x300b

    const/16 v5, 0x6b

    const/16 v4, 0xc9

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/vivo/PCTools/d/a;->a:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/vivo/PCTools/d/a;->b:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/vivo/PCTools/d/a;->c:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/vivo/PCTools/d/a;->d:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/vivo/PCTools/d/a;->e:Ljava/util/HashMap;

    const-string v0, "MP3"

    const/16 v1, 0x65

    const-string v2, "audio/mpeg"

    const/16 v3, 0x3009

    invoke-static {v0, v1, v2, v3}, Lcom/vivo/PCTools/d/a;->a(Ljava/lang/String;ILjava/lang/String;I)V

    const-string v0, "M4A"

    const/16 v1, 0x66

    const-string v2, "audio/mp4"

    invoke-static {v0, v1, v2, v6}, Lcom/vivo/PCTools/d/a;->a(Ljava/lang/String;ILjava/lang/String;I)V

    const-string v0, "WAV"

    const/16 v1, 0x67

    const-string v2, "audio/x-wav"

    const/16 v3, 0x3008

    invoke-static {v0, v1, v2, v3}, Lcom/vivo/PCTools/d/a;->a(Ljava/lang/String;ILjava/lang/String;I)V

    const-string v0, "AMR"

    const/16 v1, 0x68

    const-string v2, "audio/amr"

    invoke-static {v0, v1, v2}, Lcom/vivo/PCTools/d/a;->a(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "AWB"

    const/16 v1, 0x69

    const-string v2, "audio/amr-wb"

    invoke-static {v0, v1, v2}, Lcom/vivo/PCTools/d/a;->a(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "3gp"

    const/16 v1, 0xc7

    const-string v2, "audio/3gpp"

    invoke-static {v0, v1, v2}, Lcom/vivo/PCTools/d/a;->a(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "3GPP"

    const/16 v1, 0xc7

    const-string v2, "audio/3gpp"

    const v3, 0xb984

    invoke-static {v0, v1, v2, v3}, Lcom/vivo/PCTools/d/a;->a(Ljava/lang/String;ILjava/lang/String;I)V

    const-string v0, "MP2"

    const/16 v1, 0xc5

    const-string v2, "audio/mpeg"

    invoke-static {v0, v1, v2}, Lcom/vivo/PCTools/d/a;->a(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "MOV"

    const/16 v1, 0xc2

    const-string v2, "audio/quicktime"

    invoke-static {v0, v1, v2}, Lcom/vivo/PCTools/d/a;->a(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "QT"

    const/16 v1, 0xc2

    const-string v2, "audio/quicktime"

    invoke-static {v0, v1, v2}, Lcom/vivo/PCTools/d/a;->a(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "WMA"

    const/16 v1, 0x6a

    const-string v2, "audio/x-ms-wma"

    const v3, 0xb901

    invoke-static {v0, v1, v2, v3}, Lcom/vivo/PCTools/d/a;->a(Ljava/lang/String;ILjava/lang/String;I)V

    const-string v0, "OGG"

    const-string v1, "audio/vorbis"

    invoke-static {v0, v5, v1, v7}, Lcom/vivo/PCTools/d/a;->a(Ljava/lang/String;ILjava/lang/String;I)V

    const-string v0, "OGG"

    const-string v1, "application/ogg"

    invoke-static {v0, v5, v1, v7}, Lcom/vivo/PCTools/d/a;->a(Ljava/lang/String;ILjava/lang/String;I)V

    const-string v0, "OGA"

    const-string v1, "application/ogg"

    invoke-static {v0, v5, v1, v7}, Lcom/vivo/PCTools/d/a;->a(Ljava/lang/String;ILjava/lang/String;I)V

    const-string v0, "OGV"

    const-string v1, "video/ogm"

    invoke-static {v0, v5, v1, v7}, Lcom/vivo/PCTools/d/a;->a(Ljava/lang/String;ILjava/lang/String;I)V

    const-string v0, "OGM"

    const-string v1, "video/ogm"

    invoke-static {v0, v5, v1, v7}, Lcom/vivo/PCTools/d/a;->a(Ljava/lang/String;ILjava/lang/String;I)V

    const-string v0, "AAC"

    const/16 v1, 0x6c

    const-string v2, "audio/aac"

    const v3, 0xb903

    invoke-static {v0, v1, v2, v3}, Lcom/vivo/PCTools/d/a;->a(Ljava/lang/String;ILjava/lang/String;I)V

    const-string v0, "AAC"

    const/16 v1, 0x6c

    const-string v2, "audio/aac-adts"

    const v3, 0xb903

    invoke-static {v0, v1, v2, v3}, Lcom/vivo/PCTools/d/a;->a(Ljava/lang/String;ILjava/lang/String;I)V

    const-string v0, "AAC"

    const/16 v1, 0x6c

    const-string v2, "audio/x-aac"

    invoke-static {v0, v1, v2}, Lcom/vivo/PCTools/d/a;->a(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "MKA"

    const/16 v1, 0x6d

    const-string v2, "audio/x-matroska"

    invoke-static {v0, v1, v2}, Lcom/vivo/PCTools/d/a;->a(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "MID"

    const-string v1, "audio/midi"

    invoke-static {v0, v4, v1}, Lcom/vivo/PCTools/d/a;->a(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "MIDI"

    const-string v1, "audio/midi"

    invoke-static {v0, v4, v1}, Lcom/vivo/PCTools/d/a;->a(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "XMF"

    const-string v1, "audio/midi"

    invoke-static {v0, v4, v1}, Lcom/vivo/PCTools/d/a;->a(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "RTTTL"

    const-string v1, "audio/midi"

    invoke-static {v0, v4, v1}, Lcom/vivo/PCTools/d/a;->a(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "SMF"

    const/16 v1, 0xca

    const-string v2, "audio/sp-midi"

    invoke-static {v0, v1, v2}, Lcom/vivo/PCTools/d/a;->a(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "IMY"

    const/16 v1, 0xcb

    const-string v2, "audio/imelody"

    invoke-static {v0, v1, v2}, Lcom/vivo/PCTools/d/a;->a(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "RTX"

    const-string v1, "audio/midi"

    invoke-static {v0, v4, v1}, Lcom/vivo/PCTools/d/a;->a(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "OTA"

    const-string v1, "audio/midi"

    invoke-static {v0, v4, v1}, Lcom/vivo/PCTools/d/a;->a(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "MXMF"

    const-string v1, "audio/midi"

    invoke-static {v0, v4, v1}, Lcom/vivo/PCTools/d/a;->a(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "MPEG"

    const/16 v1, 0x12d

    const-string v2, "video/mpeg"

    invoke-static {v0, v1, v2, v6}, Lcom/vivo/PCTools/d/a;->a(Ljava/lang/String;ILjava/lang/String;I)V

    const-string v0, "MPG"

    const/16 v1, 0x12d

    const-string v2, "video/mpeg"

    invoke-static {v0, v1, v2, v6}, Lcom/vivo/PCTools/d/a;->a(Ljava/lang/String;ILjava/lang/String;I)V

    const-string v0, "MP4"

    const/16 v1, 0x12d

    const-string v2, "video/mp4"

    invoke-static {v0, v1, v2, v6}, Lcom/vivo/PCTools/d/a;->a(Ljava/lang/String;ILjava/lang/String;I)V

    const-string v0, "M4V"

    const/16 v1, 0x12e

    const-string v2, "video/mp4"

    invoke-static {v0, v1, v2, v6}, Lcom/vivo/PCTools/d/a;->a(Ljava/lang/String;ILjava/lang/String;I)V

    const-string v0, "3GP"

    const/16 v1, 0x12f

    const-string v2, "video/3gpp"

    const v3, 0xb984

    invoke-static {v0, v1, v2, v3}, Lcom/vivo/PCTools/d/a;->a(Ljava/lang/String;ILjava/lang/String;I)V

    const-string v0, "3G2"

    const/16 v1, 0x130

    const-string v2, "video/3gpp2"

    const v3, 0xb984

    invoke-static {v0, v1, v2, v3}, Lcom/vivo/PCTools/d/a;->a(Ljava/lang/String;ILjava/lang/String;I)V

    const-string v0, "3GPP2"

    const/16 v1, 0x130

    const-string v2, "video/3gpp2"

    const v3, 0xb984

    invoke-static {v0, v1, v2, v3}, Lcom/vivo/PCTools/d/a;->a(Ljava/lang/String;ILjava/lang/String;I)V

    const-string v0, "MKV"

    const/16 v1, 0x133

    const-string v2, "video/x-matroska"

    invoke-static {v0, v1, v2}, Lcom/vivo/PCTools/d/a;->a(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "WEBM"

    const/16 v1, 0x136

    const-string v2, "video/webm"

    invoke-static {v0, v1, v2}, Lcom/vivo/PCTools/d/a;->a(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "TS"

    const/16 v1, 0x134

    const-string v2, "video/mp2ts"

    invoke-static {v0, v1, v2}, Lcom/vivo/PCTools/d/a;->a(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "AVI"

    const/16 v1, 0x135

    const-string v2, "video/avi"

    invoke-static {v0, v1, v2}, Lcom/vivo/PCTools/d/a;->a(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "MOV"

    const/16 v1, 0x18d

    const-string v2, "video/quicktime"

    invoke-static {v0, v1, v2}, Lcom/vivo/PCTools/d/a;->a(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "QT"

    const/16 v1, 0x18d

    const-string v2, "video/quicktime"

    invoke-static {v0, v1, v2}, Lcom/vivo/PCTools/d/a;->a(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "RMVB"

    const-string v1, "video/rmff"

    invoke-static {v0, v8, v1}, Lcom/vivo/PCTools/d/a;->a(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "RM"

    const-string v1, "video/rmff"

    invoke-static {v0, v8, v1}, Lcom/vivo/PCTools/d/a;->a(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "RAM"

    const-string v1, "video/rmff"

    invoke-static {v0, v8, v1}, Lcom/vivo/PCTools/d/a;->a(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "RV"

    const-string v1, "video/rmff"

    invoke-static {v0, v8, v1}, Lcom/vivo/PCTools/d/a;->a(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "RA"

    const/16 v1, 0xc6

    const-string v2, "audio/rmff"

    invoke-static {v0, v1, v2}, Lcom/vivo/PCTools/d/a;->a(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "FLV"

    const/16 v1, 0x18e

    const-string v2, "video/x-flv"

    invoke-static {v0, v1, v2}, Lcom/vivo/PCTools/d/a;->a(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "FLA"

    const/16 v1, 0xc4

    const-string v2, "audio/x-flv"

    invoke-static {v0, v1, v2}, Lcom/vivo/PCTools/d/a;->a(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "WMV"

    const/16 v1, 0x131

    const-string v2, "video/x-ms-wmv"

    const v3, 0xb981

    invoke-static {v0, v1, v2, v3}, Lcom/vivo/PCTools/d/a;->a(Ljava/lang/String;ILjava/lang/String;I)V

    const-string v0, "ASF"

    const/16 v1, 0x132

    const-string v2, "video/x-ms-asf"

    invoke-static {v0, v1, v2}, Lcom/vivo/PCTools/d/a;->a(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "JPG"

    const/16 v1, 0x191

    const-string v2, "image/jpeg"

    const/16 v3, 0x3801

    invoke-static {v0, v1, v2, v3}, Lcom/vivo/PCTools/d/a;->a(Ljava/lang/String;ILjava/lang/String;I)V

    const-string v0, "JPEG"

    const/16 v1, 0x191

    const-string v2, "image/jpeg"

    const/16 v3, 0x3801

    invoke-static {v0, v1, v2, v3}, Lcom/vivo/PCTools/d/a;->a(Ljava/lang/String;ILjava/lang/String;I)V

    const-string v0, "GIF"

    const/16 v1, 0x192

    const-string v2, "image/gif"

    const/16 v3, 0x3807

    invoke-static {v0, v1, v2, v3}, Lcom/vivo/PCTools/d/a;->a(Ljava/lang/String;ILjava/lang/String;I)V

    const-string v0, "PNG"

    const/16 v1, 0x193

    const-string v2, "image/png"

    const/16 v3, 0x380b

    invoke-static {v0, v1, v2, v3}, Lcom/vivo/PCTools/d/a;->a(Ljava/lang/String;ILjava/lang/String;I)V

    const-string v0, "BMP"

    const/16 v1, 0x194

    const-string v2, "image/x-ms-bmp"

    const/16 v3, 0x3804

    invoke-static {v0, v1, v2, v3}, Lcom/vivo/PCTools/d/a;->a(Ljava/lang/String;ILjava/lang/String;I)V

    const-string v0, "WBMP"

    const/16 v1, 0x195

    const-string v2, "image/vnd.wap.wbmp"

    invoke-static {v0, v1, v2}, Lcom/vivo/PCTools/d/a;->a(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "WEBP"

    const/16 v1, 0x196

    const-string v2, "image/webp"

    invoke-static {v0, v1, v2}, Lcom/vivo/PCTools/d/a;->a(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "MPO"

    const/16 v1, 0x197

    const-string v2, "image/mpo"

    invoke-static {v0, v1, v2}, Lcom/vivo/PCTools/d/a;->a(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "M3U"

    const/16 v1, 0x1f5

    const-string v2, "audio/x-mpegurl"

    const v3, 0xba11

    invoke-static {v0, v1, v2, v3}, Lcom/vivo/PCTools/d/a;->a(Ljava/lang/String;ILjava/lang/String;I)V

    const-string v0, "M3U"

    const/16 v1, 0x1f5

    const-string v2, "application/x-mpegurl"

    const v3, 0xba11

    invoke-static {v0, v1, v2, v3}, Lcom/vivo/PCTools/d/a;->a(Ljava/lang/String;ILjava/lang/String;I)V

    const-string v0, "PLS"

    const/16 v1, 0x1f6

    const-string v2, "audio/x-scpls"

    const v3, 0xba14

    invoke-static {v0, v1, v2, v3}, Lcom/vivo/PCTools/d/a;->a(Ljava/lang/String;ILjava/lang/String;I)V

    const-string v0, "WPL"

    const/16 v1, 0x1f7

    const-string v2, "application/vnd.ms-wpl"

    const v3, 0xba10

    invoke-static {v0, v1, v2, v3}, Lcom/vivo/PCTools/d/a;->a(Ljava/lang/String;ILjava/lang/String;I)V

    const-string v0, "M3U8"

    const/16 v1, 0x1f8

    const-string v2, "application/vnd.apple.mpegurl"

    invoke-static {v0, v1, v2}, Lcom/vivo/PCTools/d/a;->a(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "M3U8"

    const/16 v1, 0x1f8

    const-string v2, "audio/mpegurl"

    invoke-static {v0, v1, v2}, Lcom/vivo/PCTools/d/a;->a(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "M3U8"

    const/16 v1, 0x1f8

    const-string v2, "audio/x-mpegurl"

    invoke-static {v0, v1, v2}, Lcom/vivo/PCTools/d/a;->a(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "FL"

    const/16 v1, 0x259

    const-string v2, "application/x-android-drm-fl"

    invoke-static {v0, v1, v2}, Lcom/vivo/PCTools/d/a;->a(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "TXT"

    const/16 v1, 0x2bc

    const-string v2, "text/plain"

    const/16 v3, 0x3004

    invoke-static {v0, v1, v2, v3}, Lcom/vivo/PCTools/d/a;->a(Ljava/lang/String;ILjava/lang/String;I)V

    const-string v0, "HTM"

    const/16 v1, 0x2bd

    const-string v2, "text/html"

    const/16 v3, 0x3005

    invoke-static {v0, v1, v2, v3}, Lcom/vivo/PCTools/d/a;->a(Ljava/lang/String;ILjava/lang/String;I)V

    const-string v0, "HTML"

    const/16 v1, 0x2bd

    const-string v2, "text/html"

    const/16 v3, 0x3005

    invoke-static {v0, v1, v2, v3}, Lcom/vivo/PCTools/d/a;->a(Ljava/lang/String;ILjava/lang/String;I)V

    const-string v0, "PDF"

    const/16 v1, 0x2be

    const-string v2, "application/pdf"

    invoke-static {v0, v1, v2}, Lcom/vivo/PCTools/d/a;->a(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "DOC"

    const/16 v1, 0x2c0

    const-string v2, "application/msword"

    const v3, 0xba83

    invoke-static {v0, v1, v2, v3}, Lcom/vivo/PCTools/d/a;->a(Ljava/lang/String;ILjava/lang/String;I)V

    const-string v0, "XLS"

    const/16 v1, 0x2c1

    const-string v2, "application/vnd.ms-excel"

    const v3, 0xba85

    invoke-static {v0, v1, v2, v3}, Lcom/vivo/PCTools/d/a;->a(Ljava/lang/String;ILjava/lang/String;I)V

    const-string v0, "PPT"

    const/16 v1, 0x2c2

    const-string v2, "application/mspowerpoint"

    const v3, 0xba86

    invoke-static {v0, v1, v2, v3}, Lcom/vivo/PCTools/d/a;->a(Ljava/lang/String;ILjava/lang/String;I)V

    const-string v0, "FLAC"

    const/16 v1, 0x6e

    const-string v2, "audio/flac"

    const v3, 0xb906

    invoke-static {v0, v1, v2, v3}, Lcom/vivo/PCTools/d/a;->a(Ljava/lang/String;ILjava/lang/String;I)V

    const-string v0, "ZIP"

    const/16 v1, 0x2c3

    const-string v2, "application/zip"

    invoke-static {v0, v1, v2}, Lcom/vivo/PCTools/d/a;->a(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "MPG"

    const/16 v1, 0x320

    const-string v2, "video/mp2p"

    invoke-static {v0, v1, v2}, Lcom/vivo/PCTools/d/a;->a(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "MPEG"

    const/16 v1, 0x320

    const-string v2, "video/mp2p"

    invoke-static {v0, v1, v2}, Lcom/vivo/PCTools/d/a;->a(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/vivo/PCTools/d/a;->a:Ljava/util/HashMap;

    new-instance v1, Lcom/vivo/PCTools/d/b;

    invoke-direct {v1, p1, p2}, Lcom/vivo/PCTools/d/b;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/vivo/PCTools/d/a;->b:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static a(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 2

    invoke-static {p0, p1, p2}, Lcom/vivo/PCTools/d/a;->a(Ljava/lang/String;ILjava/lang/String;)V

    sget-object v0, Lcom/vivo/PCTools/d/a;->c:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/vivo/PCTools/d/a;->d:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/vivo/PCTools/d/a;->e:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static getFileTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-lez v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public static getFileType(Ljava/lang/String;)Lcom/vivo/PCTools/d/b;
    .locals 2

    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v1, Lcom/vivo/PCTools/d/a;->a:Ljava/util/HashMap;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/PCTools/d/b;

    goto :goto_0
.end method

.method public static getFileTypeBySuffix(Ljava/lang/String;)I
    .locals 1

    invoke-static {p0}, Lcom/vivo/PCTools/d/a;->getFileType(Ljava/lang/String;)Lcom/vivo/PCTools/d/b;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget v0, v0, Lcom/vivo/PCTools/d/b;->a:I

    goto :goto_0
.end method

.method public static getFileTypeForMimeType(Ljava/lang/String;)I
    .locals 1

    sget-object v0, Lcom/vivo/PCTools/d/a;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public static getFormatCode(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    if-eqz p1, :cond_0

    sget-object v0, Lcom/vivo/PCTools/d/a;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-lez v0, :cond_1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/vivo/PCTools/d/a;->c:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_1
    const/16 v0, 0x3000

    goto :goto_0
.end method

.method public static getMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    sget-object v2, Lcom/vivo/PCTools/d/a;->a:Ljava/util/HashMap;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/PCTools/d/b;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/vivo/PCTools/d/b;->b:Ljava/lang/String;

    :goto_1
    move-object v1, v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public static getMimeTypeBySuffix(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/vivo/PCTools/d/a;->getFileType(Ljava/lang/String;)Lcom/vivo/PCTools/d/b;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/vivo/PCTools/d/b;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getMimeTypeForFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/vivo/PCTools/d/a;->getFileType(Ljava/lang/String;)Lcom/vivo/PCTools/d/b;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/vivo/PCTools/d/b;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getMimeTypeForFormatCode(I)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/vivo/PCTools/d/a;->e:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static isAudioFileType(I)Z
    .locals 1

    const/16 v0, 0x65

    if-lt p0, v0, :cond_0

    const/16 v0, 0xc7

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0xc9

    if-lt p0, v0, :cond_1

    const/16 v0, 0xcb

    if-le p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isDrmFileType(I)Z
    .locals 1

    const/16 v0, 0x259

    if-lt p0, v0, :cond_0

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isImageFileType(I)Z
    .locals 1

    const/16 v0, 0x191

    if-lt p0, v0, :cond_0

    const/16 v0, 0x197

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMimeTypeMedia(Ljava/lang/String;)Z
    .locals 2

    invoke-static {p0}, Lcom/vivo/PCTools/d/a;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/vivo/PCTools/d/a;->isAudioFileType(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/vivo/PCTools/d/a;->isVideoFileType(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/vivo/PCTools/d/a;->isImageFileType(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/vivo/PCTools/d/a;->isPlayListFileType(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isPlayListFileType(I)Z
    .locals 1

    const/16 v0, 0x1f5

    if-lt p0, v0, :cond_0

    const/16 v0, 0x1f8

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVideoFileType(I)Z
    .locals 2

    const/16 v1, 0x320

    const/16 v0, 0x12d

    if-lt p0, v0, :cond_0

    const/16 v0, 0x18f

    if-le p0, v0, :cond_2

    :cond_0
    if-lt p0, v1, :cond_1

    if-le p0, v1, :cond_2

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method
