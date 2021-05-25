.class public final Lcom/vivo/PCTools/i/c;
.super Ljava/lang/Object;


# static fields
.field public static a:I

.field public static b:I


# instance fields
.field private c:Landroid/content/Context;

.field private d:Lcom/vivo/PCTools/i/g;

.field private e:Lcom/vivo/PCTools/i/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x1e

    sput v0, Lcom/vivo/PCTools/i/c;->a:I

    const/16 v0, 0x64

    sput v0, Lcom/vivo/PCTools/i/c;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vivo/PCTools/i/c;->c:Landroid/content/Context;

    new-instance v0, Lcom/vivo/PCTools/i/g;

    invoke-direct {v0, p1}, Lcom/vivo/PCTools/i/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vivo/PCTools/i/c;->d:Lcom/vivo/PCTools/i/g;

    new-instance v0, Lcom/vivo/PCTools/i/e;

    iget-object v1, p0, Lcom/vivo/PCTools/i/c;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/vivo/PCTools/i/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vivo/PCTools/i/c;->e:Lcom/vivo/PCTools/i/e;

    return-void
.end method

.method public static HexString2Bytes(Ljava/lang/String;)[B
    .locals 5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v1, v0, [B

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    div-int/lit8 v3, v3, 0x2

    if-lt v0, v3, :cond_0

    return-object v1

    :cond_0
    shl-int/lit8 v3, v0, 0x1

    aget-byte v3, v2, v3

    shl-int/lit8 v4, v0, 0x1

    add-int/lit8 v4, v4, 0x1

    aget-byte v4, v2, v4

    invoke-static {v3, v4}, Lcom/vivo/PCTools/i/c;->uniteBytes(BB)B

    move-result v3

    aput-byte v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private a()I
    .locals 7

    const/4 v3, 0x0

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/vivo/PCTools/i/c;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_count"

    aput-object v4, v2, v6

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move v0, v6

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private a(Lcom/vivo/PCTools/q/a/a;)Lcom/vivo/PCTools/q/a/a;
    .locals 8

    const/4 v6, 0x0

    const/4 v0, 0x1

    const-string v1, "ContactsService"

    const-string v2, "sendContactsData"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd   hh:mm:ss"

    sget-object v5, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ContactsService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Now Begin to get contacts"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/vivo/PCTools/q/a/a;

    invoke-direct {v1}, Lcom/vivo/PCTools/q/a/a;-><init>()V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getVersionShort()S

    move-result v2

    invoke-virtual {v1, v2}, Lcom/vivo/PCTools/q/a/a;->setVersion(S)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getMegIdInt()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/vivo/PCTools/q/a/a;->setMegId(I)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getModuleShort()S

    move-result v2

    invoke-virtual {v1, v2}, Lcom/vivo/PCTools/q/a/a;->setModule(S)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getCmd()B

    move-result v2

    invoke-virtual {v1, v2}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getRelyCode()B

    move-result v2

    invoke-virtual {v1, v2}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    invoke-direct {p0}, Lcom/vivo/PCTools/i/c;->a()I

    move-result v2

    const/4 v1, 0x2

    new-array v1, v1, [B

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getRelyCode()B

    move-result v3

    aput-byte v3, v1, v0

    invoke-static {v1, v6}, Landroid/support/v4/media/session/MediaSessionCompat;->byteToShort([BI)S

    move-result v3

    const/4 v1, 0x0

    sget v4, Lcom/vivo/PCTools/i/c;->a:I

    if-gt v2, v4, :cond_1

    move v2, v0

    :cond_0
    :goto_0
    if-ne v3, v0, :cond_2

    :try_start_0
    const-string v0, "ContactsService"

    const-string v3, "pc request contacts first"

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/vivo/PCTools/i/c;->a(Lcom/vivo/PCTools/q/a/a;I)Lcom/vivo/PCTools/q/a/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    :try_start_1
    invoke-static {v2}, Landroid/support/v4/media/session/MediaSessionCompat;->intToByteArray(I)[B

    move-result-object v1

    const/4 v2, 0x3

    aget-byte v1, v1, v2

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    return-object v0

    :cond_1
    sget v4, Lcom/vivo/PCTools/i/c;->a:I

    sub-int v4, v2, v4

    sget v5, Lcom/vivo/PCTools/i/c;->b:I

    div-int/2addr v4, v5

    sget v5, Lcom/vivo/PCTools/i/c;->a:I

    sub-int/2addr v2, v5

    sget v5, Lcom/vivo/PCTools/i/c;->b:I

    rem-int v5, v2, v5

    add-int/lit8 v2, v4, 0x1

    if-lez v5, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :try_start_2
    invoke-direct {p0, p1, v3}, Lcom/vivo/PCTools/i/c;->a(Lcom/vivo/PCTools/q/a/a;I)Lcom/vivo/PCTools/q/a/a;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v0

    :try_start_3
    invoke-static {v2}, Landroid/support/v4/media/session/MediaSessionCompat;->intToByteArray(I)[B

    move-result-object v1

    const/4 v2, 0x3

    aget-byte v1, v1, v2

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    :goto_2
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v0, v1

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v7, v0

    move-object v0, v1

    move-object v1, v7

    goto :goto_2
.end method

.method private a(Lcom/vivo/PCTools/q/a/a;I)Lcom/vivo/PCTools/q/a/a;
    .locals 10

    const-string v0, "ContactsService"

    const-string v1, "sendContactsData"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd   hh:mm:ss"

    sget-object v4, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ContactsService"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Now Begin to get contacts"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Lcom/vivo/PCTools/q/a/a;

    invoke-direct {v3}, Lcom/vivo/PCTools/q/a/a;-><init>()V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getVersionShort()S

    move-result v4

    invoke-virtual {v3, v4}, Lcom/vivo/PCTools/q/a/a;->setVersion(S)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getMegIdInt()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/vivo/PCTools/q/a/a;->setMegId(I)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getModuleShort()S

    move-result v4

    invoke-virtual {v3, v4}, Lcom/vivo/PCTools/q/a/a;->setModule(S)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getCmd()B

    move-result v4

    invoke-virtual {v3, v4}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getRelyCode()B

    move-result v4

    invoke-virtual {v3, v4}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    const/4 v4, 0x1

    :try_start_0
    new-array v4, v4, [Ljava/lang/String;

    iget-object v5, p0, Lcom/vivo/PCTools/i/c;->d:Lcom/vivo/PCTools/i/g;

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getMegIdInt()I

    move-result v6

    invoke-virtual {v5, v4, v6, p2}, Lcom/vivo/PCTools/i/g;->createNContactsXmlFile([Ljava/lang/String;II)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "ContactsService"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, " fileName = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    aget-object v7, v4, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/io/File;

    const/4 v6, 0x0

    aget-object v6, v4, v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    long-to-int v6, v6

    const-string v7, "ContactsService"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, " fileLength = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x4

    invoke-virtual {v3, v7}, Lcom/vivo/PCTools/q/a/a;->setHeadLength(S)V

    const/4 v7, 0x4

    new-array v7, v7, [B

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/support/v4/media/session/MediaSessionCompat;->intToByte(I[BI)V

    const/4 v6, 0x4

    invoke-virtual {v3, v7, v6}, Lcom/vivo/PCTools/q/a/a;->setAppend([BI)V

    iget-object v6, p0, Lcom/vivo/PCTools/i/c;->d:Lcom/vivo/PCTools/i/g;

    const/4 v7, 0x0

    aget-object v7, v4, v7

    invoke-virtual {v6, v7}, Lcom/vivo/PCTools/i/g;->addBitmap(Ljava/lang/String;)V

    const-string v6, "ContactsService"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "bodyLength="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x0

    aget-object v4, v4, v8

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    array-length v5, v5

    invoke-virtual {v3, v5}, Lcom/vivo/PCTools/q/a/a;->setBodyLength(I)V

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    invoke-virtual {v3, v5, v4}, Lcom/vivo/PCTools/q/a/a;->setBody([BI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v6, "ContactsService"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Now Send Contacts to Socket"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "ContactsService"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "get contacts to send cost time"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v0, v4, v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :catch_0
    move-exception v0

    const-string v1, "ContactsService"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw v0
.end method

.method private b(Lcom/vivo/PCTools/q/a/a;)Lcom/vivo/PCTools/q/a/a;
    .locals 7

    const-string v0, "ContactsService"

    const-string v1, "sendGroupInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

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

    iget-object v2, p0, Lcom/vivo/PCTools/i/c;->d:Lcom/vivo/PCTools/i/g;

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getMegIdInt()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lcom/vivo/PCTools/i/g;->createGroupsXmlFile([Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "ContactsService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " fileName = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    aget-object v4, v0, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/io/File;

    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v3

    long-to-int v3, v3

    const-string v4, "ContactsService"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " fileLength = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Lcom/vivo/PCTools/q/a/a;->setHeadLength(S)V

    const/4 v4, 0x4

    new-array v4, v4, [B

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/support/v4/media/session/MediaSessionCompat;->intToByte(I[BI)V

    const/4 v3, 0x4

    invoke-virtual {v1, v4, v3}, Lcom/vivo/PCTools/q/a/a;->setAppend([BI)V

    iget-object v3, p0, Lcom/vivo/PCTools/i/c;->d:Lcom/vivo/PCTools/i/g;

    const/4 v4, 0x0

    aget-object v4, v0, v4

    invoke-virtual {v3, v4}, Lcom/vivo/PCTools/i/g;->addBitmap(Ljava/lang/String;)V

    const-string v3, "ContactsService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "bodyLength="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    aget-object v0, v0, v5

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1, v2}, Lcom/vivo/PCTools/q/a/a;->setBodyLength(I)V

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    invoke-virtual {v1, v2, v0}, Lcom/vivo/PCTools/q/a/a;->setBody([BI)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    throw v0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private b()V
    .locals 13

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const-string v0, "ContactsService"

    const-string v1, "deleteAllContactsData"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/PCTools/i/c;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v2, v4

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "_id"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-gtz v1, :cond_2

    :cond_0
    const-string v0, "ContactsService"

    const-string v1, "createContactsXmlFile.cursor is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    if-eqz v2, :cond_9

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_9

    :try_start_0
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v2, :cond_9

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :goto_2
    if-eqz v3, :cond_1

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :try_start_1
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v11, v1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "contact_id="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v5, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x1

    new-array v6, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "_id"

    aput-object v4, v6, v1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_4

    const/4 v4, -0x1

    invoke-interface {v1, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    :goto_3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_7

    :cond_4
    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v4, "caller_is_syncadapter"

    const-string v5, "true"

    invoke-virtual {v1, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v7, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v11, v12}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    const/16 v4, 0x73

    if-lt v1, v4, :cond_6

    :try_start_2
    const-string v1, "com.android.contacts"

    invoke-virtual {v0, v1, v10}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_4
    :try_start_3
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    :cond_6
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v2, :cond_9

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    :cond_7
    :try_start_5
    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "caller_is_syncadapter"

    const-string v6, "true"

    invoke-virtual {v4, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "raw_contact_id="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    if-eqz v2, :cond_8

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v0

    :catch_1
    move-exception v1

    :try_start_6
    const-string v4, "ContactsService"

    const-string v5, "%s: %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :catch_2
    move-exception v1

    const-string v4, "ContactsService"

    const-string v5, "%s: %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v1}, Landroid/content/OperationApplicationException;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual {v1}, Landroid/content/OperationApplicationException;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_4

    :cond_9
    move-object v3, v2

    goto/16 :goto_2
.end method

.method private c()Z
    .locals 8

    const-wide/16 v6, 0x4e20

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/vivo/PCTools/i/d;

    invoke-direct {v0, p0, v1}, Lcom/vivo/PCTools/i/d;-><init>(Lcom/vivo/PCTools/i/c;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/vivo/PCTools/i/c;->c:Landroid/content/Context;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.vivo.PCTools.contacts.backup_finish"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    const-string v2, "BBKCloudReceiverForContact.cloud.bbk.com"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vivo/PCTools/i/c;->c:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    monitor-enter v1

    const-wide/16 v4, 0x4e20

    :try_start_0
    invoke-virtual {v1, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x64

    add-long/2addr v0, v2

    cmp-long v0, v0, v6

    if-lez v0, :cond_0

    const/4 v0, 0x0

    :goto_1
    return v0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private c(Lcom/vivo/PCTools/q/a/a;)Z
    .locals 12

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x1

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getAppend()[B

    move-result-object v1

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    const-string v1, "\\*"

    invoke-virtual {v3, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    move v6, v7

    move v8, v0

    :goto_0
    array-length v0, v9

    if-lt v6, v0, :cond_0

    return v8

    :cond_0
    aget-object v0, v9, v6

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget-object v0, p0, Lcom/vivo/PCTools/i/c;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v3, p0, Lcom/vivo/PCTools/i/c;->e:Lcom/vivo/PCTools/i/e;

    iget-object v4, p0, Lcom/vivo/PCTools/i/c;->c:Landroid/content/Context;

    int-to-long v10, v1

    invoke-virtual {v3, v4, v10, v11}, Lcom/vivo/PCTools/i/e;->getContactId(Landroid/content/Context;J)J

    move-result-wide v3

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move v1, v8

    :goto_2
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    move v8, v1

    goto :goto_0

    :cond_1
    const-string v3, "lookup"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-static {v4, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    :cond_2
    move v1, v7

    goto :goto_2
.end method

.method private d(Lcom/vivo/PCTools/q/a/a;)Ljava/lang/String;
    .locals 9

    const/4 v0, 0x0

    const-string v1, ""

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getAppend()[B

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getAppend()[B

    move-result-object v2

    invoke-static {v2, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->byteToInt([BI)I

    move-result v0

    const-string v2, "ContactsService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "*** mAppendLen = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " append = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getAppend()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getBody()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v3, Lcom/vivo/PCTools/i/h;

    iget-object v5, p0, Lcom/vivo/PCTools/i/c;->c:Landroid/content/Context;

    invoke-direct {v3, v5}, Lcom/vivo/PCTools/i/h;-><init>(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-gtz v0, :cond_1

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_0
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :goto_1
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_1
    :try_start_3
    new-array v5, v0, [B

    invoke-virtual {v2, v5}, Ljava/io/FileInputStream;->read([B)I

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v5}, Ljava/lang/String;-><init>([B)V

    const-string v5, "updateContactResult"

    const-string v7, "tmp"

    iget-object v8, p0, Lcom/vivo/PCTools/i/c;->c:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v8

    invoke-static {v5, v7, v8}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v3, v2, v6, v0, v5}, Lcom/vivo/PCTools/i/h;->parseAndUpdate(Ljava/io/FileInputStream;Ljava/lang/String;ILjava/io/File;)V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v0

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    :goto_2
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :goto_3
    move-object v1, v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v2, v3

    :goto_4
    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v2, :cond_2

    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    :cond_2
    :goto_5
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-object v0, v1

    goto :goto_3

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    :catch_3
    move-exception v0

    move-object v2, v3

    :goto_6
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v2, :cond_3

    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    :cond_3
    :goto_7
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-object v0, v1

    goto :goto_3

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    :catchall_0
    move-exception v0

    move-object v2, v3

    :goto_8
    if-eqz v2, :cond_4

    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    :cond_4
    :goto_9
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    throw v0

    :catch_5
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    :catch_6
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_8

    :catch_7
    move-exception v0

    goto :goto_6

    :catch_8
    move-exception v0

    goto :goto_4
.end method

.method private e(Lcom/vivo/PCTools/q/a/a;)Lcom/vivo/PCTools/q/a/a;
    .locals 8

    const/4 v7, 0x2

    const/4 v3, 0x1

    const/4 v6, -0x1

    const/4 v5, 0x4

    const/4 v4, 0x0

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

    invoke-virtual {v0, v4}, Lcom/vivo/PCTools/q/a/a;->setHeadLength(S)V

    invoke-virtual {v0, v4}, Lcom/vivo/PCTools/q/a/a;->setBodyLength(I)V

    new-array v1, v7, [B

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getRelyCode()B

    move-result v2

    aput-byte v2, v1, v3

    invoke-static {v1, v4}, Landroid/support/v4/media/session/MediaSessionCompat;->byteToShort([BI)S

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/vivo/PCTools/i/c;->b(Lcom/vivo/PCTools/q/a/a;)Lcom/vivo/PCTools/q/a/a;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getAppend()[B

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    const-string v1, "\\*"

    invoke-virtual {v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/PCTools/i/c;->e:Lcom/vivo/PCTools/i/e;

    iget-object v3, p0, Lcom/vivo/PCTools/i/c;->c:Landroid/content/Context;

    invoke-virtual {v2, v3, v1}, Lcom/vivo/PCTools/i/e;->DeleteGroup(Landroid/content/Context;[Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getAppend()[B

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    const-string v1, "\\*"

    invoke-virtual {v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/PCTools/i/c;->e:Lcom/vivo/PCTools/i/e;

    iget-object v3, p0, Lcom/vivo/PCTools/i/c;->c:Landroid/content/Context;

    invoke-virtual {v2, v3, v1}, Lcom/vivo/PCTools/i/e;->RenameGroup(Landroid/content/Context;[Ljava/lang/String;)Z

    goto :goto_0

    :pswitch_3
    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getAppend()[B

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    const-string v1, "\\*"

    invoke-virtual {v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/PCTools/i/c;->e:Lcom/vivo/PCTools/i/e;

    iget-object v3, p0, Lcom/vivo/PCTools/i/c;->c:Landroid/content/Context;

    invoke-virtual {v2, v3, v1}, Lcom/vivo/PCTools/i/e;->AddIds2Group(Landroid/content/Context;[Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getAppend()[B

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    const-string v1, "\\*"

    invoke-virtual {v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/PCTools/i/c;->e:Lcom/vivo/PCTools/i/e;

    iget-object v3, p0, Lcom/vivo/PCTools/i/c;->c:Landroid/content/Context;

    invoke-virtual {v2, v3, v1}, Lcom/vivo/PCTools/i/e;->DeleteidInGroup(Landroid/content/Context;[Ljava/lang/String;)V

    goto :goto_0

    :pswitch_5
    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getAppend()[B

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    new-array v1, v7, [Ljava/lang/String;

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/vivo/PCTools/i/c;->e:Lcom/vivo/PCTools/i/e;

    iget-object v3, p0, Lcom/vivo/PCTools/i/c;->c:Landroid/content/Context;

    invoke-virtual {v2, v3, v1}, Lcom/vivo/PCTools/i/e;->AddGroup(Landroid/content/Context;[Ljava/lang/String;)I

    move-result v1

    if-eq v1, v6, :cond_0

    invoke-virtual {v0, v5}, Lcom/vivo/PCTools/q/a/a;->setHeadLength(S)V

    new-array v2, v5, [B

    invoke-static {v1, v2, v4}, Landroid/support/v4/media/session/MediaSessionCompat;->intToByte(I[BI)V

    invoke-virtual {v0, v2, v5}, Lcom/vivo/PCTools/q/a/a;->setAppend([BI)V

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    goto/16 :goto_0

    :cond_0
    invoke-virtual {v0, v6}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private f(Lcom/vivo/PCTools/q/a/a;)Lcom/vivo/PCTools/q/a/a;
    .locals 8

    new-instance v3, Lcom/vivo/PCTools/q/a/a;

    invoke-direct {v3}, Lcom/vivo/PCTools/q/a/a;-><init>()V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getVersionShort()S

    move-result v0

    invoke-virtual {v3, v0}, Lcom/vivo/PCTools/q/a/a;->setVersion(S)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getMegIdInt()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/vivo/PCTools/q/a/a;->setMegId(I)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getModuleShort()S

    move-result v0

    invoke-virtual {v3, v0}, Lcom/vivo/PCTools/q/a/a;->setModule(S)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getCmd()B

    move-result v0

    invoke-virtual {v3, v0}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getRelyCode()B

    move-result v0

    invoke-virtual {v3, v0}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getBody()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    const/4 v2, 0x0

    :try_start_0
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v4, Ljava/io/BufferedInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v0, Lcom/vivo/PCTools/i/h;

    iget-object v2, p0, Lcom/vivo/PCTools/i/c;->c:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/vivo/PCTools/i/h;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/i/h;->parseAndUpdateCallLog(Ljava/io/InputStream;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    iget-object v4, p0, Lcom/vivo/PCTools/i/c;->d:Lcom/vivo/PCTools/i/g;

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getMegIdInt()I

    move-result v5

    invoke-virtual {v4, v2, v5, v0}, Lcom/vivo/PCTools/i/g;->createCallLogXmlFile([Ljava/lang/String;ILjava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ContactsService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " fileName = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    aget-object v5, v2, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/File;

    const/4 v4, 0x0

    aget-object v4, v2, v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    long-to-int v4, v4

    const-string v5, "ContactsService"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, " fileLength = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x4

    invoke-virtual {v3, v5}, Lcom/vivo/PCTools/q/a/a;->setHeadLength(S)V

    const/4 v5, 0x4

    new-array v5, v5, [B

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/support/v4/media/session/MediaSessionCompat;->intToByte(I[BI)V

    const/4 v4, 0x4

    invoke-virtual {v3, v5, v4}, Lcom/vivo/PCTools/q/a/a;->setAppend([BI)V

    iget-object v4, p0, Lcom/vivo/PCTools/i/c;->d:Lcom/vivo/PCTools/i/g;

    const/4 v5, 0x0

    aget-object v5, v2, v5

    invoke-virtual {v4, v5}, Lcom/vivo/PCTools/i/g;->addBitmap(Ljava/lang/String;)V

    const-string v4, "ContactsService"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "bodyLength="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    aget-object v2, v2, v6

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v3, v2}, Lcom/vivo/PCTools/q/a/a;->setBodyLength(I)V

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    invoke-virtual {v3, v2, v0}, Lcom/vivo/PCTools/q/a/a;->setBody([BI)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_0
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V

    :goto_0
    return-object v3

    :catch_0
    move-exception v0

    move-object v1, v2

    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v1, v2

    :goto_2
    :try_start_3
    const-string v2, "ContactsService"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_3
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_1
.end method

.method private g(Lcom/vivo/PCTools/q/a/a;)Lcom/vivo/PCTools/q/a/a;
    .locals 11

    const/4 v10, 0x1

    const/4 v1, 0x0

    new-instance v2, Lcom/vivo/PCTools/q/a/a;

    invoke-direct {v2}, Lcom/vivo/PCTools/q/a/a;-><init>()V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getVersionShort()S

    move-result v0

    invoke-virtual {v2, v0}, Lcom/vivo/PCTools/q/a/a;->setVersion(S)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getMegIdInt()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/vivo/PCTools/q/a/a;->setMegId(I)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getModuleShort()S

    move-result v0

    invoke-virtual {v2, v0}, Lcom/vivo/PCTools/q/a/a;->setModule(S)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getCmd()B

    move-result v0

    invoke-virtual {v2, v0}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getRelyCode()B

    move-result v0

    invoke-virtual {v2, v0}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    const/4 v0, 0x2

    new-array v0, v0, [B

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getRelyCode()B

    move-result v3

    aput-byte v3, v0, v10

    invoke-static {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->byteToShort([BI)S

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    move-object v0, v2

    :goto_1
    return-object v0

    :pswitch_0
    :try_start_0
    iget-object v0, p0, Lcom/vivo/PCTools/i/c;->c:Landroid/content/Context;

    invoke-virtual {p0, v0, v2}, Lcom/vivo/PCTools/i/c;->GetAllCallLogInfo(Landroid/content/Context;Lcom/vivo/PCTools/q/a/a;)Lcom/vivo/PCTools/q/a/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v2

    goto :goto_1

    :pswitch_1
    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getAppend()[B

    move-result-object v0

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    const-string v0, "\\*"

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    move v0, v1

    :goto_2
    array-length v4, v3

    if-lt v0, v4, :cond_0

    iget-object v0, p0, Lcom/vivo/PCTools/i/c;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://phone_update_notifications/"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    move-object v0, v2

    goto :goto_1

    :cond_0
    aget-object v4, v3, v0

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iget-object v5, p0, Lcom/vivo/PCTools/i/c;->c:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const-string v7, "_id=?"

    new-array v8, v10, [Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v1

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :pswitch_2
    :try_start_1
    const-string v0, "ContactsService"

    const-string v1, "came to insert calllog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/vivo/PCTools/i/c;->f(Lcom/vivo/PCTools/q/a/a;)Lcom/vivo/PCTools/q/a/a;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static hexStr2Bytes(Ljava/lang/String;)[B
    .locals 7

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v1, v0, 0x2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(I)V

    new-array v2, v1, [B

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    return-object v2

    :cond_0
    shl-int/lit8 v3, v0, 0x1

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v3, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "0x"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    shl-int/lit8 v6, v0, 0x1

    invoke-virtual {p0, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Byte;->decode(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static stringTo16Byte(Ljava/lang/String;)[B
    .locals 4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    rsub-int/lit8 v2, v1, 0x10

    if-lt v0, v2, :cond_1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x10

    if-eq v2, v3, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static uniteBytes(BB)B
    .locals 5

    const/4 v3, 0x1

    const/4 v4, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/String;

    new-array v2, v3, [B

    aput-byte p0, v2, v4

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Byte;->decode(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    shl-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/String;

    new-array v3, v3, [B

    aput-byte p1, v3, v4

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Byte;->decode(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    xor-int/2addr v0, v1

    int-to-byte v0, v0

    return v0
.end method


# virtual methods
.method public final GetAllCallLogInfo(Landroid/content/Context;Lcom/vivo/PCTools/q/a/a;)Lcom/vivo/PCTools/q/a/a;
    .locals 7

    new-instance v0, Lcom/vivo/PCTools/q/a/a;

    invoke-direct {v0}, Lcom/vivo/PCTools/q/a/a;-><init>()V

    invoke-virtual {p2}, Lcom/vivo/PCTools/q/a/a;->getVersionShort()S

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/q/a/a;->setVersion(S)V

    invoke-virtual {p2}, Lcom/vivo/PCTools/q/a/a;->getMegIdInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/q/a/a;->setMegId(I)V

    invoke-virtual {p2}, Lcom/vivo/PCTools/q/a/a;->getModuleShort()S

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/q/a/a;->setModule(S)V

    invoke-virtual {p2}, Lcom/vivo/PCTools/q/a/a;->getCmd()B

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    invoke-virtual {p2}, Lcom/vivo/PCTools/q/a/a;->getRelyCode()B

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    const/4 v1, 0x1

    :try_start_0
    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/vivo/PCTools/i/c;->d:Lcom/vivo/PCTools/i/g;

    invoke-virtual {p2}, Lcom/vivo/PCTools/q/a/a;->getMegIdInt()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lcom/vivo/PCTools/i/g;->createCallLogXmlFile([Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "ContactsService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " fileName = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    aget-object v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/io/File;

    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v3

    long-to-int v3, v3

    const-string v4, "ContactsService"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " fileLength = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Lcom/vivo/PCTools/q/a/a;->setHeadLength(S)V

    const/4 v4, 0x4

    new-array v4, v4, [B

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/support/v4/media/session/MediaSessionCompat;->intToByte(I[BI)V

    const/4 v3, 0x4

    invoke-virtual {v0, v4, v3}, Lcom/vivo/PCTools/q/a/a;->setAppend([BI)V

    iget-object v3, p0, Lcom/vivo/PCTools/i/c;->d:Lcom/vivo/PCTools/i/g;

    const/4 v4, 0x0

    aget-object v4, v1, v4

    invoke-virtual {v3, v4}, Lcom/vivo/PCTools/i/g;->addBitmap(Ljava/lang/String;)V

    const-string v3, "ContactsService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "bodyLength="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    aget-object v1, v1, v5

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v0, v2}, Lcom/vivo/PCTools/q/a/a;->setBodyLength(I)V

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    invoke-virtual {v0, v2, v1}, Lcom/vivo/PCTools/q/a/a;->setBody([BI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "ContactsService"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw v0
.end method

.method public final contactsDoProcess(Lcom/vivo/PCTools/q/a/a;)Lcom/vivo/PCTools/q/a/a;
    .locals 9

    const/4 v4, 0x2

    const/4 v6, -0x1

    const/4 v8, 0x4

    const/4 v5, 0x1

    const/4 v0, 0x0

    new-array v1, v4, [B

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getCmd()B

    move-result v2

    aput-byte v2, v1, v5

    invoke-static {v1, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->byteToShort([BI)S

    move-result v2

    new-instance v1, Lcom/vivo/PCTools/q/a/a;

    invoke-direct {v1}, Lcom/vivo/PCTools/q/a/a;-><init>()V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getVersionShort()S

    move-result v3

    invoke-virtual {v1, v3}, Lcom/vivo/PCTools/q/a/a;->setVersion(S)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getMegIdInt()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/vivo/PCTools/q/a/a;->setMegId(I)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getModuleShort()S

    move-result v3

    invoke-virtual {v1, v3}, Lcom/vivo/PCTools/q/a/a;->setModule(S)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getCmd()B

    move-result v3

    invoke-virtual {v1, v3}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    invoke-virtual {v1, v0}, Lcom/vivo/PCTools/q/a/a;->setHeadLength(S)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getRelyCode()B

    move-result v3

    invoke-virtual {v1, v3}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    invoke-virtual {v1, v0}, Lcom/vivo/PCTools/q/a/a;->setBodyLength(I)V

    packed-switch v2, :pswitch_data_0

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/vivo/PCTools/i/c;->a(Lcom/vivo/PCTools/q/a/a;)Lcom/vivo/PCTools/q/a/a;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/vivo/PCTools/i/c;->d(Lcom/vivo/PCTools/q/a/a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v2, "ContactsService"

    const-string v3, "updateContactsData failed"

    invoke-static {v2, v3}, Lcom/vivo/PCTools/util/b;->logE(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/vivo/PCTools/q/a/a;->setHeadLength(S)V

    invoke-virtual {v1, v0}, Lcom/vivo/PCTools/q/a/a;->setBodyLength(I)V

    move-object v0, v1

    goto :goto_0

    :cond_1
    new-array v3, v8, [B

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    long-to-int v4, v4

    const-string v5, "ContactsService"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "contact fileLength = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v8}, Lcom/vivo/PCTools/q/a/a;->setHeadLength(S)V

    invoke-static {v4, v3, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->intToByte(I[BI)V

    invoke-virtual {v1, v3, v8}, Lcom/vivo/PCTools/q/a/a;->setAppend([BI)V

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    invoke-virtual {v1, v0}, Lcom/vivo/PCTools/q/a/a;->setBodyLength(I)V

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1, v0, v2}, Lcom/vivo/PCTools/q/a/a;->setBody([BI)V

    move-object v0, v1

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/vivo/PCTools/i/c;->c(Lcom/vivo/PCTools/q/a/a;)Z

    move-object v0, v1

    goto :goto_0

    :pswitch_3
    new-instance v1, Lcom/vivo/PCTools/q/a/a;

    invoke-direct {v1}, Lcom/vivo/PCTools/q/a/a;-><init>()V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getVersionShort()S

    move-result v2

    invoke-virtual {v1, v2}, Lcom/vivo/PCTools/q/a/a;->setVersion(S)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getMegIdInt()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/vivo/PCTools/q/a/a;->setMegId(I)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getModuleShort()S

    move-result v2

    invoke-virtual {v1, v2}, Lcom/vivo/PCTools/q/a/a;->setModule(S)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getCmd()B

    move-result v2

    invoke-virtual {v1, v2}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getRelyCode()B

    move-result v2

    invoke-virtual {v1, v2}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    invoke-virtual {v1, v0}, Lcom/vivo/PCTools/q/a/a;->setHeadLength(S)V

    invoke-virtual {v1, v0}, Lcom/vivo/PCTools/q/a/a;->setBodyLength(I)V

    new-array v2, v4, [B

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getRelyCode()B

    move-result v3

    aput-byte v3, v2, v5

    invoke-static {v2, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->byteToShort([BI)S

    move-result v2

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getAppend()[B

    move-result-object v3

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    const-string v3, "\\*"

    invoke-virtual {v4, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    packed-switch v2, :pswitch_data_1

    :goto_1
    move-object v0, v1

    goto/16 :goto_0

    :pswitch_4
    iget-object v2, p0, Lcom/vivo/PCTools/i/c;->e:Lcom/vivo/PCTools/i/e;

    iget-object v4, p0, Lcom/vivo/PCTools/i/c;->c:Landroid/content/Context;

    invoke-virtual {v2, v4, v3, v5}, Lcom/vivo/PCTools/i/e;->UpdateStarreds(Landroid/content/Context;[Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, v0}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    goto :goto_1

    :cond_2
    invoke-virtual {v1, v6}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    goto :goto_1

    :pswitch_5
    iget-object v2, p0, Lcom/vivo/PCTools/i/c;->e:Lcom/vivo/PCTools/i/e;

    iget-object v4, p0, Lcom/vivo/PCTools/i/c;->c:Landroid/content/Context;

    invoke-virtual {v2, v4, v3, v0}, Lcom/vivo/PCTools/i/e;->UpdateStarreds(Landroid/content/Context;[Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1, v0}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    goto :goto_1

    :cond_3
    invoke-virtual {v1, v6}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    goto :goto_1

    :pswitch_6
    invoke-direct {p0, p1}, Lcom/vivo/PCTools/i/c;->e(Lcom/vivo/PCTools/q/a/a;)Lcom/vivo/PCTools/q/a/a;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_7
    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getAppend()[B

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getAppend()[B

    move-result-object v2

    invoke-static {v2, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->byteToInt([BI)I

    move-result v0

    const-string v2, "ContactsService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "***22 mAppendLen = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " append = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getAppend()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getBody()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v4, Lcom/vivo/PCTools/i/h;

    iget-object v5, p0, Lcom/vivo/PCTools/i/c;->c:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/vivo/PCTools/i/h;-><init>(Landroid/content/Context;)V

    if-gtz v0, :cond_5

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    move-object v0, v1

    goto/16 :goto_0

    :cond_5
    new-array v5, v0, [B

    invoke-virtual {v2, v5}, Ljava/io/FileInputStream;->read([B)I

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v5}, Ljava/lang/String;-><init>([B)V

    :try_start_0
    invoke-virtual {v4, v2, v6, v0}, Lcom/vivo/PCTools/i/h;->parseAndUpdate_2(Ljava/io/FileInputStream;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-object v0, v1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    throw v0

    :catch_1
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-object v0, v1

    goto/16 :goto_0

    :pswitch_8
    const-string v2, "ContactsService"

    const-string v3, "importFromVcard"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getBodyLength()I

    move-result v2

    new-array v3, v2, [B

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getBody()[B

    move-result-object v4

    invoke-static {v4, v0, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v4, Ljava/lang/String;

    const-string v5, "utf-8"

    invoke-direct {v4, v3, v0, v2, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    const-string v0, "ContactsService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "vcardFileName="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/vcardFile"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "ContactsService"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "vcardFileName="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Lorg/apache/http/params/b;

    iget-object v5, p0, Lcom/vivo/PCTools/i/c;->c:Landroid/content/Context;

    invoke-direct {v3, v5}, Lorg/apache/http/params/b;-><init>(Landroid/content/Context;)V

    const-string v5, "ContactsService"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "vcardFileName="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "ContactsService"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "vcardFileName="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_3
    const-string v0, "ContactsService"

    const-string v4, "vcardImporter.importFromVcardUri;begin"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3, v2}, Lorg/apache/http/params/b;->importFromVcardUri(Landroid/net/Uri;)J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-object v0, v1

    goto/16 :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto/16 :goto_0

    :pswitch_9
    invoke-direct {p0}, Lcom/vivo/PCTools/i/c;->b()V

    move-object v0, v1

    goto/16 :goto_0

    :pswitch_a
    invoke-direct {p0}, Lcom/vivo/PCTools/i/c;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    move-object v0, v1

    goto/16 :goto_0

    :pswitch_b
    invoke-direct {p0, p1}, Lcom/vivo/PCTools/i/c;->g(Lcom/vivo/PCTools/q/a/a;)Lcom/vivo/PCTools/q/a/a;

    move-result-object v0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public final testInsertCallLog()V
    .locals 5

    new-instance v2, Ljava/io/File;

    const-string v0, "/storage/sdcard0/call.xml"

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v1, Lcom/vivo/PCTools/i/h;

    iget-object v2, p0, Lcom/vivo/PCTools/i/c;->c:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/vivo/PCTools/i/h;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/vivo/PCTools/i/h;->parseAndUpdateCallLog(Ljava/io/InputStream;)Ljava/util/ArrayList;

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method
