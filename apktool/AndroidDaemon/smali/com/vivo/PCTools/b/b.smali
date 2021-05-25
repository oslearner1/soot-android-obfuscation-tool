.class public final Lcom/vivo/PCTools/b/b;
.super Lcom/vivo/PCTools/Pcserver/a;


# instance fields
.field private d:Lcom/vivo/PCTools/b/a;

.field private e:Landroid/content/Context;

.field private f:Ljava/io/BufferedInputStream;

.field private g:Lcom/vivo/PCTools/q/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/vivo/PCTools/q/a/a;Lorg/jboss/netty/channel/Channel;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/vivo/PCTools/Pcserver/a;-><init>(Lcom/vivo/PCTools/q/a/a;Lorg/jboss/netty/channel/Channel;Landroid/content/Context;)V

    iput-object p3, p0, Lcom/vivo/PCTools/b/b;->e:Landroid/content/Context;

    new-instance v0, Lcom/vivo/PCTools/b/a;

    invoke-direct {v0, p3}, Lcom/vivo/PCTools/b/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vivo/PCTools/b/b;->d:Lcom/vivo/PCTools/b/a;

    iput-object p1, p0, Lcom/vivo/PCTools/b/b;->g:Lcom/vivo/PCTools/q/a/a;

    return-void
.end method

.method private a(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    const-string v3, ""

    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    const-string v1, ""

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    :goto_0
    if-eqz p2, :cond_0

    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    const-string v1, "FileManagerHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "---newPath--"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "FileManagerHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "---suffixPath--"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "FileManagerHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "newPath = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz p2, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    const-string v1, "FileManagerHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "---newPath 00--"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_2
    move-object v0, v1

    goto :goto_1

    :cond_3
    move-object v2, v1

    goto/16 :goto_0
.end method

.method private a(Lcom/vivo/PCTools/q/a/a;)V
    .locals 5

    const/4 v4, 0x0

    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getAppend()[B

    move-result-object v1

    const-string v2, "utf-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string v1, "FileManagerHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "scan file is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    const/16 v0, 0x53

    invoke-virtual {p1, v0}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "FileManagerHandler"

    const-string v1, "finish scaning file."

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    new-array v0, v4, [B

    invoke-virtual {p1, v0, v4}, Lcom/vivo/PCTools/q/a/a;->setAppend([BI)V

    new-array v0, v4, [B

    invoke-virtual {p1, v0, v4}, Lcom/vivo/PCTools/q/a/a;->setBody([BI)V

    invoke-virtual {p1, v4}, Lcom/vivo/PCTools/q/a/a;->setBodyLength(I)V

    invoke-virtual {p1, v4}, Lcom/vivo/PCTools/q/a/a;->setHeadLength(S)V

    :goto_0
    return-void

    :cond_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/vivo/PCTools/b/b;->e:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v0, "FileManagerHandler"

    const-string v1, "send broadcast to system to scan file"

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_1
    const-string v0, "FileManagerHandler"

    const-string v1, "finish scaning file."

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    new-array v0, v4, [B

    invoke-virtual {p1, v0, v4}, Lcom/vivo/PCTools/q/a/a;->setAppend([BI)V

    new-array v0, v4, [B

    invoke-virtual {p1, v0, v4}, Lcom/vivo/PCTools/q/a/a;->setBody([BI)V

    invoke-virtual {p1, v4}, Lcom/vivo/PCTools/q/a/a;->setBodyLength(I)V

    invoke-virtual {p1, v4}, Lcom/vivo/PCTools/q/a/a;->setHeadLength(S)V

    goto :goto_0

    :cond_2
    :try_start_2
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/vivo/PCTools/b/b;->e:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v0, "FileManagerHandler"

    const-string v1, "send broadcast to system to scan directory"

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string v0, "FileManagerHandler"

    const-string v1, "finish scaning file."

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    new-array v0, v4, [B

    invoke-virtual {p1, v0, v4}, Lcom/vivo/PCTools/q/a/a;->setAppend([BI)V

    new-array v0, v4, [B

    invoke-virtual {p1, v0, v4}, Lcom/vivo/PCTools/q/a/a;->setBody([BI)V

    invoke-virtual {p1, v4}, Lcom/vivo/PCTools/q/a/a;->setBodyLength(I)V

    invoke-virtual {p1, v4}, Lcom/vivo/PCTools/q/a/a;->setHeadLength(S)V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "FileManagerHandler"

    const-string v2, "finish scaning file."

    invoke-static {v1, v2}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    new-array v1, v4, [B

    invoke-virtual {p1, v1, v4}, Lcom/vivo/PCTools/q/a/a;->setAppend([BI)V

    new-array v1, v4, [B

    invoke-virtual {p1, v1, v4}, Lcom/vivo/PCTools/q/a/a;->setBody([BI)V

    invoke-virtual {p1, v4}, Lcom/vivo/PCTools/q/a/a;->setBodyLength(I)V

    invoke-virtual {p1, v4}, Lcom/vivo/PCTools/q/a/a;->setHeadLength(S)V

    throw v0
.end method

.method private a(Ljava/io/InputStream;Lcom/vivo/PCTools/q/a/a;)V
    .locals 5

    const/4 v4, 0x0

    :try_start_0
    invoke-static {p1, p2}, Landroid/support/v4/app/bm;->readXml(Ljava/io/InputStream;Lcom/vivo/PCTools/q/a/a;)[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v0, 0x53

    invoke-virtual {p2, v0}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    const-string v0, "FileManagerHandler"

    const-string v1, "finish renaming file."

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    new-array v0, v4, [B

    invoke-virtual {p2, v0, v4}, Lcom/vivo/PCTools/q/a/a;->setAppend([BI)V

    new-array v0, v4, [B

    invoke-virtual {p2, v0, v4}, Lcom/vivo/PCTools/q/a/a;->setBody([BI)V

    invoke-virtual {p2, v4}, Lcom/vivo/PCTools/q/a/a;->setBodyLength(I)V

    invoke-virtual {p2, v4}, Lcom/vivo/PCTools/q/a/a;->setHeadLength(S)V

    :goto_1
    return-void

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/vivo/PCTools/b/b;->d:Lcom/vivo/PCTools/b/a;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    const/4 v3, 0x1

    aget-object v0, v0, v3

    invoke-virtual {v1, v2, v0}, Lcom/vivo/PCTools/b/a;->renameTarget(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v0, "FileManagerHandler"

    const-string v1, "finish renaming file."

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    new-array v0, v4, [B

    invoke-virtual {p2, v0, v4}, Lcom/vivo/PCTools/q/a/a;->setAppend([BI)V

    new-array v0, v4, [B

    invoke-virtual {p2, v0, v4}, Lcom/vivo/PCTools/q/a/a;->setBody([BI)V

    invoke-virtual {p2, v4}, Lcom/vivo/PCTools/q/a/a;->setBodyLength(I)V

    invoke-virtual {p2, v4}, Lcom/vivo/PCTools/q/a/a;->setHeadLength(S)V

    goto :goto_1

    :cond_2
    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    const/16 v0, 0x50

    :try_start_3
    invoke-virtual {p2, v0}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "FileManagerHandler"

    const-string v2, "finish renaming file."

    invoke-static {v1, v2}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    new-array v1, v4, [B

    invoke-virtual {p2, v1, v4}, Lcom/vivo/PCTools/q/a/a;->setAppend([BI)V

    new-array v1, v4, [B

    invoke-virtual {p2, v1, v4}, Lcom/vivo/PCTools/q/a/a;->setBody([BI)V

    invoke-virtual {p2, v4}, Lcom/vivo/PCTools/q/a/a;->setBodyLength(I)V

    invoke-virtual {p2, v4}, Lcom/vivo/PCTools/q/a/a;->setHeadLength(S)V

    throw v0

    :cond_3
    const/4 v1, -0x2

    if-ne v0, v1, :cond_4

    const/16 v0, 0x51

    :try_start_4
    invoke-virtual {p2, v0}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    goto :goto_0

    :cond_4
    const/4 v1, -0x3

    if-ne v0, v1, :cond_5

    const/16 v0, 0x52

    invoke-virtual {p2, v0}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    goto :goto_0

    :cond_5
    const/4 v1, -0x4

    if-ne v0, v1, :cond_6

    const/16 v0, 0x54

    invoke-virtual {p2, v0}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    goto/16 :goto_0

    :cond_6
    const/4 v1, -0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x5

    invoke-virtual {p2, v0}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0
.end method

.method private a(Ljava/io/InputStream;Lcom/vivo/PCTools/q/a/a;Z)V
    .locals 11

    :try_start_0
    invoke-static {p1, p2}, Landroid/support/v4/app/bm;->readXml(Ljava/io/InputStream;Lcom/vivo/PCTools/q/a/a;)[Ljava/lang/String;

    move-result-object v2

    const-string v0, "FileManagerHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "source = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "dest = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v3, 0x1

    aget-object v3, v2, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v3}, Lcom/vivo/PCTools/b/b;->getFolderSize(Ljava/io/File;)J

    move-result-wide v0

    :cond_0
    :goto_0
    const-string v3, "FileManagerHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Source File size is = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    aget-object v3, v2, v3

    invoke-direct {p0, v0, v1, v3}, Lcom/vivo/PCTools/b/b;->a(JLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x3

    invoke-virtual {p2, v0}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_1
    const-string v0, "FileManagerHandler"

    const-string v1, "finish copying file."

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "/data/data/com.vivo.PCTools/test.xml"

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p2}, Lcom/vivo/PCTools/q/a/a;->getRelyCode()B

    move-result v3

    if-nez v3, :cond_2

    const/4 v0, 0x1

    :cond_2
    if-eqz v0, :cond_1e

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    invoke-virtual {p2, v0}, Lcom/vivo/PCTools/q/a/a;->setBodyLength(I)V

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    invoke-virtual {p2, v0, v1}, Lcom/vivo/PCTools/q/a/a;->setBody([BI)V

    :goto_2
    const/4 v0, 0x0

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lcom/vivo/PCTools/q/a/a;->setAppend([BI)V

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/vivo/PCTools/q/a/a;->setHeadLength(S)V

    :goto_3
    return-void

    :cond_3
    :try_start_1
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v0

    goto :goto_0

    :cond_4
    invoke-virtual {v4}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x5

    invoke-virtual {p2, v0}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v0, "FileManagerHandler"

    const-string v1, "finish copying file."

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "/data/data/com.vivo.PCTools/test.xml"

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p2}, Lcom/vivo/PCTools/q/a/a;->getRelyCode()B

    move-result v3

    if-nez v3, :cond_5

    const/4 v0, 0x1

    :cond_5
    if-eqz v0, :cond_1c

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    invoke-virtual {p2, v0}, Lcom/vivo/PCTools/q/a/a;->setBodyLength(I)V

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    invoke-virtual {p2, v0, v1}, Lcom/vivo/PCTools/q/a/a;->setBody([BI)V

    :goto_4
    const/4 v0, 0x0

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lcom/vivo/PCTools/q/a/a;->setAppend([BI)V

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/vivo/PCTools/q/a/a;->setHeadLength(S)V

    goto :goto_3

    :cond_6
    :try_start_3
    const-string v0, "FileManagerHandler"

    const-string v1, "\u6ca1\u6709\u6ea2\u51fa"

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    aget-object v0, v2, v0

    const/4 v1, 0x0

    const/4 v3, 0x0

    aget-object v3, v2, v3

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    aget-object v0, v2, v0

    const/4 v3, 0x1

    aget-object v3, v2, v3

    new-instance v5, Ljava/lang/StringBuffer;

    const-string v6, ""

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x1

    aget-object v6, v2, v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    const-string v0, "FileManagerHandler"

    const-string v6, "\u540c\u4e00\u5c42\u7684\u590d\u5236"

    invoke-static {v0, v6}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    aget-object v0, v2, v0

    if-nez v0, :cond_7

    const/16 v0, 0x24

    invoke-virtual {p2, v0}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    :cond_7
    const/4 v0, 0x1

    aget-object v0, v2, v0

    if-nez v0, :cond_8

    const/16 v0, 0x25

    invoke-virtual {p2, v0}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    :cond_8
    const/4 v0, 0x0

    aget-object v0, v2, v0

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    aget-object v0, v2, v0

    if-eqz v0, :cond_9

    new-instance v0, Ljava/io/File;

    const/4 v6, 0x0

    aget-object v6, v2, v6

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_c

    const/16 v0, 0x26

    invoke-virtual {p2, v0}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    :cond_9
    :goto_5
    const-string v0, "FileManagerHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "rely code is  = "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/vivo/PCTools/q/a/a;->getRelyCode()B

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/vivo/PCTools/q/a/a;->getRelyCode()B

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-static {v4}, Lcom/vivo/PCTools/b/a;->isImageFile(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_18

    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    :cond_a
    :goto_6
    if-eqz v0, :cond_1a

    iget-object v3, p0, Lcom/vivo/PCTools/b/b;->e:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const-string v7, "date_modified"

    new-instance v8, Ljava/lang/String;

    const-string v9, "0"

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "_display_name"

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "_data"

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "_data=?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v3, v0, v6, v7, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/PCTools/b/b;->e:Landroid/content/Context;

    invoke-static {v0, v4}, Lcom/vivo/PCTools/b/a;->scanMediaFile(Landroid/content/Context;Ljava/io/File;)V

    :goto_7
    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/app/bm;->CreateMoveXml(Ljava/lang/String;Ljava/lang/String;)Ljava/io/OutputStream;

    const-string v0, "FileManagerHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " dest finally"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    const-string v1, "FileManagerHandler"

    const-string v2, "finish copying file."

    invoke-static {v1, v2}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "/data/data/com.vivo.PCTools/test.xml"

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p2}, Lcom/vivo/PCTools/q/a/a;->getRelyCode()B

    move-result v4

    if-nez v4, :cond_b

    const/4 v1, 0x1

    :cond_b
    if-eqz v1, :cond_1d

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    invoke-virtual {p2, v1}, Lcom/vivo/PCTools/q/a/a;->setBodyLength(I)V

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    invoke-virtual {p2, v1, v2}, Lcom/vivo/PCTools/q/a/a;->setBody([BI)V

    :goto_8
    const/4 v1, 0x0

    new-array v1, v1, [B

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Lcom/vivo/PCTools/q/a/a;->setAppend([BI)V

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lcom/vivo/PCTools/q/a/a;->setHeadLength(S)V

    throw v0

    :cond_c
    const/4 v0, 0x0

    :try_start_4
    aget-object v0, v2, v0

    const/4 v6, 0x1

    aget-object v6, v2, v6

    invoke-direct {p0, v0, v6, v5}, Lcom/vivo/PCTools/b/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuffer;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    :goto_9
    const-string v0, "FileManagerHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "dest dierctory  = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_d
    const/16 v0, 0x20

    invoke-virtual {p2, v0}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    goto :goto_9

    :cond_e
    const-string v6, "FileManagerHandler"

    const-string v7, "\u4e0d\u662f\u540c\u4e00\u5c42\u7684\u590d\u5236"

    invoke-static {v6, v7}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/vivo/PCTools/b/b;->d:Lcom/vivo/PCTools/b/a;

    invoke-virtual {v6, v0, v3, p3}, Lcom/vivo/PCTools/b/a;->WrapCopyOperation(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    const-string v3, "FileManagerHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "return = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, -0x1

    if-ne v0, v3, :cond_f

    const/16 v0, 0x24

    invoke-virtual {p2, v0}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    goto/16 :goto_5

    :cond_f
    const/4 v3, -0x2

    if-ne v0, v3, :cond_10

    const/16 v0, 0x25

    invoke-virtual {p2, v0}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    goto/16 :goto_5

    :cond_10
    const/4 v3, -0x3

    if-ne v0, v3, :cond_11

    const/16 v0, 0x26

    invoke-virtual {p2, v0}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    goto/16 :goto_5

    :cond_11
    const/4 v3, -0x4

    if-ne v0, v3, :cond_12

    const/16 v0, 0x27

    invoke-virtual {p2, v0}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    goto/16 :goto_5

    :cond_12
    const/4 v3, -0x5

    if-ne v0, v3, :cond_13

    const/16 v0, 0x28

    invoke-virtual {p2, v0}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    goto/16 :goto_5

    :cond_13
    const/4 v3, -0x6

    if-ne v0, v3, :cond_14

    const/16 v0, 0x29

    invoke-virtual {p2, v0}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    goto/16 :goto_5

    :cond_14
    const/4 v3, -0x7

    if-ne v0, v3, :cond_15

    const/16 v0, 0x22

    invoke-virtual {p2, v0}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    goto/16 :goto_5

    :cond_15
    const/4 v3, -0x8

    if-ne v0, v3, :cond_16

    const/16 v0, 0x28

    invoke-virtual {p2, v0}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    goto/16 :goto_5

    :cond_16
    if-nez v0, :cond_17

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    goto/16 :goto_5

    :cond_17
    const/16 v3, -0x9

    if-ne v0, v3, :cond_9

    const/16 v0, 0x23

    invoke-virtual {p2, v0}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    goto/16 :goto_5

    :cond_18
    invoke-static {v4}, Lcom/vivo/PCTools/b/a;->isAudioFile(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_19

    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto/16 :goto_6

    :cond_19
    invoke-static {v4}, Lcom/vivo/PCTools/b/a;->isVideoFile(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_a

    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto/16 :goto_6

    :cond_1a
    iget-object v0, p0, Lcom/vivo/PCTools/b/b;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/vivo/PCTools/b/a;->scanAllMediaFile(Landroid/content/Context;)V

    goto/16 :goto_7

    :cond_1b
    new-instance v0, Ljava/io/File;

    const/4 v1, 0x0

    aget-object v1, v2, v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    aget-object v0, v2, v0

    const/4 v1, 0x0

    aget-object v1, v2, v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FileManagerHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "file_name = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    aget-object v1, v2, v1

    new-instance v3, Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    aget-object v2, v2, v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/support/v4/app/bm;->CreateMoveXml(Ljava/lang/String;Ljava/lang/String;)Ljava/io/OutputStream;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    :cond_1c
    const/4 v0, 0x0

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lcom/vivo/PCTools/q/a/a;->setBody([BI)V

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/vivo/PCTools/q/a/a;->setBodyLength(I)V

    goto/16 :goto_4

    :cond_1d
    const/4 v1, 0x0

    new-array v1, v1, [B

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Lcom/vivo/PCTools/q/a/a;->setBody([BI)V

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lcom/vivo/PCTools/q/a/a;->setBodyLength(I)V

    goto/16 :goto_8

    :cond_1e
    const/4 v0, 0x0

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lcom/vivo/PCTools/q/a/a;->setBody([BI)V

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/vivo/PCTools/q/a/a;->setBodyLength(I)V

    goto/16 :goto_2
.end method

.method private a(JLjava/lang/String;)Z
    .locals 8

    const/4 v1, 0x1

    const-string v0, "FileManagerHandler"

    const-string v2, "come to JudgeisOverFolw"

    invoke-static {v0, v2}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    const-string v0, "/mnt/sdcard/external_sd"

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "FileManagerHandler"

    const-string v3, "start with /mnt/sdcard/external"

    invoke-static {v0, v3}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_1
    return v1

    :cond_0
    const-string v0, "/mnt/sdcard"

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "FileManagerHandler"

    const-string v3, "start with /mnt/sdcard"

    invoke-static {v0, v3}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "FileManagerHandler"

    const-string v2, "wrong error"

    invoke-static {v0, v2}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    new-instance v3, Landroid/os/StatFs;

    invoke-direct {v3, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v4, v0

    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v6, v0

    mul-long v3, v4, v6

    :goto_2
    cmp-long v0, p1, v3

    if-lez v0, :cond_4

    move v0, v1

    :goto_3
    move v1, v0

    goto :goto_1

    :cond_3
    const-string v0, "FileManagerHandler"

    const-string v3, "getStorageFreeSpace() path is null, return size 0"

    invoke-static {v0, v3}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v3, 0x0

    goto :goto_2

    :cond_4
    move v0, v2

    goto :goto_3
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    const-string v1, "FileManagerHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "really copyFileLocked:src="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",dest="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v2, 0x1000

    new-array v2, v2, [B

    :goto_0
    invoke-virtual {v3, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    const/4 v0, 0x1

    :cond_0
    :goto_1
    return v0

    :cond_1
    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuffer;)Z
    .locals 8

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string v0, "FileManagerHandler"

    const-string v3, "copyLocked"

    invoke-static {v0, v3}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq v0, v3, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_0
    const-string v0, "FileManagerHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "copyLock:src = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",dest = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "FileManagerHandler"

    const-string v4, "cpoy file"

    invoke-static {v0, v4}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0, v0, v2}, Lcom/vivo/PCTools/b/b;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "FileManagerHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "NewDest = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move-object v3, v0

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {p1, v3}, Lcom/vivo/PCTools/b/b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v1, v2

    :cond_2
    :goto_1
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_3
    const-string v0, "FileManagerHandler"

    const-string v4, "cpoy folder"

    invoke-static {v0, v4}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-direct {p0, v4, v1}, Lcom/vivo/PCTools/b/b;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "FileManagerHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "NewDest = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v4

    const-string v5, "FileManagerHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "b = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    :goto_2
    array-length v4, v3

    if-lt v1, v4, :cond_5

    move v1, v2

    goto :goto_1

    :cond_5
    aget-object v4, v3, v1

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5, p3}, Lcom/vivo/PCTools/b/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuffer;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method private b(Lcom/vivo/PCTools/q/a/a;)V
    .locals 4

    const/4 v3, 0x0

    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getAppend()[B

    move-result-object v1

    const-string v2, "utf-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string v1, "/mnt/sdcard/external_sd/.android_secure"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "/mnt/sdcard/.android_secure"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    const-string v0, "FileManagerHandler"

    const-string v1, "finish delete file."

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    new-array v0, v3, [B

    invoke-virtual {p1, v0, v3}, Lcom/vivo/PCTools/q/a/a;->setAppend([BI)V

    new-array v0, v3, [B

    invoke-virtual {p1, v0, v3}, Lcom/vivo/PCTools/q/a/a;->setBody([BI)V

    invoke-virtual {p1, v3}, Lcom/vivo/PCTools/q/a/a;->setBodyLength(I)V

    invoke-virtual {p1, v3}, Lcom/vivo/PCTools/q/a/a;->setHeadLength(S)V

    :goto_1
    return-void

    :cond_1
    :try_start_1
    const-string v1, "/mnt/sdcard/external_sd/.android_secure/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "/mnt/sdcard/.android_secure/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v0, "FileManagerHandler"

    const-string v1, "finish delete file."

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    new-array v0, v3, [B

    invoke-virtual {p1, v0, v3}, Lcom/vivo/PCTools/q/a/a;->setAppend([BI)V

    new-array v0, v3, [B

    invoke-virtual {p1, v0, v3}, Lcom/vivo/PCTools/q/a/a;->setBody([BI)V

    invoke-virtual {p1, v3}, Lcom/vivo/PCTools/q/a/a;->setBodyLength(I)V

    invoke-virtual {p1, v3}, Lcom/vivo/PCTools/q/a/a;->setHeadLength(S)V

    goto :goto_1

    :cond_3
    :try_start_3
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_4

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const/16 v0, 0xd

    invoke-virtual {p1, v0}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const-string v0, "FileManagerHandler"

    const-string v1, "finish delete file."

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    new-array v0, v3, [B

    invoke-virtual {p1, v0, v3}, Lcom/vivo/PCTools/q/a/a;->setAppend([BI)V

    new-array v0, v3, [B

    invoke-virtual {p1, v0, v3}, Lcom/vivo/PCTools/q/a/a;->setBody([BI)V

    invoke-virtual {p1, v3}, Lcom/vivo/PCTools/q/a/a;->setBodyLength(I)V

    invoke-virtual {p1, v3}, Lcom/vivo/PCTools/q/a/a;->setHeadLength(S)V

    goto :goto_1

    :cond_4
    :try_start_5
    iget-object v1, p0, Lcom/vivo/PCTools/b/b;->d:Lcom/vivo/PCTools/b/a;

    invoke-virtual {v1, v0}, Lcom/vivo/PCTools/b/a;->deleteTarget(Ljava/lang/String;)Z

    move-result v0

    iget-object v1, p0, Lcom/vivo/PCTools/b/b;->d:Lcom/vivo/PCTools/b/a;

    invoke-virtual {v1}, Lcom/vivo/PCTools/b/a;->UpdateMedia()V

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "FileManagerHandler"

    const-string v2, "finish delete file."

    invoke-static {v1, v2}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    new-array v1, v3, [B

    invoke-virtual {p1, v1, v3}, Lcom/vivo/PCTools/q/a/a;->setAppend([BI)V

    new-array v1, v3, [B

    invoke-virtual {p1, v1, v3}, Lcom/vivo/PCTools/q/a/a;->setBody([BI)V

    invoke-virtual {p1, v3}, Lcom/vivo/PCTools/q/a/a;->setBodyLength(I)V

    invoke-virtual {p1, v3}, Lcom/vivo/PCTools/q/a/a;->setHeadLength(S)V

    throw v0

    :cond_5
    const/16 v0, 0xd

    :try_start_6
    invoke-virtual {p1, v0}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V
    :try_end_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0
.end method

.method private b(Ljava/io/InputStream;Lcom/vivo/PCTools/q/a/a;)V
    .locals 7

    const/4 v6, 0x0

    const-string v1, ""

    :try_start_0
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p2}, Lcom/vivo/PCTools/q/a/a;->getAppend()[B

    move-result-object v0

    const-string v3, "utf-8"

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v2, v0}, Lcom/vivo/PCTools/b/b;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    const-string v0, "FileManagerHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "NewDest = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_0
    const/4 v3, 0x0

    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "FileManagerHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "FatherPath = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->canWrite()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x5

    invoke-virtual {p2, v0}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    :try_start_1
    invoke-virtual {p2}, Lcom/vivo/PCTools/q/a/a;->getBodyLength()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {p1, v2, v3}, Ljava/io/InputStream;->skip(J)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    :goto_2
    const-string v0, "FileManagerHandler"

    const-string v2, "finish writing folder."

    invoke-static {v0, v2}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/vivo/PCTools/q/a/a;->getRelyCode()B

    move-result v0

    if-nez v0, :cond_5

    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v1, v0

    invoke-virtual {p2, v0, v1}, Lcom/vivo/PCTools/q/a/a;->setAppend([BI)V

    array-length v0, v0

    int-to-short v0, v0

    invoke-virtual {p2, v0}, Lcom/vivo/PCTools/q/a/a;->setHeadLength(S)V

    :goto_3
    new-array v0, v6, [B

    invoke-virtual {p2, v0, v6}, Lcom/vivo/PCTools/q/a/a;->setBody([BI)V

    invoke-virtual {p2, v6}, Lcom/vivo/PCTools/q/a/a;->setBodyLength(I)V

    :goto_4
    return-void

    :cond_0
    :try_start_2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    const-string v1, "FileManagerHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "NewDest = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v1, v2

    goto :goto_0

    :cond_1
    :try_start_4
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    const/16 v0, 0x8

    :try_start_5
    invoke-virtual {p2, v0}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_5
    :try_start_6
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    const/16 v0, 0xb

    invoke-virtual {p2, v0}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    invoke-virtual {p2}, Lcom/vivo/PCTools/q/a/a;->getBodyLength()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {p1, v2, v3}, Ljava/io/InputStream;->skip(J)J
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    :goto_6
    const-string v0, "FileManagerHandler"

    const-string v2, "finish writing folder."

    invoke-static {v0, v2}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/vivo/PCTools/q/a/a;->getRelyCode()B

    move-result v0

    if-nez v0, :cond_3

    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v1, v0

    invoke-virtual {p2, v0, v1}, Lcom/vivo/PCTools/q/a/a;->setAppend([BI)V

    array-length v0, v0

    int-to-short v0, v0

    invoke-virtual {p2, v0}, Lcom/vivo/PCTools/q/a/a;->setHeadLength(S)V

    :goto_7
    new-array v0, v6, [B

    invoke-virtual {p2, v0, v6}, Lcom/vivo/PCTools/q/a/a;->setBody([BI)V

    invoke-virtual {p2, v6}, Lcom/vivo/PCTools/q/a/a;->setBodyLength(I)V

    goto :goto_4

    :cond_2
    :try_start_8
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :catch_2
    move-exception v0

    const/4 v0, 0x5

    :try_start_9
    invoke-virtual {p2, v0}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V
    :try_end_9
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    :goto_8
    :try_start_a
    invoke-virtual {p2}, Lcom/vivo/PCTools/q/a/a;->getBodyLength()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p1, v2, v3}, Ljava/io/InputStream;->skip(J)J
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    :goto_9
    const-string v2, "FileManagerHandler"

    const-string v3, "finish writing folder."

    invoke-static {v2, v3}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/vivo/PCTools/q/a/a;->getRelyCode()B

    move-result v2

    if-nez v2, :cond_4

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v2, v1

    invoke-virtual {p2, v1, v2}, Lcom/vivo/PCTools/q/a/a;->setAppend([BI)V

    array-length v1, v1

    int-to-short v1, v1

    invoke-virtual {p2, v1}, Lcom/vivo/PCTools/q/a/a;->setHeadLength(S)V

    :goto_a
    new-array v1, v6, [B

    invoke-virtual {p2, v1, v6}, Lcom/vivo/PCTools/q/a/a;->setBody([BI)V

    invoke-virtual {p2, v6}, Lcom/vivo/PCTools/q/a/a;->setBodyLength(I)V

    throw v0

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    :cond_3
    new-array v0, v6, [B

    invoke-virtual {p2, v0, v6}, Lcom/vivo/PCTools/q/a/a;->setAppend([BI)V

    invoke-virtual {p2, v6}, Lcom/vivo/PCTools/q/a/a;->setHeadLength(S)V

    goto :goto_7

    :catch_4
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9

    :cond_4
    new-array v1, v6, [B

    invoke-virtual {p2, v1, v6}, Lcom/vivo/PCTools/q/a/a;->setAppend([BI)V

    invoke-virtual {p2, v6}, Lcom/vivo/PCTools/q/a/a;->setHeadLength(S)V

    goto :goto_a

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    :cond_5
    new-array v0, v6, [B

    invoke-virtual {p2, v0, v6}, Lcom/vivo/PCTools/q/a/a;->setAppend([BI)V

    invoke-virtual {p2, v6}, Lcom/vivo/PCTools/q/a/a;->setHeadLength(S)V

    goto/16 :goto_3

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_8

    :catch_6
    move-exception v0

    move-object v1, v2

    goto/16 :goto_5
.end method

.method private b(Ljava/io/InputStream;Lcom/vivo/PCTools/q/a/a;Z)V
    .locals 8

    const/4 v7, 0x0

    :try_start_0
    invoke-static {p1, p2}, Landroid/support/v4/app/bm;->readXml(Ljava/io/InputStream;Lcom/vivo/PCTools/q/a/a;)[Ljava/lang/String;

    move-result-object v2

    const-string v0, "FileManagerHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "source = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "dest = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v3, 0x1

    aget-object v3, v2, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v3}, Lcom/vivo/PCTools/b/b;->getFolderSize(Ljava/io/File;)J

    move-result-wide v0

    :cond_0
    :goto_0
    const-string v3, "FileManagerHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Source File size is = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    aget-object v3, v2, v3

    invoke-direct {p0, v0, v1, v3}, Lcom/vivo/PCTools/b/b;->a(JLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    invoke-virtual {p2, v0}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    :goto_1
    invoke-virtual {p2}, Lcom/vivo/PCTools/q/a/a;->getRelyCode()B

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/File;

    const/4 v1, 0x0

    aget-object v1, v2, v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    aget-object v0, v2, v0

    const/4 v1, 0x0

    aget-object v1, v2, v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v1, v2, v1

    new-instance v3, Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    aget-object v2, v2, v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/support/v4/app/bm;->CreateMoveXml(Ljava/lang/String;Ljava/lang/String;)Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    const-string v0, "FileManagerHandler"

    const-string v1, "finish copying file."

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "/data/data/com.vivo.PCTools/test.xml"

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/vivo/PCTools/q/a/a;->getRelyCode()B

    move-result v2

    if-nez v2, :cond_e

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    invoke-virtual {p2, v1}, Lcom/vivo/PCTools/q/a/a;->setBodyLength(I)V

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    invoke-virtual {p2, v1, v0}, Lcom/vivo/PCTools/q/a/a;->setBody([BI)V

    :goto_2
    new-array v0, v7, [B

    invoke-virtual {p2, v0, v7}, Lcom/vivo/PCTools/q/a/a;->setAppend([BI)V

    invoke-virtual {p2, v7}, Lcom/vivo/PCTools/q/a/a;->setHeadLength(S)V

    :goto_3
    return-void

    :cond_2
    :try_start_1
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v0

    goto/16 :goto_0

    :cond_3
    invoke-virtual {v4}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x5

    invoke-virtual {p2, v0}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v0, "FileManagerHandler"

    const-string v1, "finish copying file."

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "/data/data/com.vivo.PCTools/test.xml"

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/vivo/PCTools/q/a/a;->getRelyCode()B

    move-result v2

    if-nez v2, :cond_c

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    invoke-virtual {p2, v1}, Lcom/vivo/PCTools/q/a/a;->setBodyLength(I)V

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    invoke-virtual {p2, v1, v0}, Lcom/vivo/PCTools/q/a/a;->setBody([BI)V

    :goto_4
    new-array v0, v7, [B

    invoke-virtual {p2, v0, v7}, Lcom/vivo/PCTools/q/a/a;->setAppend([BI)V

    invoke-virtual {p2, v7}, Lcom/vivo/PCTools/q/a/a;->setHeadLength(S)V

    goto :goto_3

    :cond_4
    :try_start_3
    iget-object v0, p0, Lcom/vivo/PCTools/b/b;->d:Lcom/vivo/PCTools/b/a;

    const/4 v1, 0x0

    aget-object v1, v2, v1

    const/4 v3, 0x1

    aget-object v3, v2, v3

    invoke-virtual {v0, v1, v3, p3}, Lcom/vivo/PCTools/b/a;->MoveToDirector(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_5

    const/16 v0, 0x40

    invoke-virtual {p2, v0}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    const-string v1, "FileManagerHandler"

    const-string v2, "finish copying file."

    invoke-static {v1, v2}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "/data/data/com.vivo.PCTools/test.xml"

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/vivo/PCTools/q/a/a;->getRelyCode()B

    move-result v3

    if-nez v3, :cond_d

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    invoke-virtual {p2, v2}, Lcom/vivo/PCTools/q/a/a;->setBodyLength(I)V

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    invoke-virtual {p2, v2, v1}, Lcom/vivo/PCTools/q/a/a;->setBody([BI)V

    :goto_5
    new-array v1, v7, [B

    invoke-virtual {p2, v1, v7}, Lcom/vivo/PCTools/q/a/a;->setAppend([BI)V

    invoke-virtual {p2, v7}, Lcom/vivo/PCTools/q/a/a;->setHeadLength(S)V

    throw v0

    :cond_5
    const/4 v1, -0x2

    if-ne v0, v1, :cond_6

    const/16 v0, 0x41

    :try_start_4
    invoke-virtual {p2, v0}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    goto/16 :goto_1

    :cond_6
    const/4 v1, -0x3

    if-ne v0, v1, :cond_7

    const/16 v0, 0x42

    invoke-virtual {p2, v0}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    goto/16 :goto_1

    :cond_7
    const/4 v1, -0x4

    if-ne v0, v1, :cond_8

    const/16 v0, 0x43

    invoke-virtual {p2, v0}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    goto/16 :goto_1

    :cond_8
    const/4 v1, -0x5

    if-ne v0, v1, :cond_9

    const/16 v0, 0x44

    invoke-virtual {p2, v0}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    goto/16 :goto_1

    :cond_9
    const/4 v1, -0x6

    if-ne v0, v1, :cond_a

    const/16 v0, 0x45

    invoke-virtual {p2, v0}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    goto/16 :goto_1

    :cond_a
    const/4 v1, -0x7

    if-ne v0, v1, :cond_b

    const/4 v0, 0x5

    invoke-virtual {p2, v0}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    goto/16 :goto_1

    :cond_b
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    :cond_c
    new-array v0, v7, [B

    invoke-virtual {p2, v0, v7}, Lcom/vivo/PCTools/q/a/a;->setBody([BI)V

    invoke-virtual {p2, v7}, Lcom/vivo/PCTools/q/a/a;->setBodyLength(I)V

    goto/16 :goto_4

    :cond_d
    new-array v1, v7, [B

    invoke-virtual {p2, v1, v7}, Lcom/vivo/PCTools/q/a/a;->setBody([BI)V

    invoke-virtual {p2, v7}, Lcom/vivo/PCTools/q/a/a;->setBodyLength(I)V

    goto :goto_5

    :cond_e
    new-array v0, v7, [B

    invoke-virtual {p2, v0, v7}, Lcom/vivo/PCTools/q/a/a;->setBody([BI)V

    invoke-virtual {p2, v7}, Lcom/vivo/PCTools/q/a/a;->setBodyLength(I)V

    goto/16 :goto_2
.end method

.method private static c(Lcom/vivo/PCTools/q/a/a;)V
    .locals 5

    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/vivo/PCTools/q/a/a;->getAppend()[B

    move-result-object v1

    const-string v2, "utf-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v2, "FileManagerHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "file path : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "FileManagerHandler"

    const-string v1, "file not exists"

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    const-string v0, "FileManagerHandler"

    const-string v1, "finish reading folder."

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_0
    const/4 v1, 0x1

    :try_start_1
    new-array v1, v1, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-byte v3, v1, v2

    invoke-static {v0, v1}, Landroid/support/v4/app/bm;->getOutputStreamFromFile(Ljava/lang/String;[B)Ljava/io/OutputStream;

    const/4 v0, 0x0

    aget-byte v0, v1, v0

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    const-string v0, "/data/data/com.vivo.PCTools/refersh.xml"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    invoke-virtual {p0, v1}, Lcom/vivo/PCTools/q/a/a;->setBodyLength(I)V

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    invoke-virtual {p0, v1, v0}, Lcom/vivo/PCTools/q/a/a;->setBody([BI)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v0, "FileManagerHandler"

    const-string v1, "finish reading folder."

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    const-string v1, "FileManagerHandler"

    const-string v2, "finish reading folder."

    invoke-static {v1, v2}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method private static c(Ljava/io/InputStream;Lcom/vivo/PCTools/q/a/a;Z)V
    .locals 8

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getAppend()[B

    move-result-object v1

    const-string v4, "utf-8"

    invoke-direct {v0, v1, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    const-string v5, "/"

    invoke-virtual {v0, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, "FileManagerHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "FatherPath = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->canWrite()Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v1, 0x5

    invoke-virtual {p1, v1}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    :goto_0
    const-string v1, "FileManagerHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "rely code is  = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getRelyCode()B

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getRelyCode()B

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v4, "FileManagerHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "ParemtPath = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v0}, Landroid/support/v4/app/bm;->CreateUpLoadOrNewFolderXml(Ljava/lang/String;Ljava/lang/String;)Ljava/io/OutputStream;

    const-string v0, "FileManagerHandler"

    const-string v1, "have create upload xml file"

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getBodyLength()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Ljava/io/InputStream;->skip(J)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    :goto_1
    const-string v0, "FileManagerHandler"

    const-string v1, "finish writing folder."

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "/data/data/com.vivo.PCTools/upload.xml"

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getRelyCode()B

    move-result v0

    if-nez v0, :cond_9

    move v0, v2

    :goto_2
    if-eqz v0, :cond_8

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    invoke-virtual {p1, v0}, Lcom/vivo/PCTools/q/a/a;->setBodyLength(I)V

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    invoke-virtual {p1, v0, v1}, Lcom/vivo/PCTools/q/a/a;->setBody([BI)V

    :goto_3
    new-array v0, v3, [B

    invoke-virtual {p1, v0, v3}, Lcom/vivo/PCTools/q/a/a;->setAppend([BI)V

    invoke-virtual {p1, v3}, Lcom/vivo/PCTools/q/a/a;->setHeadLength(S)V

    :goto_4
    return-void

    :cond_1
    :try_start_2
    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v4

    if-nez v4, :cond_3

    :try_start_3
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    const/16 v1, 0x8

    :try_start_4
    invoke-virtual {p1, v1}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    :catch_1
    move-exception v0

    :try_start_5
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getBodyLength()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Ljava/io/InputStream;->skip(J)J
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :goto_5
    const-string v0, "FileManagerHandler"

    const-string v1, "finish writing folder."

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "/data/data/com.vivo.PCTools/upload.xml"

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getRelyCode()B

    move-result v4

    if-nez v4, :cond_b

    :goto_6
    if-eqz v2, :cond_6

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    invoke-virtual {p1, v1}, Lcom/vivo/PCTools/q/a/a;->setBodyLength(I)V

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    invoke-virtual {p1, v1, v0}, Lcom/vivo/PCTools/q/a/a;->setBody([BI)V

    :goto_7
    new-array v0, v3, [B

    invoke-virtual {p1, v0, v3}, Lcom/vivo/PCTools/q/a/a;->setAppend([BI)V

    invoke-virtual {p1, v3}, Lcom/vivo/PCTools/q/a/a;->setHeadLength(S)V

    goto :goto_4

    :cond_2
    :try_start_7
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catch_2
    move-exception v1

    const/4 v1, 0x5

    :try_start_8
    invoke-virtual {p1, v1}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V
    :try_end_8
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    :try_start_9
    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getBodyLength()I

    move-result v1

    int-to-long v4, v1

    invoke-virtual {p0, v4, v5}, Ljava/io/InputStream;->skip(J)J
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    :goto_8
    const-string v1, "FileManagerHandler"

    const-string v4, "finish writing folder."

    invoke-static {v1, v4}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "/data/data/com.vivo.PCTools/upload.xml"

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getRelyCode()B

    move-result v5

    if-nez v5, :cond_a

    :goto_9
    if-eqz v2, :cond_7

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    invoke-virtual {p1, v2}, Lcom/vivo/PCTools/q/a/a;->setBodyLength(I)V

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    invoke-virtual {p1, v2, v1}, Lcom/vivo/PCTools/q/a/a;->setBody([BI)V

    :goto_a
    new-array v1, v3, [B

    invoke-virtual {p1, v1, v3}, Lcom/vivo/PCTools/q/a/a;->setAppend([BI)V

    invoke-virtual {p1, v3}, Lcom/vivo/PCTools/q/a/a;->setHeadLength(S)V

    throw v0

    :cond_3
    :try_start_a
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x9

    invoke-virtual {p1, v1}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    goto/16 :goto_0

    :cond_4
    if-eqz p2, :cond_5

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    goto/16 :goto_0

    :cond_5
    const/16 v1, 0xa

    invoke-virtual {p1, v1}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V
    :try_end_a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_0

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_5

    :cond_6
    new-array v0, v3, [B

    invoke-virtual {p1, v0, v3}, Lcom/vivo/PCTools/q/a/a;->setBody([BI)V

    invoke-virtual {p1, v3}, Lcom/vivo/PCTools/q/a/a;->setBodyLength(I)V

    goto/16 :goto_7

    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8

    :cond_7
    new-array v1, v3, [B

    invoke-virtual {p1, v1, v3}, Lcom/vivo/PCTools/q/a/a;->setBody([BI)V

    invoke-virtual {p1, v3}, Lcom/vivo/PCTools/q/a/a;->setBodyLength(I)V

    goto :goto_a

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    :cond_8
    new-array v0, v3, [B

    invoke-virtual {p1, v0, v3}, Lcom/vivo/PCTools/q/a/a;->setBody([BI)V

    invoke-virtual {p1, v3}, Lcom/vivo/PCTools/q/a/a;->setBodyLength(I)V

    goto/16 :goto_3

    :cond_9
    move v0, v3

    goto/16 :goto_2

    :cond_a
    move v2, v3

    goto :goto_9

    :cond_b
    move v2, v3

    goto/16 :goto_6
.end method


# virtual methods
.method public final CloseSocket()V
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V

    iget-object v0, p0, Lcom/vivo/PCTools/b/b;->f:Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    const/4 v0, 0x0

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    const/4 v0, 0x0

    invoke-interface {v0}, Lorg/jboss/netty/channel/Channel;->close()Lorg/jboss/netty/channel/ChannelFuture;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public final DoHandlerWorker()V
    .locals 2

    iget-object v0, p0, Lcom/vivo/PCTools/b/b;->f:Ljava/io/BufferedInputStream;

    iget-object v1, p0, Lcom/vivo/PCTools/b/b;->g:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {p0, v0, v1}, Lcom/vivo/PCTools/b/b;->getDataFromSocket(Ljava/io/BufferedInputStream;Lcom/vivo/PCTools/q/a/a;)V

    iget-object v0, p0, Lcom/vivo/PCTools/b/b;->g:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/b/b;->SendToPC(Lcom/vivo/PCTools/q/a/a;)V

    return-void
.end method

.method public final HandleMessage()V
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x2

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/vivo/PCTools/b/b;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v1}, Lcom/vivo/PCTools/q/a/a;->getCmd()B

    move-result v1

    aput-byte v1, v0, v3

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/vivo/PCTools/b/b;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v2}, Lcom/vivo/PCTools/q/a/a;->getRelyCode()B

    move-result v2

    aput-byte v2, v0, v1

    invoke-static {v0, v3}, Landroid/support/v4/media/session/MediaSessionCompat;->byteToShort([BI)S

    move-result v0

    const/16 v1, 0x200

    if-eq v0, v1, :cond_0

    const/16 v1, 0x201

    if-ne v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/vivo/PCTools/b/b;->g:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0, v3}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/vivo/PCTools/b/b;->DoHandlerWorker()V

    return-void

    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/vivo/PCTools/b/b;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0}, Lcom/vivo/PCTools/q/a/a;->getBodyLength()I

    move-result v0

    if-lez v0, :cond_1

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/vivo/PCTools/b/b;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v1}, Lcom/vivo/PCTools/q/a/a;->getBody()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lcom/vivo/PCTools/b/b;->f:Ljava/io/BufferedInputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "FileManagerHandler"

    const-string v2, "get Stream Error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public final ScanMedia(Ljava/lang/String;)V
    .locals 8

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-static {v1}, Lcom/vivo/PCTools/b/a;->isImageFile(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v0, "FileManagerHandler"

    const-string v2, "is image file"

    invoke-static {v0, v2}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    :cond_1
    :goto_1
    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/vivo/PCTools/b/b;->e:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "date_modified"

    new-instance v5, Ljava/lang/String;

    const-string v6, "0"

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "_display_name"

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "_data"

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "_data=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/PCTools/b/b;->e:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/vivo/PCTools/b/a;->scanMediaFile(Landroid/content/Context;Ljava/io/File;)V

    goto :goto_0

    :cond_2
    invoke-static {v1}, Lcom/vivo/PCTools/b/a;->isAudioFile(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v2, "FileManagerHandler"

    const-string v3, "is audio file"

    invoke-static {v2, v3}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-static {v1}, Lcom/vivo/PCTools/b/a;->isVideoFile(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v2, "FileManagerHandler"

    const-string v3, "is video file"

    invoke-static {v2, v3}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/vivo/PCTools/b/b;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/vivo/PCTools/b/a;->scanAllMediaFile(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public final ScanWroteFile(Ljava/io/InputStream;Lcom/vivo/PCTools/q/a/a;)V
    .locals 3

    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p2}, Lcom/vivo/PCTools/q/a/a;->getAppend()[B

    move-result-object v1

    const-string v2, "utf-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/b/b;->ScanMedia(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public final getDataFromFile(Ljava/lang/String;)Lcom/vivo/PCTools/q/a/a;
    .locals 7

    const/4 v6, 0x0

    new-instance v2, Lcom/vivo/PCTools/q/a/a;

    invoke-direct {v2}, Lcom/vivo/PCTools/q/a/a;-><init>()V

    const/4 v0, 0x1

    new-array v1, v0, [B

    aput-byte v6, v1, v6

    invoke-static {p1, v1}, Landroid/support/v4/app/bm;->getOutputStreamFromFile(Ljava/lang/String;[B)Ljava/io/OutputStream;

    move-result-object v0

    const-string v3, "FileManagerHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "rely code is "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v5, v1, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    aget-byte v3, v1, v6

    if-eqz v3, :cond_0

    new-array v0, v6, [B

    invoke-virtual {v2, v0, v6}, Lcom/vivo/PCTools/q/a/a;->setBody([BI)V

    invoke-virtual {v2, v6}, Lcom/vivo/PCTools/q/a/a;->setBodyLength(I)V

    aget-byte v0, v1, v6

    invoke-virtual {v2, v0}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    instance-of v3, v0, Ljava/io/ByteArrayOutputStream;

    if-eqz v3, :cond_1

    check-cast v0, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    array-length v3, v0

    invoke-virtual {v2, v0, v3}, Lcom/vivo/PCTools/q/a/a;->setBody([BI)V

    array-length v0, v0

    invoke-virtual {v2, v0}, Lcom/vivo/PCTools/q/a/a;->setBodyLength(I)V

    aget-byte v0, v1, v6

    invoke-virtual {v2, v0}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    :goto_1
    const-string v1, ""

    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v2}, Lcom/vivo/PCTools/q/a/a;->getBody()[B

    move-result-object v3

    const-string v4, "utf-8"

    invoke-direct {v0, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    const-string v1, "FileManagerHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "FileManager:body is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    goto :goto_0

    :cond_1
    new-array v0, v6, [B

    invoke-virtual {v2, v0, v6}, Lcom/vivo/PCTools/q/a/a;->setBody([BI)V

    invoke-virtual {v2, v6}, Lcom/vivo/PCTools/q/a/a;->setBodyLength(I)V

    aget-byte v0, v1, v6

    invoke-virtual {v2, v0}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    move-object v0, v1

    goto :goto_2
.end method

.method public final getDataFromSocket(Ljava/io/BufferedInputStream;Lcom/vivo/PCTools/q/a/a;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v0, 0x2

    new-array v0, v0, [B

    invoke-virtual {p2}, Lcom/vivo/PCTools/q/a/a;->getCmd()B

    move-result v1

    aput-byte v1, v0, v5

    invoke-virtual {p2}, Lcom/vivo/PCTools/q/a/a;->getRelyCode()B

    move-result v1

    aput-byte v1, v0, v6

    invoke-static {v0, v5}, Landroid/support/v4/media/session/MediaSessionCompat;->byteToShort([BI)S

    move-result v1

    const-string v2, "FileManagerHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "sub module code = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v4, v0, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-byte v0, v0, v6

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    sparse-switch v1, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    invoke-virtual {p0, p1, p2}, Lcom/vivo/PCTools/b/b;->handleReadFile(Ljava/io/InputStream;Lcom/vivo/PCTools/q/a/a;)V

    goto :goto_0

    :sswitch_1
    invoke-static {p2}, Lcom/vivo/PCTools/b/b;->c(Lcom/vivo/PCTools/q/a/a;)V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0, p1, p2}, Lcom/vivo/PCTools/b/b;->ScanWroteFile(Ljava/io/InputStream;Lcom/vivo/PCTools/q/a/a;)V

    goto :goto_0

    :sswitch_3
    invoke-virtual {p0, p1, p2}, Lcom/vivo/PCTools/b/b;->ScanWroteFile(Ljava/io/InputStream;Lcom/vivo/PCTools/q/a/a;)V

    goto :goto_0

    :sswitch_4
    invoke-virtual {p0, p1, p2}, Lcom/vivo/PCTools/b/b;->handleWriteFileTestExist(Ljava/io/InputStream;Lcom/vivo/PCTools/q/a/a;)V

    goto :goto_0

    :sswitch_5
    invoke-virtual {p0, p1, p2}, Lcom/vivo/PCTools/b/b;->handleWriteFileTestEnoughSpace(Ljava/io/InputStream;Lcom/vivo/PCTools/q/a/a;)V

    goto :goto_0

    :sswitch_6
    invoke-static {p1, p2, v5}, Lcom/vivo/PCTools/b/b;->c(Ljava/io/InputStream;Lcom/vivo/PCTools/q/a/a;Z)V

    goto :goto_0

    :sswitch_7
    invoke-static {p1, p2, v6}, Lcom/vivo/PCTools/b/b;->c(Ljava/io/InputStream;Lcom/vivo/PCTools/q/a/a;Z)V

    goto :goto_0

    :sswitch_8
    invoke-direct {p0, p1, p2}, Lcom/vivo/PCTools/b/b;->b(Ljava/io/InputStream;Lcom/vivo/PCTools/q/a/a;)V

    goto :goto_0

    :sswitch_9
    invoke-direct {p0, p2}, Lcom/vivo/PCTools/b/b;->b(Lcom/vivo/PCTools/q/a/a;)V

    goto :goto_0

    :sswitch_a
    invoke-direct {p0, p2}, Lcom/vivo/PCTools/b/b;->a(Lcom/vivo/PCTools/q/a/a;)V

    goto :goto_0

    :sswitch_b
    invoke-direct {p0, p1, p2, v5}, Lcom/vivo/PCTools/b/b;->a(Ljava/io/InputStream;Lcom/vivo/PCTools/q/a/a;Z)V

    goto :goto_0

    :sswitch_c
    invoke-direct {p0, p1, p2, v6}, Lcom/vivo/PCTools/b/b;->a(Ljava/io/InputStream;Lcom/vivo/PCTools/q/a/a;Z)V

    goto :goto_0

    :sswitch_d
    invoke-direct {p0, p1, p2, v5}, Lcom/vivo/PCTools/b/b;->b(Ljava/io/InputStream;Lcom/vivo/PCTools/q/a/a;Z)V

    goto :goto_0

    :sswitch_e
    invoke-direct {p0, p1, p2, v6}, Lcom/vivo/PCTools/b/b;->b(Ljava/io/InputStream;Lcom/vivo/PCTools/q/a/a;Z)V

    goto :goto_0

    :sswitch_f
    invoke-direct {p0, p1, p2}, Lcom/vivo/PCTools/b/b;->a(Ljava/io/InputStream;Lcom/vivo/PCTools/q/a/a;)V

    goto :goto_0

    :sswitch_10
    invoke-direct {p0, p1, p2}, Lcom/vivo/PCTools/b/b;->a(Ljava/io/InputStream;Lcom/vivo/PCTools/q/a/a;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x100 -> :sswitch_0
        0x200 -> :sswitch_2
        0x201 -> :sswitch_3
        0x202 -> :sswitch_4
        0x203 -> :sswitch_5
        0x210 -> :sswitch_6
        0x211 -> :sswitch_7
        0x212 -> :sswitch_8
        0x300 -> :sswitch_9
        0x400 -> :sswitch_1
        0x500 -> :sswitch_a
        0x600 -> :sswitch_b
        0x601 -> :sswitch_c
        0x610 -> :sswitch_d
        0x611 -> :sswitch_e
        0x700 -> :sswitch_f
        0x701 -> :sswitch_10
    .end sparse-switch
.end method

.method public final getFolderSize(Ljava/io/File;)J
    .locals 6

    const-wide/16 v1, 0x0

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    const/4 v0, 0x0

    :goto_0
    array-length v4, v3

    if-lt v0, v4, :cond_0

    return-wide v1

    :cond_0
    aget-object v4, v3, v0

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1

    aget-object v4, v3, v0

    invoke-virtual {p0, v4}, Lcom/vivo/PCTools/b/b;->getFolderSize(Ljava/io/File;)J

    move-result-wide v4

    add-long/2addr v1, v4

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    aget-object v4, v3, v0

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    add-long/2addr v1, v4

    goto :goto_1
.end method

.method public final handleReadFile(Ljava/io/InputStream;Lcom/vivo/PCTools/q/a/a;)V
    .locals 4

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p2}, Lcom/vivo/PCTools/q/a/a;->getAppend()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    const-string v1, "FileManagerHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "read file,filename is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/b/b;->getDataFromFile(Ljava/lang/String;)Lcom/vivo/PCTools/q/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/PCTools/q/a/a;->getBodyLength()I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/vivo/PCTools/q/a/a;->setBodyLength(I)V

    invoke-virtual {v0}, Lcom/vivo/PCTools/q/a/a;->getBody()[B

    move-result-object v1

    invoke-virtual {v0}, Lcom/vivo/PCTools/q/a/a;->getBody()[B

    move-result-object v2

    array-length v2, v2

    invoke-virtual {p2, v1, v2}, Lcom/vivo/PCTools/q/a/a;->setBody([BI)V

    invoke-virtual {v0}, Lcom/vivo/PCTools/q/a/a;->getRelyCode()B

    move-result v1

    invoke-virtual {p2, v1}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    invoke-virtual {v0}, Lcom/vivo/PCTools/q/a/a;->getHeadLengthShort()S

    move-result v1

    invoke-virtual {p2, v1}, Lcom/vivo/PCTools/q/a/a;->setHeadLength(S)V

    invoke-virtual {v0}, Lcom/vivo/PCTools/q/a/a;->getAppend()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lcom/vivo/PCTools/q/a/a;->setAppend([BI)V

    return-void
.end method

.method public final handleWriteFileTestEnoughSpace(Ljava/io/InputStream;Lcom/vivo/PCTools/q/a/a;)V
    .locals 7

    const/4 v6, 0x0

    :try_start_0
    const-string v0, "FileManagerHandler"

    const-string v1, "come to handleWriteFileTestEnoughSpace"

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, p2}, Landroid/support/v4/app/bm;->readJudegeSpaceXml(Ljava/io/InputStream;Lcom/vivo/PCTools/q/a/a;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-string v0, "FileManagerHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "NeedSpace size = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v2, v3, v1}, Lcom/vivo/PCTools/b/b;->a(JLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    invoke-virtual {p2, v0}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    const-string v0, "FileManagerHandler"

    const-string v1, "finish test folder."

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    new-array v0, v6, [B

    invoke-virtual {p2, v0, v6}, Lcom/vivo/PCTools/q/a/a;->setAppend([BI)V

    new-array v0, v6, [B

    invoke-virtual {p2, v0, v6}, Lcom/vivo/PCTools/q/a/a;->setBody([BI)V

    invoke-virtual {p2, v6}, Lcom/vivo/PCTools/q/a/a;->setBodyLength(I)V

    invoke-virtual {p2, v6}, Lcom/vivo/PCTools/q/a/a;->setHeadLength(S)V

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p2, v0}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v0, "FileManagerHandler"

    const-string v1, "finish test folder."

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    new-array v0, v6, [B

    invoke-virtual {p2, v0, v6}, Lcom/vivo/PCTools/q/a/a;->setAppend([BI)V

    new-array v0, v6, [B

    invoke-virtual {p2, v0, v6}, Lcom/vivo/PCTools/q/a/a;->setBody([BI)V

    invoke-virtual {p2, v6}, Lcom/vivo/PCTools/q/a/a;->setBodyLength(I)V

    invoke-virtual {p2, v6}, Lcom/vivo/PCTools/q/a/a;->setHeadLength(S)V

    goto :goto_1

    :catchall_0
    move-exception v0

    const-string v1, "FileManagerHandler"

    const-string v2, "finish test folder."

    invoke-static {v1, v2}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    new-array v1, v6, [B

    invoke-virtual {p2, v1, v6}, Lcom/vivo/PCTools/q/a/a;->setAppend([BI)V

    new-array v1, v6, [B

    invoke-virtual {p2, v1, v6}, Lcom/vivo/PCTools/q/a/a;->setBody([BI)V

    invoke-virtual {p2, v6}, Lcom/vivo/PCTools/q/a/a;->setBodyLength(I)V

    invoke-virtual {p2, v6}, Lcom/vivo/PCTools/q/a/a;->setHeadLength(S)V

    throw v0
.end method

.method public final handleWriteFileTestExist(Ljava/io/InputStream;Lcom/vivo/PCTools/q/a/a;)V
    .locals 5

    const/4 v4, 0x0

    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p2}, Lcom/vivo/PCTools/q/a/a;->getAppend()[B

    move-result-object v1

    const-string v2, "utf-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string v1, "FileManagerHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "test path is ="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x6

    invoke-virtual {p2, v0}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    const-string v0, "FileManagerHandler"

    const-string v1, "finish test folder."

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    new-array v0, v4, [B

    invoke-virtual {p2, v0, v4}, Lcom/vivo/PCTools/q/a/a;->setAppend([BI)V

    new-array v0, v4, [B

    invoke-virtual {p2, v0, v4}, Lcom/vivo/PCTools/q/a/a;->setBody([BI)V

    invoke-virtual {p2, v4}, Lcom/vivo/PCTools/q/a/a;->setBodyLength(I)V

    invoke-virtual {p2, v4}, Lcom/vivo/PCTools/q/a/a;->setHeadLength(S)V

    :goto_1
    return-void

    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FileManagerHandler"

    invoke-static {v1, v0}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x5

    invoke-virtual {p2, v0}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v0, "FileManagerHandler"

    const-string v1, "finish test folder."

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    new-array v0, v4, [B

    invoke-virtual {p2, v0, v4}, Lcom/vivo/PCTools/q/a/a;->setAppend([BI)V

    new-array v0, v4, [B

    invoke-virtual {p2, v0, v4}, Lcom/vivo/PCTools/q/a/a;->setBody([BI)V

    invoke-virtual {p2, v4}, Lcom/vivo/PCTools/q/a/a;->setBodyLength(I)V

    invoke-virtual {p2, v4}, Lcom/vivo/PCTools/q/a/a;->setHeadLength(S)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :try_start_3
    invoke-virtual {p2, v0}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "FileManagerHandler"

    const-string v2, "finish test folder."

    invoke-static {v1, v2}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    new-array v1, v4, [B

    invoke-virtual {p2, v1, v4}, Lcom/vivo/PCTools/q/a/a;->setAppend([BI)V

    new-array v1, v4, [B

    invoke-virtual {p2, v1, v4}, Lcom/vivo/PCTools/q/a/a;->setBody([BI)V

    invoke-virtual {p2, v4}, Lcom/vivo/PCTools/q/a/a;->setBodyLength(I)V

    invoke-virtual {p2, v4}, Lcom/vivo/PCTools/q/a/a;->setHeadLength(S)V

    throw v0
.end method

.method public final onCreateXmlFile(Lorg/xmlpull/v1/XmlSerializer;I)V
    .locals 0

    return-void
.end method
