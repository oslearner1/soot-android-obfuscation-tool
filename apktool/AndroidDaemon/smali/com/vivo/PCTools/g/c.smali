.class public final Lcom/vivo/PCTools/g/c;
.super Lcom/vivo/PCTools/Pcserver/a;


# instance fields
.field private d:Lcom/vivo/PCTools/g/b;


# direct methods
.method public constructor <init>(Lcom/vivo/PCTools/q/a/a;Lorg/jboss/netty/channel/Channel;Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lcom/vivo/PCTools/Pcserver/a;-><init>(Lcom/vivo/PCTools/q/a/a;Lorg/jboss/netty/channel/Channel;Landroid/content/Context;)V

    const-string v0, "AppWorkHandler"

    const-string v1, "create app workhandler"

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/vivo/PCTools/g/b;

    iget-object v1, p0, Lcom/vivo/PCTools/g/c;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/vivo/PCTools/g/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vivo/PCTools/g/c;->d:Lcom/vivo/PCTools/g/b;

    return-void
.end method


# virtual methods
.method public final AppHandlerDoProcess(Lcom/vivo/PCTools/q/a/a;)V
    .locals 4

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getCmd()B

    move-result v0

    const-string v1, "AppWorkHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "submode = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/vivo/PCTools/g/c;->d:Lcom/vivo/PCTools/g/b;

    invoke-virtual {v0, p1, p0}, Lcom/vivo/PCTools/g/b;->appInfoSend(Lcom/vivo/PCTools/q/a/a;Lcom/vivo/PCTools/g/c;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/vivo/PCTools/g/c;->d:Lcom/vivo/PCTools/g/b;

    invoke-virtual {v0, p1, p0}, Lcom/vivo/PCTools/g/b;->DoCmdMoveApp(Lcom/vivo/PCTools/q/a/a;Lcom/vivo/PCTools/g/c;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/vivo/PCTools/g/c;->d:Lcom/vivo/PCTools/g/b;

    invoke-virtual {v0, p1, p0}, Lcom/vivo/PCTools/g/b;->DoCmdInstallApp(Lcom/vivo/PCTools/q/a/a;Lcom/vivo/PCTools/g/c;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/vivo/PCTools/g/c;->d:Lcom/vivo/PCTools/g/b;

    invoke-virtual {v0, p1, p0}, Lcom/vivo/PCTools/g/b;->DoCmdUnInstallApp(Lcom/vivo/PCTools/q/a/a;Lcom/vivo/PCTools/g/c;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final HandleMessage()V
    .locals 2

    :try_start_0
    const-string v0, "AppWorkHandler"

    const-string v1, "app store handle mesg"

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/PCTools/g/c;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/g/c;->AppHandlerDoProcess(Lcom/vivo/PCTools/q/a/a;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    iget-object v0, p0, Lcom/vivo/PCTools/g/c;->b:Lorg/jboss/netty/channel/Channel;

    invoke-interface {v0}, Lorg/jboss/netty/channel/Channel;->close()Lorg/jboss/netty/channel/ChannelFuture;

    goto :goto_0
.end method

.method public final SendMegToPC(Lcom/vivo/PCTools/q/a/a;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/vivo/PCTools/g/c;->SendToPC(Lcom/vivo/PCTools/q/a/a;)V

    return-void
.end method

.method public final onCreateXmlFile(Lorg/xmlpull/v1/XmlSerializer;I)V
    .locals 0

    return-void
.end method
