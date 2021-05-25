.class public final Lcom/vivo/PCTools/k/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/vivo/PCTools/k/c;


# direct methods
.method public constructor <init>(Lcom/vivo/PCTools/k/b;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ImageService"

    const-string v1, "ImageService"

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/k/b;->getmContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/PCTools/k/a;->a:Landroid/content/Context;

    new-instance v0, Lcom/vivo/PCTools/k/c;

    iget-object v1, p0, Lcom/vivo/PCTools/k/a;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/vivo/PCTools/k/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vivo/PCTools/k/a;->b:Lcom/vivo/PCTools/k/c;

    return-void
.end method

.method public static InsertToMediaDb(Ljava/lang/String;Landroid/content/Context;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "_data=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void
.end method

.method private a(Lcom/vivo/PCTools/q/a/a;)Lcom/vivo/PCTools/q/a/a;
    .locals 6

    const/4 v5, 0x0

    const-string v0, "ImageService"

    const-string v1, "ImageService----------------------------------------------------setWallpaper---In"

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/vivo/PCTools/q/a/a;

    invoke-direct {v0}, Lcom/vivo/PCTools/q/a/a;-><init>()V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getVersionShort()S

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/q/a/a;->setVersion(S)V

    invoke-virtual {v0, v5}, Lcom/vivo/PCTools/q/a/a;->setHeadLength(S)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getMegIdInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/q/a/a;->setMegId(I)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getModuleShort()S

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/q/a/a;->setModule(S)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getCmd()B

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getRelyCode()B

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    invoke-virtual {v0, v5}, Lcom/vivo/PCTools/q/a/a;->setBodyLength(I)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getBodyLength()I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getBody()[B

    move-result-object v2

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getBodyLength()I

    move-result v3

    invoke-static {v2, v5, v1, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v2, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getBodyLength()I

    move-result v3

    const-string v4, "utf-8"

    invoke-direct {v2, v1, v5, v3, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iget-object v1, p0, Lcom/vivo/PCTools/k/a;->a:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/io/DataInputStream;

    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v3, Lcom/vivo/PCTools/k/d;

    invoke-direct {v3}, Lcom/vivo/PCTools/k/d;-><init>()V

    :try_start_0
    invoke-virtual {v3, v2}, Lcom/vivo/PCTools/k/d;->parseSetWallPaper(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ImageService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "-------------------------path == "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    iget-object v1, p0, Lcom/vivo/PCTools/k/a;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v1

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    throw v0

    :catch_1
    move-exception v1

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    goto :goto_0
.end method

.method private static a(Lcom/vivo/PCTools/q/a/a;Landroid/content/Context;)Lcom/vivo/PCTools/q/a/a;
    .locals 6

    const/4 v5, 0x0

    const-string v0, "ImageService"

    const-string v1, "ImageService-------deletephoto"

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/vivo/PCTools/q/a/a;

    invoke-direct {v0}, Lcom/vivo/PCTools/q/a/a;-><init>()V

    invoke-virtual {p0}, Lcom/vivo/PCTools/q/a/a;->getVersionShort()S

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/q/a/a;->setVersion(S)V

    invoke-virtual {p0}, Lcom/vivo/PCTools/q/a/a;->getMegIdInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/q/a/a;->setMegId(I)V

    invoke-virtual {p0}, Lcom/vivo/PCTools/q/a/a;->getModuleShort()S

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/q/a/a;->setModule(S)V

    invoke-virtual {p0}, Lcom/vivo/PCTools/q/a/a;->getCmd()B

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    invoke-virtual {p0}, Lcom/vivo/PCTools/q/a/a;->getRelyCode()B

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    invoke-virtual {p0}, Lcom/vivo/PCTools/q/a/a;->getAppend()[B

    move-result-object v1

    invoke-static {v1, v5}, Landroid/support/v4/media/session/MediaSessionCompat;->byteToInt([BI)I

    move-result v1

    :try_start_0
    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    int-to-long v3, v1

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v0, v5}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private b(Lcom/vivo/PCTools/q/a/a;)Lcom/vivo/PCTools/q/a/a;
    .locals 6

    const/4 v5, -0x1

    new-instance v1, Lcom/vivo/PCTools/q/a/a;

    invoke-direct {v1}, Lcom/vivo/PCTools/q/a/a;-><init>()V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getVersionShort()S

    move-result v0

    invoke-virtual {v1, v0}, Lcom/vivo/PCTools/q/a/a;->setVersion(S)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getHeadLengthShort()S

    move-result v0

    invoke-virtual {v1, v0}, Lcom/vivo/PCTools/q/a/a;->setHeadLength(S)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getMegIdInt()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/vivo/PCTools/q/a/a;->setMegId(I)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getModuleShort()S

    move-result v0

    invoke-virtual {v1, v0}, Lcom/vivo/PCTools/q/a/a;->setModule(S)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getCmd()B

    move-result v0

    invoke-virtual {v1, v0}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getRelyCode()B

    move-result v0

    invoke-virtual {v1, v0}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getAppend()[B

    move-result-object v0

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getHeadLengthShort()S

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/vivo/PCTools/q/a/a;->setAppend([BI)V

    :try_start_0
    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getAppend()[B

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/support/v4/media/session/MediaSessionCompat;->byteToInt([BI)I

    move-result v0

    const-string v2, "ImageService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "sendVideoThumbnail-----------------------------------------------------imageId"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    iget-object v3, p0, Lcom/vivo/PCTools/k/a;->b:Lcom/vivo/PCTools/k/c;

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getMegIdInt()I

    move-result v4

    invoke-virtual {v3, v2, v4, v0}, Lcom/vivo/PCTools/k/c;->addImageThumbnail([Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ImageService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " fileName = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    aget-object v4, v2, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "====file Length==="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v4, v2, v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    invoke-virtual {v1, v0}, Lcom/vivo/PCTools/q/a/a;->setBodyLength(I)V

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1, v0, v2}, Lcom/vivo/PCTools/q/a/a;->setBody([BI)V

    :goto_0
    return-object v1

    :cond_0
    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    throw v0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {v1, v5}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    goto :goto_0
.end method

.method private c(Lcom/vivo/PCTools/q/a/a;)Lcom/vivo/PCTools/q/a/a;
    .locals 6

    const/4 v5, -0x1

    const-string v0, "ImageService"

    const-string v1, "ImageService----------------------------------------------------sendAllImage and thumbnailsInfo---In"

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/vivo/PCTools/q/a/a;

    invoke-direct {v1}, Lcom/vivo/PCTools/q/a/a;-><init>()V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getVersionShort()S

    move-result v0

    invoke-virtual {v1, v0}, Lcom/vivo/PCTools/q/a/a;->setVersion(S)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getMegIdInt()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/vivo/PCTools/q/a/a;->setMegId(I)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getModuleShort()S

    move-result v0

    invoke-virtual {v1, v0}, Lcom/vivo/PCTools/q/a/a;->setModule(S)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getCmd()B

    move-result v0

    invoke-virtual {v1, v0}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getRelyCode()B

    move-result v0

    invoke-virtual {v1, v0}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    iget-object v2, p0, Lcom/vivo/PCTools/k/a;->b:Lcom/vivo/PCTools/k/c;

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getMegIdInt()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lcom/vivo/PCTools/k/c;->creatAllImageAndHhumbnailsInfoInfoXml([Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "ImageService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " fileName = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    aget-object v4, v0, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "====file Length==="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v4, v0, v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1, v2}, Lcom/vivo/PCTools/q/a/a;->setBodyLength(I)V

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x0

    aget-object v0, v0, v3

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    invoke-virtual {v1, v2, v0}, Lcom/vivo/PCTools/q/a/a;->setBody([BI)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    const-string v0, "ImageService"

    const-string v2, "ImageService----------------------------------------------------sendAllImage and thumbnailsInfo---Out"

    invoke-static {v0, v2}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    const/4 v0, -0x1

    :try_start_1
    invoke-virtual {v1, v0}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    throw v0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {v1, v5}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    goto :goto_0
.end method

.method private d(Lcom/vivo/PCTools/q/a/a;)Lcom/vivo/PCTools/q/a/a;
    .locals 6

    const/4 v5, -0x1

    const-string v0, "ImageService"

    const-string v1, "ImageService----------------------------------------------------sendAllImageInfo---In"

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/vivo/PCTools/q/a/a;

    invoke-direct {v1}, Lcom/vivo/PCTools/q/a/a;-><init>()V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getVersionShort()S

    move-result v0

    invoke-virtual {v1, v0}, Lcom/vivo/PCTools/q/a/a;->setVersion(S)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getMegIdInt()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/vivo/PCTools/q/a/a;->setMegId(I)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getModuleShort()S

    move-result v0

    invoke-virtual {v1, v0}, Lcom/vivo/PCTools/q/a/a;->setModule(S)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getCmd()B

    move-result v0

    invoke-virtual {v1, v0}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getRelyCode()B

    move-result v0

    invoke-virtual {v1, v0}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    iget-object v2, p0, Lcom/vivo/PCTools/k/a;->b:Lcom/vivo/PCTools/k/c;

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getMegIdInt()I

    move-result v3

    iget-object v4, p0, Lcom/vivo/PCTools/k/a;->a:Landroid/content/Context;

    invoke-virtual {v2, v0, v3, v4}, Lcom/vivo/PCTools/k/c;->creatAllImageInfoXml([Ljava/lang/String;ILandroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "ImageService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " fileName = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    aget-object v4, v0, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "====file Length==="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v4, v0, v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1, v2}, Lcom/vivo/PCTools/q/a/a;->setBodyLength(I)V

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x0

    aget-object v0, v0, v3

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    invoke-virtual {v1, v2, v0}, Lcom/vivo/PCTools/q/a/a;->setBody([BI)V

    :goto_0
    return-object v1

    :cond_0
    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    throw v0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {v1, v5}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    goto :goto_0
.end method

.method private e(Lcom/vivo/PCTools/q/a/a;)Lcom/vivo/PCTools/q/a/a;
    .locals 7

    const/4 v6, -0x1

    const-string v0, "ImageService"

    const-string v1, "ImageService----------------------------------------------------sendAllImageInfo---In"

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/vivo/PCTools/q/a/a;

    invoke-direct {v1}, Lcom/vivo/PCTools/q/a/a;-><init>()V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getVersionShort()S

    move-result v0

    invoke-virtual {v1, v0}, Lcom/vivo/PCTools/q/a/a;->setVersion(S)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getMegIdInt()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/vivo/PCTools/q/a/a;->setMegId(I)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getModuleShort()S

    move-result v0

    invoke-virtual {v1, v0}, Lcom/vivo/PCTools/q/a/a;->setModule(S)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getCmd()B

    move-result v0

    invoke-virtual {v1, v0}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getRelyCode()B

    move-result v0

    invoke-virtual {v1, v0}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getAppend()[B

    move-result-object v0

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    iget-object v3, p0, Lcom/vivo/PCTools/k/a;->b:Lcom/vivo/PCTools/k/c;

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getMegIdInt()I

    move-result v4

    iget-object v5, p0, Lcom/vivo/PCTools/k/a;->a:Landroid/content/Context;

    invoke-virtual {v3, v0, v4, v5, v2}, Lcom/vivo/PCTools/k/c;->creatSpecialImageInfoXml([Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "ImageService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " fileName = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    aget-object v4, v0, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "====file Length==="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v4, v0, v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1, v2}, Lcom/vivo/PCTools/q/a/a;->setBodyLength(I)V

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x0

    aget-object v0, v0, v3

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    invoke-virtual {v1, v2, v0}, Lcom/vivo/PCTools/q/a/a;->setBody([BI)V

    :goto_0
    return-object v1

    :cond_0
    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    throw v0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {v1, v6}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    goto :goto_0
.end method

.method public static removeThumbnails(Landroid/content/ContentResolver;J)V
    .locals 8

    const/4 v2, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v0, "ImageService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "removeThumbnails id= "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Landroid/provider/MediaStore$Images$Thumbnails;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v3, "image_id=?"

    new-array v4, v7, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    move-object v0, p0

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const-string v1, "_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const-string v3, "_data"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Landroid/provider/MediaStore$Images$Thumbnails;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v4, "_id=?"

    new-array v5, v7, [Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v6

    invoke-virtual {p0, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0
.end method


# virtual methods
.method public final imageDoProcess(Lcom/vivo/PCTools/q/a/a;)Lcom/vivo/PCTools/q/a/a;
    .locals 3

    const-string v0, "ImageService"

    const-string v1, "ImageService----------------------------------------------------imageDoProcess---In"

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getCmd()B

    move-result v1

    new-instance v0, Lcom/vivo/PCTools/q/a/a;

    invoke-direct {v0}, Lcom/vivo/PCTools/q/a/a;-><init>()V

    packed-switch v1, :pswitch_data_0

    :goto_0
    const-string v1, "ImageService"

    const-string v2, "ImageService----------------------------------------------------imageDoProcess---Out"

    invoke-static {v1, v2}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/vivo/PCTools/k/a;->c(Lcom/vivo/PCTools/q/a/a;)Lcom/vivo/PCTools/q/a/a;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/vivo/PCTools/k/a;->b(Lcom/vivo/PCTools/q/a/a;)Lcom/vivo/PCTools/q/a/a;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/vivo/PCTools/k/a;->a(Lcom/vivo/PCTools/q/a/a;)Lcom/vivo/PCTools/q/a/a;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, p1}, Lcom/vivo/PCTools/k/a;->d(Lcom/vivo/PCTools/q/a/a;)Lcom/vivo/PCTools/q/a/a;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    invoke-direct {p0, p1}, Lcom/vivo/PCTools/k/a;->e(Lcom/vivo/PCTools/q/a/a;)Lcom/vivo/PCTools/q/a/a;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/vivo/PCTools/k/a;->a:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/vivo/PCTools/k/a;->a(Lcom/vivo/PCTools/q/a/a;Landroid/content/Context;)Lcom/vivo/PCTools/q/a/a;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/vivo/PCTools/k/a;->a:Landroid/content/Context;

    invoke-virtual {p0, p1, v0}, Lcom/vivo/PCTools/k/a;->removeThmbailsById(Lcom/vivo/PCTools/q/a/a;Landroid/content/Context;)Lcom/vivo/PCTools/q/a/a;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public final removeThmbailsById(Lcom/vivo/PCTools/q/a/a;Landroid/content/Context;)Lcom/vivo/PCTools/q/a/a;
    .locals 6

    const/4 v5, 0x0

    const-string v0, "ImageService"

    const-string v1, "ImageService-------deletephoto"

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/vivo/PCTools/q/a/a;

    invoke-direct {v0}, Lcom/vivo/PCTools/q/a/a;-><init>()V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getVersionShort()S

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/q/a/a;->setVersion(S)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getMegIdInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/q/a/a;->setMegId(I)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getModuleShort()S

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/q/a/a;->setModule(S)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getCmd()B

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getRelyCode()B

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getAppend()[B

    move-result-object v1

    invoke-static {v1, v5}, Landroid/support/v4/media/session/MediaSessionCompat;->byteToInt([BI)I

    move-result v1

    :try_start_0
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    int-to-long v3, v1

    invoke-static {v2, v3, v4}, Lcom/vivo/PCTools/k/a;->removeThumbnails(Landroid/content/ContentResolver;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v0, v5}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method
