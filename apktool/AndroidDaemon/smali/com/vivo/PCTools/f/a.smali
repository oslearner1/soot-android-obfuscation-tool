.class public final Lcom/vivo/PCTools/f/a;
.super Lcom/vivo/PCTools/Pcserver/a;


# instance fields
.field private d:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Lcom/vivo/PCTools/q/a/a;Lorg/jboss/netty/channel/Channel;Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1, p2, p3}, Lcom/vivo/PCTools/Pcserver/a;-><init>(Lcom/vivo/PCTools/q/a/a;Lorg/jboss/netty/channel/Channel;Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/vivo/PCTools/f/a;->getmContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "setting"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/PCTools/f/a;->d:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public final HandleMessage()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x2

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/vivo/PCTools/f/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v1}, Lcom/vivo/PCTools/q/a/a;->getRelyCode()B

    move-result v1

    aput-byte v1, v0, v4

    invoke-static {v0, v3}, Landroid/support/v4/media/session/MediaSessionCompat;->byteToShort([BI)S

    move-result v0

    new-instance v1, Lcom/vivo/PCTools/q/a/a;

    invoke-direct {v1}, Lcom/vivo/PCTools/q/a/a;-><init>()V

    iget-object v2, p0, Lcom/vivo/PCTools/f/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v2}, Lcom/vivo/PCTools/q/a/a;->getVersionShort()S

    move-result v2

    invoke-virtual {v1, v2}, Lcom/vivo/PCTools/q/a/a;->setVersion(S)V

    iget-object v2, p0, Lcom/vivo/PCTools/f/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v2}, Lcom/vivo/PCTools/q/a/a;->getMegIdInt()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/vivo/PCTools/q/a/a;->setMegId(I)V

    iget-object v2, p0, Lcom/vivo/PCTools/f/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v2}, Lcom/vivo/PCTools/q/a/a;->getModuleShort()S

    move-result v2

    invoke-virtual {v1, v2}, Lcom/vivo/PCTools/q/a/a;->setModule(S)V

    iget-object v2, p0, Lcom/vivo/PCTools/f/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v2}, Lcom/vivo/PCTools/q/a/a;->getCmd()B

    move-result v2

    invoke-virtual {v1, v2}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    invoke-virtual {v1, v3}, Lcom/vivo/PCTools/q/a/a;->setHeadLength(S)V

    iget-object v2, p0, Lcom/vivo/PCTools/f/a;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v2}, Lcom/vivo/PCTools/q/a/a;->getRelyCode()B

    move-result v2

    invoke-virtual {v1, v2}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    invoke-virtual {v1, v3}, Lcom/vivo/PCTools/q/a/a;->setBodyLength(I)V

    packed-switch v0, :pswitch_data_0

    :goto_0
    invoke-virtual {p0, v1}, Lcom/vivo/PCTools/f/a;->SendToPC(Lcom/vivo/PCTools/q/a/a;)V

    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/vivo/PCTools/f/a;->SetAuthor()V

    invoke-virtual {v1, v4}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final SendMsg2PC(Lcom/vivo/PCTools/q/a/a;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/vivo/PCTools/f/a;->SendToPC(Lcom/vivo/PCTools/q/a/a;)V

    return-void
.end method

.method public final SetAuthor()V
    .locals 3

    iget-object v0, p0, Lcom/vivo/PCTools/f/a;->d:Landroid/content/SharedPreferences;

    const-string v1, "hasAuthorize"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vivo/PCTools/f/a;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "hasAuthorize"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    sget-object v0, Lcom/vivo/PCTools/BaseApplication;->d:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/vivo/PCTools/BaseApplication;->d:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/vivo/PCTools/BaseApplication;->d:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_1
    return-void
.end method

.method public final onCreateXmlFile(Lorg/xmlpull/v1/XmlSerializer;I)V
    .locals 0

    return-void
.end method
