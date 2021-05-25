.class public final Lcom/vivo/PCTools/m/e;
.super Ljava/lang/Object;


# static fields
.field private static final t:[Ljava/lang/String;


# instance fields
.field private A:Ljava/lang/String;

.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public q:Ljava/lang/String;

.field public r:Ljava/lang/String;

.field public s:Ljava/lang/String;

.field private u:Landroid/content/Context;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_size"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_data"

    aput-object v2, v0, v1

    sput-object v0, Lcom/vivo/PCTools/m/e;->t:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "0"

    iput-object v0, p0, Lcom/vivo/PCTools/m/e;->a:Ljava/lang/String;

    const-string v0, "0"

    iput-object v0, p0, Lcom/vivo/PCTools/m/e;->v:Ljava/lang/String;

    const-string v0, "0"

    iput-object v0, p0, Lcom/vivo/PCTools/m/e;->w:Ljava/lang/String;

    const-string v0, "0"

    iput-object v0, p0, Lcom/vivo/PCTools/m/e;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/vivo/PCTools/m/e;->c:Ljava/lang/String;

    const-string v0, "0"

    iput-object v0, p0, Lcom/vivo/PCTools/m/e;->x:Ljava/lang/String;

    const-string v0, "0"

    iput-object v0, p0, Lcom/vivo/PCTools/m/e;->d:Ljava/lang/String;

    const-string v0, "0"

    iput-object v0, p0, Lcom/vivo/PCTools/m/e;->e:Ljava/lang/String;

    const-string v0, "0"

    iput-object v0, p0, Lcom/vivo/PCTools/m/e;->f:Ljava/lang/String;

    const-string v0, "0"

    iput-object v0, p0, Lcom/vivo/PCTools/m/e;->g:Ljava/lang/String;

    const-string v0, "0"

    iput-object v0, p0, Lcom/vivo/PCTools/m/e;->y:Ljava/lang/String;

    const-string v0, "0"

    iput-object v0, p0, Lcom/vivo/PCTools/m/e;->h:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/vivo/PCTools/m/e;->i:Ljava/lang/String;

    const-string v0, "0"

    iput-object v0, p0, Lcom/vivo/PCTools/m/e;->j:Ljava/lang/String;

    const-string v0, "0"

    iput-object v0, p0, Lcom/vivo/PCTools/m/e;->k:Ljava/lang/String;

    const-string v0, "0"

    iput-object v0, p0, Lcom/vivo/PCTools/m/e;->l:Ljava/lang/String;

    const-string v0, "0"

    iput-object v0, p0, Lcom/vivo/PCTools/m/e;->m:Ljava/lang/String;

    const-string v0, "0"

    iput-object v0, p0, Lcom/vivo/PCTools/m/e;->n:Ljava/lang/String;

    const-string v0, "0"

    iput-object v0, p0, Lcom/vivo/PCTools/m/e;->o:Ljava/lang/String;

    const-string v0, "0"

    iput-object v0, p0, Lcom/vivo/PCTools/m/e;->p:Ljava/lang/String;

    const-string v0, "0"

    iput-object v0, p0, Lcom/vivo/PCTools/m/e;->q:Ljava/lang/String;

    const-string v0, "0"

    iput-object v0, p0, Lcom/vivo/PCTools/m/e;->r:Ljava/lang/String;

    const-string v0, "0"

    iput-object v0, p0, Lcom/vivo/PCTools/m/e;->s:Ljava/lang/String;

    iput-object v1, p0, Lcom/vivo/PCTools/m/e;->z:Ljava/lang/String;

    iput-object v1, p0, Lcom/vivo/PCTools/m/e;->A:Ljava/lang/String;

    iput-object p1, p0, Lcom/vivo/PCTools/m/e;->u:Landroid/content/Context;

    invoke-static {p1}, Lcom/vivo/PCTools/util/a;->GetInterSDPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/PCTools/m/e;->z:Ljava/lang/String;

    invoke-static {p1}, Lcom/vivo/PCTools/util/a;->GetExterSDPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/PCTools/m/e;->A:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/vivo/PCTools/m/e;->compute()V

    return-void
.end method

.method private a()J
    .locals 8

    const-string v0, "sys/class/block/mmcblk0/size"

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    :try_start_0
    new-instance v2, Ljava/io/FileReader;

    const-string v3, "sys/class/block/mmcblk0/size"

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :cond_0
    :goto_0
    const/16 v2, 0x9

    shl-long/2addr v0, v2

    return-wide v0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/class/block/"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/vivo/PCTools/m/f;

    invoke-direct {v3, p0}, Lcom/vivo/PCTools/m/f;-><init>(Lcom/vivo/PCTools/m/e;)V

    invoke-virtual {v2, v3}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v4, :cond_0

    aget-object v5, v3, v2

    :try_start_1
    new-instance v6, Ljava/io/FileReader;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/size"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/io/BufferedReader;

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v5

    add-long/2addr v0, v5

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_1
    move-exception v5

    goto :goto_2
.end method

.method private a(I)J
    .locals 11

    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/vivo/PCTools/m/e;->u:Landroid/content/Context;

    if-nez v0, :cond_0

    :goto_0
    return-wide v6

    :cond_0
    iget-object v0, p0, Lcom/vivo/PCTools/m/e;->u:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    :goto_1
    const-wide/16 v9, 0x0

    :try_start_0
    sget-object v2, Lcom/vivo/PCTools/m/e;->t:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    :try_start_1
    invoke-static {}, Lcom/vivo/PCTools/m/e;->isExternalSdCardMounted()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz v2, :cond_8

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_8

    :goto_2
    const/4 v0, 0x1

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/mnt/sdcard/external_sd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "/storage/sdcard0/external_sd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_1
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    add-long/2addr v0, v9

    :goto_3
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v3

    if-nez v3, :cond_6

    :goto_4
    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_5
    move-wide v6, v0

    goto :goto_0

    :pswitch_1
    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_1

    :pswitch_2
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_1

    :pswitch_3
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_1

    :pswitch_4
    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_1

    :pswitch_5
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_1

    :cond_3
    move-wide v0, v6

    goto :goto_4

    :catch_0
    move-exception v0

    move-object v1, v8

    :goto_6
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-wide v0, v6

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object v2, v8

    :goto_7
    if-eqz v2, :cond_4

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object v2, v1

    goto :goto_7

    :catch_1
    move-exception v0

    move-object v1, v2

    goto :goto_6

    :cond_5
    move-wide v0, v6

    goto :goto_5

    :cond_6
    move-wide v9, v0

    goto :goto_2

    :cond_7
    move-wide v0, v9

    goto :goto_3

    :cond_8
    move-wide v0, v9

    goto :goto_4

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

.method private static a(Ljava/lang/String;)J
    .locals 5

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_0

    :try_start_0
    new-instance v2, Landroid/os/StatFs;

    invoke-direct {v2, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockCount()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, v3

    :goto_0
    return-wide v0

    :cond_0
    const-string v2, "StorageInfo"

    const-string v3, "getStorageSpace() path is null, return size 0"

    invoke-static {v2, v3}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static a(Landroid/content/ContentResolver;)Z
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x0

    if-nez p0, :cond_1

    move v0, v6

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_0
    invoke-static {}, Landroid/provider/MediaStore;->getMediaScannerUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "volume"

    aput-object v3, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_4

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, "external"

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v7

    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_2
    move v0, v6

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v7

    :goto_3
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    :cond_4
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private b()J
    .locals 2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Lcom/vivo/PCTools/m/e;->a(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method private b(I)J
    .locals 12

    const/4 v1, 0x0

    const-wide/16 v7, -0x1

    const/4 v9, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/vivo/PCTools/m/e;->u:Landroid/content/Context;

    if-nez v0, :cond_0

    :goto_0
    return-wide v7

    :cond_0
    iget-object v0, p0, Lcom/vivo/PCTools/m/e;->u:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move v6, v1

    move-object v1, v2

    :goto_1
    const-wide/16 v10, 0x0

    :try_start_0
    sget-object v2, Lcom/vivo/PCTools/m/e;->t:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-eqz v6, :cond_5

    :try_start_1
    invoke-static {}, Lcom/vivo/PCTools/m/e;->isExternalSdCardMounted()Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz v2, :cond_9

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_9

    :goto_2
    const/4 v0, 0x1

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/mnt/sdcard/external_sd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "/storage/sdcard0/external_sd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_1
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    add-long/2addr v0, v10

    :goto_3
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v3

    if-nez v3, :cond_a

    :cond_2
    :goto_4
    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_5
    move-wide v7, v0

    goto :goto_0

    :pswitch_1
    sget-object v2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move v6, v1

    move-object v1, v2

    goto :goto_1

    :pswitch_2
    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move v6, v1

    move-object v1, v2

    goto :goto_1

    :pswitch_3
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move v6, v2

    goto :goto_1

    :pswitch_4
    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move v6, v2

    goto :goto_1

    :pswitch_5
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move v6, v2

    goto :goto_1

    :cond_4
    move-wide v0, v7

    goto :goto_4

    :cond_5
    if-eqz v2, :cond_9

    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_9

    :goto_6
    const/4 v0, 0x1

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/mnt/sdcard/external_sd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "/storage/sdcard0/external_sd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    add-long/2addr v10, v0

    move-wide v0, v10

    :goto_7
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v3

    if-eqz v3, :cond_2

    move-wide v10, v0

    goto :goto_6

    :catch_0
    move-exception v0

    move-object v1, v9

    :goto_8
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v1, :cond_7

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-wide v0, v7

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object v2, v9

    :goto_9
    if-eqz v2, :cond_6

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_9

    :catchall_2
    move-exception v0

    move-object v2, v1

    goto :goto_9

    :catch_1
    move-exception v0

    move-object v1, v2

    goto :goto_8

    :cond_7
    move-wide v0, v7

    goto :goto_5

    :cond_8
    move-wide v0, v10

    goto :goto_7

    :cond_9
    move-wide v0, v10

    goto :goto_4

    :cond_a
    move-wide v10, v0

    goto/16 :goto_2

    :cond_b
    move-wide v0, v10

    goto :goto_3

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

.method private static b(Ljava/lang/String;)J
    .locals 6

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_0

    :try_start_0
    new-instance v2, Landroid/os/StatFs;

    invoke-direct {v2, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockCount()I

    move-result v5

    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    sub-int v0, v5, v0

    int-to-long v0, v0

    mul-long/2addr v0, v3

    :goto_0
    return-wide v0

    :cond_0
    const-string v2, "StorageInfo"

    const-string v3, "getStorageUsedSpace() path is null, return size 0"

    invoke-static {v2, v3}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private c()J
    .locals 6

    iget-object v0, p0, Lcom/vivo/PCTools/m/e;->u:Landroid/content/Context;

    if-nez v0, :cond_1

    const-wide/16 v1, -0x1

    :cond_0
    return-wide v1

    :cond_1
    iget-object v0, p0, Lcom/vivo/PCTools/m/e;->u:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v2

    const-wide/16 v0, 0x0

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-wide v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    add-long v0, v1, v4

    move-wide v1, v0

    goto :goto_0
.end method

.method private static c(Ljava/lang/String;)J
    .locals 5

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_0

    :try_start_0
    new-instance v2, Landroid/os/StatFs;

    invoke-direct {v2, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, v3

    :goto_0
    return-wide v0

    :cond_0
    const-string v2, "StorageInfo"

    const-string v3, "getStorageUsedSpace() path is null, return size 0"

    invoke-static {v2, v3}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private d()J
    .locals 2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/PCTools/m/e;->b(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private e()J
    .locals 7

    iget-object v0, p0, Lcom/vivo/PCTools/m/e;->u:Landroid/content/Context;

    if-nez v0, :cond_1

    const-wide/16 v1, -0x1

    :cond_0
    return-wide v1

    :cond_1
    iget-object v0, p0, Lcom/vivo/PCTools/m/e;->u:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v2

    const-wide/16 v0, 0x0

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-wide v1, v0

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v5, 0x40000

    and-int/2addr v0, v5

    if-eqz v0, :cond_2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v5

    add-long v0, v1, v5

    const-string v2, "StorageInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "package = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", total = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v1, v0

    goto :goto_0
.end method

.method public static isBBKExternalSdCardMounted()Z
    .locals 2

    invoke-static {}, Lcom/vivo/PCTools/util/a;->GetBBkExternalSdState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isBBKInterCardMounted()Z
    .locals 2

    invoke-static {}, Lcom/vivo/PCTools/util/a;->GetBBkInternalSdState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isExternalSdCardMounted()Z
    .locals 2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isSdCardMounted()Z
    .locals 2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final compute()V
    .locals 22

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vivo/PCTools/m/e;->u:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {}, Lcom/vivo/PCTools/m/e;->isSdCardMounted()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {v3}, Lcom/vivo/PCTools/m/e;->a(Landroid/content/ContentResolver;)Z

    move-result v3

    if-nez v3, :cond_4

    const/4 v3, 0x1

    :goto_0
    if-eqz v3, :cond_5

    const-string v3, "1"

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/vivo/PCTools/m/e;->a:Ljava/lang/String;

    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/vivo/PCTools/m/e;->a()J

    move-result-wide v9

    const-string v3, "StorageInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "MMC: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vivo/PCTools/m/e;->z:Ljava/lang/String;

    if-eqz v3, :cond_6

    invoke-static {v3}, Lcom/vivo/PCTools/m/e;->a(Ljava/lang/String;)J

    move-result-wide v3

    :goto_2
    const-string v5, "StorageInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "innerSD: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vivo/PCTools/m/e;->z:Ljava/lang/String;

    invoke-static {v5}, Lcom/vivo/PCTools/m/e;->b(Ljava/lang/String;)J

    move-result-wide v13

    const-string v5, "StorageInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "innerSDUsed: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/vivo/PCTools/m/e;->c(Ljava/lang/String;)J

    move-result-wide v7

    const-string v5, "StorageInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v11, "InnerSD Free: "

    invoke-direct {v6, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sub-long v11, v9, v3

    const-string v5, "StorageInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v15, "System Space: "

    invoke-direct {v6, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/vivo/PCTools/m/e;->c(Ljava/lang/String;)J

    move-result-wide v5

    const-string v15, "StorageInfo"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "systemFree: "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v15

    invoke-virtual {v15}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/vivo/PCTools/m/e;->a(Ljava/lang/String;)J

    move-result-wide v15

    const-string v17, "StorageInfo"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "dataSpace: "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/vivo/PCTools/m/e;->c()J

    move-result-wide v17

    const-string v19, "StorageInfo"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "appSpace: "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v19, Lcom/vivo/PCTools/util/a;->n:I

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_b

    move-wide v5, v7

    :goto_3
    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/vivo/PCTools/m/e;->q:Ljava/lang/String;

    sub-long/2addr v9, v5

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/vivo/PCTools/m/e;->r:Ljava/lang/String;

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/vivo/PCTools/m/e;->s:Ljava/lang/String;

    sget-object v9, Lcom/vivo/PCTools/util/a;->i:Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_9

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/vivo/PCTools/m/e;->z:Ljava/lang/String;

    if-eqz v9, :cond_7

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/vivo/PCTools/m/e;->z:Ljava/lang/String;

    const-string v10, ""

    if-eq v9, v10, :cond_7

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/vivo/PCTools/m/e;->z:Ljava/lang/String;

    :goto_4
    if-eqz v9, :cond_8

    const-string v10, ""

    if-eq v9, v10, :cond_8

    new-instance v10, Landroid/os/StatFs;

    invoke-direct {v10, v9}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/StatFs;->getBlockSize()I

    move-result v9

    int-to-long v11, v9

    invoke-virtual {v10}, Landroid/os/StatFs;->getBlockCount()I

    move-result v9

    int-to-long v9, v9

    mul-long/2addr v9, v11

    :goto_5
    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/vivo/PCTools/m/e;->v:Ljava/lang/String;

    :goto_6
    invoke-static/range {v15 .. v16}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/vivo/PCTools/m/e;->w:Ljava/lang/String;

    sub-long v5, v15, v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/vivo/PCTools/m/e;->x:Ljava/lang/String;

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/vivo/PCTools/m/e;->y:Ljava/lang/String;

    sget-object v5, Lcom/vivo/PCTools/util/a;->i:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_a

    sget-object v5, Lcom/vivo/PCTools/util/a;->e:Ljava/lang/String;

    const-string v6, "vivo S3"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    sget-object v5, Lcom/vivo/PCTools/util/a;->e:Ljava/lang/String;

    const-string v6, "vivo V1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    sget-object v5, Lcom/vivo/PCTools/util/a;->e:Ljava/lang/String;

    const-string v6, "vivo E1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    sget-object v5, Lcom/vivo/PCTools/util/a;->e:Ljava/lang/String;

    const-string v6, "vivo V2"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    sget-object v5, Lcom/vivo/PCTools/util/a;->j:Ljava/lang/String;

    const-string v6, "EX"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vivo/PCTools/m/e;->z:Ljava/lang/String;

    if-eqz v5, :cond_2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vivo/PCTools/m/e;->z:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/vivo/PCTools/m/e;->c:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/vivo/PCTools/m/e;->b:Ljava/lang/String;

    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/vivo/PCTools/m/e;->d:Ljava/lang/String;

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/vivo/PCTools/m/e;->e:Ljava/lang/String;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/vivo/PCTools/m/e;->b(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/vivo/PCTools/m/e;->f:Ljava/lang/String;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/vivo/PCTools/m/e;->b(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/vivo/PCTools/m/e;->g:Ljava/lang/String;

    const/4 v3, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/vivo/PCTools/m/e;->b(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/vivo/PCTools/m/e;->h:Ljava/lang/String;

    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vivo/PCTools/m/e;->A:Ljava/lang/String;

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vivo/PCTools/m/e;->u:Landroid/content/Context;

    invoke-static {v3}, Lcom/vivo/PCTools/PcFtpRemote/j;->getSDCardInfo(Landroid/content/Context;)Lcom/vivo/PCTools/PcFtpRemote/l;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vivo/PCTools/m/e;->A:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/vivo/PCTools/m/e;->i:Ljava/lang/String;

    iget-wide v4, v3, Lcom/vivo/PCTools/PcFtpRemote/l;->c:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/vivo/PCTools/m/e;->j:Ljava/lang/String;

    iget-wide v4, v3, Lcom/vivo/PCTools/PcFtpRemote/l;->d:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/vivo/PCTools/m/e;->l:Ljava/lang/String;

    iget-wide v4, v3, Lcom/vivo/PCTools/PcFtpRemote/l;->c:J

    iget-wide v6, v3, Lcom/vivo/PCTools/PcFtpRemote/l;->d:J

    sub-long v3, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/vivo/PCTools/m/e;->k:Ljava/lang/String;

    const/4 v3, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/vivo/PCTools/m/e;->b(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/vivo/PCTools/m/e;->m:Ljava/lang/String;

    const/4 v3, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/vivo/PCTools/m/e;->b(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/vivo/PCTools/m/e;->n:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Lcom/vivo/PCTools/m/e;->e()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/vivo/PCTools/m/e;->o:Ljava/lang/String;

    const/4 v3, 0x5

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/vivo/PCTools/m/e;->b(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/vivo/PCTools/m/e;->p:Ljava/lang/String;

    :cond_3
    :goto_7
    return-void

    :cond_4
    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_5
    const-string v3, "0"

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/vivo/PCTools/m/e;->a:Ljava/lang/String;

    goto/16 :goto_1

    :cond_6
    const-wide/16 v3, 0x0

    goto/16 :goto_2

    :cond_7
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_4

    :cond_8
    const-wide/16 v9, 0x0

    goto/16 :goto_5

    :cond_9
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Landroid/os/StatFs;

    invoke-direct {v10, v9}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/os/StatFs;->getBlockSize()I

    move-result v9

    int-to-long v11, v9

    invoke-virtual {v10}, Landroid/os/StatFs;->getBlockCount()I

    move-result v9

    int-to-long v9, v9

    mul-long/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/vivo/PCTools/m/e;->v:Ljava/lang/String;

    goto/16 :goto_6

    :cond_a
    invoke-static {}, Lcom/vivo/PCTools/m/e;->isSdCardMounted()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/vivo/PCTools/m/e;->i:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Lcom/vivo/PCTools/m/e;->b()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/vivo/PCTools/m/e;->j:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Lcom/vivo/PCTools/m/e;->d()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/vivo/PCTools/m/e;->k:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Lcom/vivo/PCTools/m/e;->b()J

    move-result-wide v3

    invoke-direct/range {p0 .. p0}, Lcom/vivo/PCTools/m/e;->d()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/vivo/PCTools/m/e;->l:Ljava/lang/String;

    const/4 v3, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/vivo/PCTools/m/e;->a(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/vivo/PCTools/m/e;->m:Ljava/lang/String;

    const/4 v3, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/vivo/PCTools/m/e;->a(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/vivo/PCTools/m/e;->n:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Lcom/vivo/PCTools/m/e;->e()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/vivo/PCTools/m/e;->o:Ljava/lang/String;

    const/4 v3, 0x5

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/vivo/PCTools/m/e;->a(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/vivo/PCTools/m/e;->p:Ljava/lang/String;

    goto/16 :goto_7

    :cond_b
    move-wide v9, v11

    goto/16 :goto_3
.end method

.method public final dump()V
    .locals 3

    const-string v0, "StorageInfo"

    const-string v1, "================== storage info =================="

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "StorageInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mStorageStatus = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vivo/PCTools/m/e;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "StorageInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mPhoneTotalSpace = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vivo/PCTools/m/e;->v:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "StorageInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mPhoneMmcSpace = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vivo/PCTools/m/e;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "StorageInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mPhoneMmcUsedSpace = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vivo/PCTools/m/e;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "StorageInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mPhoneDataSpace = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vivo/PCTools/m/e;->w:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "StorageInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mPhoneDataUsedSpace = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vivo/PCTools/m/e;->x:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "StorageInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mPhoneMusicSpace = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vivo/PCTools/m/e;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "StorageInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mPhoneVideoSpace = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vivo/PCTools/m/e;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "StorageInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mPhoneSoftwareSpace = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vivo/PCTools/m/e;->y:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "StorageInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mPhonePictureSpace = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vivo/PCTools/m/e;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "StorageInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mSdCardTotalSpace = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vivo/PCTools/m/e;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "StorageInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mSdCardUsedSpace = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vivo/PCTools/m/e;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "StorageInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mSdCardMusicSpace = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vivo/PCTools/m/e;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "StorageInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mSdCardVideoSpace = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vivo/PCTools/m/e;->n:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "StorageInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mSdCardSoftwareSpace = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vivo/PCTools/m/e;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "StorageInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mSdCardPictureSpace = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vivo/PCTools/m/e;->p:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "StorageInfo"

    const-string v1, "=================================================="

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
