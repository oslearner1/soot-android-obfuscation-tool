.class public final Lcom/vivo/PCTools/l/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/vivo/PCTools/l/c;

.field private c:Lcom/vivo/PCTools/l/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "MusicService"

    const-string v1, "MusicService"

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logI(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/vivo/PCTools/l/a;->a:Landroid/content/Context;

    new-instance v0, Lcom/vivo/PCTools/l/c;

    iget-object v1, p0, Lcom/vivo/PCTools/l/a;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/vivo/PCTools/l/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vivo/PCTools/l/a;->b:Lcom/vivo/PCTools/l/c;

    new-instance v0, Lcom/vivo/PCTools/l/d;

    iget-object v1, p0, Lcom/vivo/PCTools/l/a;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/vivo/PCTools/l/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vivo/PCTools/l/a;->c:Lcom/vivo/PCTools/l/d;

    return-void
.end method

.method private a(Lcom/vivo/PCTools/q/a/a;)Lcom/vivo/PCTools/q/a/a;
    .locals 6

    const/4 v5, 0x0

    const-string v0, "MusicService"

    const-string v1, "MusicService----------------------------------------------------setRingTone---In"

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logI(Ljava/lang/String;Ljava/lang/String;)V

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

    iget-object v1, p0, Lcom/vivo/PCTools/l/a;->a:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/io/DataInputStream;

    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    :try_start_0
    iget-object v3, p0, Lcom/vivo/PCTools/l/a;->c:Lcom/vivo/PCTools/l/d;

    invoke-virtual {v3, v2}, Lcom/vivo/PCTools/l/d;->parseSetRingtone(Ljava/io/InputStream;)B

    move-result v2

    invoke-virtual {v0, v2}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
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

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    goto :goto_0
.end method

.method private a(Lcom/vivo/PCTools/q/a/a;B)Lcom/vivo/PCTools/q/a/a;
    .locals 8

    const/4 v2, -0x1

    const-string v0, "MusicService"

    const-string v1, "MusicService----------------------------------------------------sendXml---In"

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logI(Ljava/lang/String;Ljava/lang/String;)V

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

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getBodyLength()I

    const/4 v1, 0x1

    :try_start_0
    new-array v3, v1, [Ljava/lang/String;

    packed-switch p2, :pswitch_data_0

    move v1, v2

    :goto_0
    if-nez v1, :cond_0

    const-string v4, "MusicService"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " fileName = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    aget-object v6, v3, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "====file Length==="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v6, v3, v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/vivo/PCTools/util/b;->logI(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    const/4 v1, 0x0

    aget-object v1, v3, v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/q/a/a;->setBodyLength(I)V

    const/4 v1, 0x0

    aget-object v1, v3, v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    invoke-virtual {v0, v1, v3}, Lcom/vivo/PCTools/q/a/a;->setBody([BI)V

    :goto_1
    return-object v0

    :pswitch_0
    iget-object v1, p0, Lcom/vivo/PCTools/l/a;->b:Lcom/vivo/PCTools/l/c;

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getMegIdInt()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/vivo/PCTools/l/c;->creatAllMusicInfoXml([Ljava/lang/String;I)B

    move-result v1

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/vivo/PCTools/l/a;->b:Lcom/vivo/PCTools/l/c;

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getMegIdInt()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/vivo/PCTools/l/c;->creatMusicAppendInfoXml([Ljava/lang/String;I)B

    move-result v1

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/vivo/PCTools/l/a;->b:Lcom/vivo/PCTools/l/c;

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getMegIdInt()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/vivo/PCTools/l/c;->creatPlaylistXml([Ljava/lang/String;I)B

    move-result v1

    goto :goto_0

    :pswitch_3
    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getBodyLength()I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getBody()[B

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getBodyLength()I

    move-result v7

    invoke-static {v4, v5, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getBodyLength()I

    move-result v6

    const-string v7, "utf-8"

    invoke-direct {v4, v1, v5, v6, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iget-object v1, p0, Lcom/vivo/PCTools/l/a;->a:Landroid/content/Context;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    new-instance v1, Ljava/io/DataInputStream;

    new-instance v5, Ljava/io/BufferedInputStream;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iget-object v5, p0, Lcom/vivo/PCTools/l/a;->c:Lcom/vivo/PCTools/l/d;

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getMegIdInt()I

    move-result v6

    invoke-virtual {v5, v1, v3, v6}, Lcom/vivo/PCTools/l/d;->parseProcessList(Ljava/io/InputStream;[Ljava/lang/String;I)B

    move-result v1

    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {v0, v2}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    goto :goto_1

    :pswitch_4
    :try_start_1
    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getBodyLength()I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getBody()[B

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getBodyLength()I

    move-result v7

    invoke-static {v4, v5, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getBodyLength()I

    move-result v6

    const-string v7, "utf-8"

    invoke-direct {v4, v1, v5, v6, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iget-object v1, p0, Lcom/vivo/PCTools/l/a;->a:Landroid/content/Context;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    new-instance v1, Ljava/io/DataInputStream;

    new-instance v5, Ljava/io/BufferedInputStream;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iget-object v5, p0, Lcom/vivo/PCTools/l/a;->c:Lcom/vivo/PCTools/l/d;

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getMegIdInt()I

    move-result v6

    invoke-virtual {v5, v1, v3, v6}, Lcom/vivo/PCTools/l/d;->parseAddOrDelMusic(Ljava/io/InputStream;[Ljava/lang/String;I)B

    move-result v1

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto/16 :goto_0

    :pswitch_5
    iget-object v1, p0, Lcom/vivo/PCTools/l/a;->b:Lcom/vivo/PCTools/l/c;

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getMegIdInt()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/vivo/PCTools/l/c;->creatRingtoneXml([Ljava/lang/String;I)B

    move-result v1

    goto/16 :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public final musicDoProcess(Lcom/vivo/PCTools/q/a/a;)Lcom/vivo/PCTools/q/a/a;
    .locals 2

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getCmd()B

    move-result v1

    const/4 v0, 0x0

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    invoke-direct {p0, p1, v1}, Lcom/vivo/PCTools/l/a;->a(Lcom/vivo/PCTools/q/a/a;B)Lcom/vivo/PCTools/q/a/a;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1, v1}, Lcom/vivo/PCTools/l/a;->a(Lcom/vivo/PCTools/q/a/a;B)Lcom/vivo/PCTools/q/a/a;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1, v1}, Lcom/vivo/PCTools/l/a;->a(Lcom/vivo/PCTools/q/a/a;B)Lcom/vivo/PCTools/q/a/a;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, p1, v1}, Lcom/vivo/PCTools/l/a;->a(Lcom/vivo/PCTools/q/a/a;B)Lcom/vivo/PCTools/q/a/a;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    invoke-direct {p0, p1, v1}, Lcom/vivo/PCTools/l/a;->a(Lcom/vivo/PCTools/q/a/a;B)Lcom/vivo/PCTools/q/a/a;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    invoke-direct {p0, p1, v1}, Lcom/vivo/PCTools/l/a;->a(Lcom/vivo/PCTools/q/a/a;B)Lcom/vivo/PCTools/q/a/a;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    invoke-direct {p0, p1}, Lcom/vivo/PCTools/l/a;->a(Lcom/vivo/PCTools/q/a/a;)Lcom/vivo/PCTools/q/a/a;

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
