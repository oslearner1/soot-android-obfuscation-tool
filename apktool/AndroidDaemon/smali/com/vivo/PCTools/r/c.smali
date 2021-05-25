.class public final Lcom/vivo/PCTools/r/c;
.super Lcom/vivo/PCTools/Pcserver/a;


# static fields
.field private static e:Ljava/util/HashMap;


# instance fields
.field private d:Lcom/vivo/PCTools/r/f;


# direct methods
.method public constructor <init>(Lcom/vivo/PCTools/q/a/a;Lorg/jboss/netty/channel/Channel;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/vivo/PCTools/Pcserver/a;-><init>(Lcom/vivo/PCTools/q/a/a;Lorg/jboss/netty/channel/Channel;Landroid/content/Context;)V

    new-instance v0, Lcom/vivo/PCTools/r/f;

    invoke-direct {v0, p0}, Lcom/vivo/PCTools/r/f;-><init>(Lcom/vivo/PCTools/r/c;)V

    iput-object v0, p0, Lcom/vivo/PCTools/r/c;->d:Lcom/vivo/PCTools/r/f;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/vivo/PCTools/r/c;->e:Ljava/util/HashMap;

    return-void
.end method

.method public static CheckSmsChanelMapIsEmpity()Z
    .locals 1

    sget-object v0, Lcom/vivo/PCTools/r/c;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public static GetSpecialChanelById(I)Lorg/jboss/netty/channel/Channel;
    .locals 2

    invoke-static {}, Lcom/vivo/PCTools/r/c;->CheckSmsChanelMapIsEmpity()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/vivo/PCTools/r/c;->e:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/Channel;

    goto :goto_0
.end method

.method public static RemoveChanelById(I)V
    .locals 2

    invoke-static {}, Lcom/vivo/PCTools/r/c;->CheckSmsChanelMapIsEmpity()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/vivo/PCTools/r/c;->e:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static UseChannelSendToPC(Lorg/jboss/netty/channel/Channel;Lcom/vivo/PCTools/q/a/a;)V
    .locals 7

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getBodyLength()I

    move-result v0

    if-lez v0, :cond_2

    :try_start_0
    new-array v1, v0, [B

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getBody()[B

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "utf-8"

    invoke-direct {v2, v1, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {v1, v0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    long-to-int v0, v4

    invoke-virtual {p1, v0}, Lcom/vivo/PCTools/q/a/a;->setBodyLength(I)V

    invoke-interface {p0, p1}, Lorg/jboss/netty/channel/Channel;->write(Ljava/lang/Object;)Lorg/jboss/netty/channel/ChannelFuture;

    new-instance v0, Lorg/jboss/netty/handler/stream/ChunkedFile;

    const-wide/16 v2, 0x0

    const/16 v6, 0x2000

    invoke-direct/range {v0 .. v6}, Lorg/jboss/netty/handler/stream/ChunkedFile;-><init>(Ljava/io/RandomAccessFile;JJI)V

    invoke-interface {p0, v0}, Lorg/jboss/netty/channel/Channel;->write(Ljava/lang/Object;)Lorg/jboss/netty/channel/ChannelFuture;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_2
    invoke-interface {p0, p1}, Lorg/jboss/netty/channel/Channel;->write(Ljava/lang/Object;)Lorg/jboss/netty/channel/ChannelFuture;

    goto :goto_0
.end method

.method public static WrapSendToPC(ILcom/vivo/PCTools/q/a/a;)V
    .locals 1

    invoke-static {p0}, Lcom/vivo/PCTools/r/c;->GetSpecialChanelById(I)Lorg/jboss/netty/channel/Channel;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Lcom/vivo/PCTools/r/c;->UseChannelSendToPC(Lorg/jboss/netty/channel/Channel;Lcom/vivo/PCTools/q/a/a;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final HandleMessage()V
    .locals 2

    iget-object v0, p0, Lcom/vivo/PCTools/r/c;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0}, Lcom/vivo/PCTools/q/a/a;->getCmd()B

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/vivo/PCTools/r/c;->d:Lcom/vivo/PCTools/r/f;

    iget-object v1, p0, Lcom/vivo/PCTools/r/c;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/r/f;->GetAllSmsAndMMS(Lcom/vivo/PCTools/q/a/a;)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/vivo/PCTools/r/c;->d:Lcom/vivo/PCTools/r/f;

    iget-object v1, p0, Lcom/vivo/PCTools/r/c;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/r/f;->smsDeleteMms(Lcom/vivo/PCTools/q/a/a;)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/vivo/PCTools/r/c;->d:Lcom/vivo/PCTools/r/f;

    iget-object v1, p0, Lcom/vivo/PCTools/r/c;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/r/f;->getSingleMMSByID(Lcom/vivo/PCTools/q/a/a;)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/vivo/PCTools/r/c;->d:Lcom/vivo/PCTools/r/f;

    iget-object v1, p0, Lcom/vivo/PCTools/r/c;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/r/f;->insertMMSFromPC(Lcom/vivo/PCTools/q/a/a;)V

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/vivo/PCTools/r/c;->d:Lcom/vivo/PCTools/r/f;

    iget-object v1, p0, Lcom/vivo/PCTools/r/c;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/r/f;->smsDeleteThreads(Lcom/vivo/PCTools/q/a/a;)V

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/vivo/PCTools/r/c;->d:Lcom/vivo/PCTools/r/f;

    iget-object v1, p0, Lcom/vivo/PCTools/r/c;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/r/f;->smsDeleteSms(Lcom/vivo/PCTools/q/a/a;)V

    goto :goto_0

    :sswitch_6
    iget-object v0, p0, Lcom/vivo/PCTools/r/c;->d:Lcom/vivo/PCTools/r/f;

    iget-object v1, p0, Lcom/vivo/PCTools/r/c;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/r/f;->smsDeleteAllSms(Lcom/vivo/PCTools/q/a/a;)V

    goto :goto_0

    :sswitch_7
    invoke-static {}, Lcom/vivo/PCTools/Pcserver/e;->getInstance()Lcom/vivo/PCTools/Pcserver/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/PCTools/Pcserver/e;->getAllChannels()Lorg/jboss/netty/channel/group/ChannelGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/PCTools/r/c;->b:Lorg/jboss/netty/channel/Channel;

    invoke-interface {v0, v1}, Lorg/jboss/netty/channel/group/ChannelGroup;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/vivo/PCTools/r/c;->d:Lcom/vivo/PCTools/r/f;

    iget-object v1, p0, Lcom/vivo/PCTools/r/c;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/r/f;->smsSendMessage(Lcom/vivo/PCTools/q/a/a;)V

    goto :goto_0

    :sswitch_8
    iget-object v0, p0, Lcom/vivo/PCTools/r/c;->d:Lcom/vivo/PCTools/r/f;

    iget-object v1, p0, Lcom/vivo/PCTools/r/c;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/r/f;->smsInsertSms(Lcom/vivo/PCTools/q/a/a;)V

    goto :goto_0

    :sswitch_9
    iget-object v0, p0, Lcom/vivo/PCTools/r/c;->d:Lcom/vivo/PCTools/r/f;

    iget-object v1, p0, Lcom/vivo/PCTools/r/c;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/r/f;->smsUpdateToRead(Lcom/vivo/PCTools/q/a/a;)V

    goto :goto_0

    :sswitch_a
    iget-object v0, p0, Lcom/vivo/PCTools/r/c;->d:Lcom/vivo/PCTools/r/f;

    iget-object v1, p0, Lcom/vivo/PCTools/r/c;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/r/f;->smsGetSimMessage(Lcom/vivo/PCTools/q/a/a;)V

    goto :goto_0

    :sswitch_b
    iget-object v0, p0, Lcom/vivo/PCTools/r/c;->d:Lcom/vivo/PCTools/r/f;

    iget-object v1, p0, Lcom/vivo/PCTools/r/c;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/r/f;->smsDeleteSimSms(Lcom/vivo/PCTools/q/a/a;)V

    goto :goto_0

    :sswitch_c
    iget-object v0, p0, Lcom/vivo/PCTools/r/c;->d:Lcom/vivo/PCTools/r/f;

    iget-object v1, p0, Lcom/vivo/PCTools/r/c;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/r/f;->copySimMessage(Lcom/vivo/PCTools/q/a/a;)V

    goto :goto_0

    :sswitch_d
    iget-object v0, p0, Lcom/vivo/PCTools/r/c;->d:Lcom/vivo/PCTools/r/f;

    iget-object v1, p0, Lcom/vivo/PCTools/r/c;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/r/f;->getMyFavoriteMessage(Lcom/vivo/PCTools/q/a/a;)V

    goto :goto_0

    :sswitch_e
    iget-object v0, p0, Lcom/vivo/PCTools/r/c;->d:Lcom/vivo/PCTools/r/f;

    iget-object v1, p0, Lcom/vivo/PCTools/r/c;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/r/f;->smsDeleteFavSms(Lcom/vivo/PCTools/q/a/a;)V

    goto/16 :goto_0

    :sswitch_f
    iget-object v0, p0, Lcom/vivo/PCTools/r/c;->d:Lcom/vivo/PCTools/r/f;

    iget-object v1, p0, Lcom/vivo/PCTools/r/c;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/r/f;->copyFavoriteMessage(Lcom/vivo/PCTools/q/a/a;)V

    goto/16 :goto_0

    :sswitch_10
    iget-object v0, p0, Lcom/vivo/PCTools/r/c;->d:Lcom/vivo/PCTools/r/f;

    iget-object v1, p0, Lcom/vivo/PCTools/r/c;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/r/f;->CopySms2Fav(Lcom/vivo/PCTools/q/a/a;)V

    goto/16 :goto_0

    :sswitch_11
    iget-object v0, p0, Lcom/vivo/PCTools/r/c;->d:Lcom/vivo/PCTools/r/f;

    iget-object v1, p0, Lcom/vivo/PCTools/r/c;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/r/f;->backup2cloud(Lcom/vivo/PCTools/q/a/a;)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x7 -> :sswitch_4
        0x8 -> :sswitch_5
        0x9 -> :sswitch_7
        0xa -> :sswitch_8
        0xd -> :sswitch_9
        0xe -> :sswitch_1
        0xf -> :sswitch_a
        0x10 -> :sswitch_b
        0x11 -> :sswitch_c
        0x12 -> :sswitch_d
        0x13 -> :sswitch_e
        0x14 -> :sswitch_f
        0x15 -> :sswitch_10
        0x21 -> :sswitch_2
        0x22 -> :sswitch_3
        0x33 -> :sswitch_6
        0x34 -> :sswitch_11
    .end sparse-switch
.end method

.method public final onCreateXmlFile(Lorg/xmlpull/v1/XmlSerializer;I)V
    .locals 0

    return-void
.end method
