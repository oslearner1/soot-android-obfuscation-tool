.class public final Lcom/vivo/PCTools/f/d;
.super Lcom/vivo/PCTools/Pcserver/a;


# instance fields
.field private d:Landroid/content/Context;

.field private e:Lcom/vivo/PCTools/BaseApplication;


# direct methods
.method public constructor <init>(Lcom/vivo/PCTools/q/a/a;Lorg/jboss/netty/channel/Channel;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/vivo/PCTools/Pcserver/a;-><init>(Lcom/vivo/PCTools/q/a/a;Lorg/jboss/netty/channel/Channel;Landroid/content/Context;)V

    iput-object p3, p0, Lcom/vivo/PCTools/f/d;->d:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final HandleMessage()V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/vivo/PCTools/f/d;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v0}, Lcom/vivo/PCTools/q/a/a;->getRelyCode()B

    move-result v1

    new-instance v2, Landroid/content/Intent;

    const-string v0, "com.vivo.PCTools.RecoveryData"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v3, Landroid/content/Intent;

    const-string v0, "com.vivo.setupwizard.broadcastfromAssistant"

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/PCTools/f/d;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/vivo/PCTools/BaseApplication;

    iput-object v0, p0, Lcom/vivo/PCTools/f/d;->e:Lcom/vivo/PCTools/BaseApplication;

    packed-switch v1, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Lcom/vivo/PCTools/f/d;->d:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/vivo/PCTools/f/d;->d:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    new-instance v0, Lcom/vivo/PCTools/q/a/a;

    invoke-direct {v0}, Lcom/vivo/PCTools/q/a/a;-><init>()V

    iget-object v1, p0, Lcom/vivo/PCTools/f/d;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v1}, Lcom/vivo/PCTools/q/a/a;->getVersionShort()S

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/q/a/a;->setVersion(S)V

    iget-object v1, p0, Lcom/vivo/PCTools/f/d;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v1}, Lcom/vivo/PCTools/q/a/a;->getMegIdInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/q/a/a;->setMegId(I)V

    iget-object v1, p0, Lcom/vivo/PCTools/f/d;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v1}, Lcom/vivo/PCTools/q/a/a;->getModuleShort()S

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/q/a/a;->setModule(S)V

    iget-object v1, p0, Lcom/vivo/PCTools/f/d;->a:Lcom/vivo/PCTools/q/a/a;

    invoke-virtual {v1}, Lcom/vivo/PCTools/q/a/a;->getCmd()B

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    invoke-virtual {v0, v4}, Lcom/vivo/PCTools/q/a/a;->setHeadLength(S)V

    invoke-virtual {v0, v5}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    invoke-virtual {v0, v4}, Lcom/vivo/PCTools/q/a/a;->setBodyLength(I)V

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/f/d;->SendToPC(Lcom/vivo/PCTools/q/a/a;)V

    return-void

    :pswitch_0
    const-string v0, "RequestRecoveryData"

    const-string v1, "recovery data success!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "RESULT"

    invoke-virtual {v2, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "RESULT"

    invoke-virtual {v3, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/vivo/PCTools/f/d;->e:Lcom/vivo/PCTools/BaseApplication;

    invoke-virtual {v0, v4}, Lcom/vivo/PCTools/BaseApplication;->setRecovering(Z)V

    goto :goto_0

    :pswitch_1
    const-string v0, "RequestRecoveryData"

    const-string v1, "recovery data fail!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "RESULT"

    invoke-virtual {v2, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "RESULT"

    const/4 v1, 0x3

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/vivo/PCTools/f/d;->e:Lcom/vivo/PCTools/BaseApplication;

    invoke-virtual {v0, v4}, Lcom/vivo/PCTools/BaseApplication;->setRecovering(Z)V

    goto :goto_0

    :pswitch_2
    const-string v0, "RequestRecoveryData"

    const-string v1, "recovery data cancel!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/PCTools/f/d;->e:Lcom/vivo/PCTools/BaseApplication;

    invoke-virtual {v0, v4}, Lcom/vivo/PCTools/BaseApplication;->setRecovering(Z)V

    goto :goto_0

    :pswitch_3
    const-string v0, "RequestRecoveryData"

    const-string v1, "begin to recovery data !!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "RESULT"

    const/4 v1, 0x5

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/vivo/PCTools/f/d;->e:Lcom/vivo/PCTools/BaseApplication;

    invoke-virtual {v0, v5}, Lcom/vivo/PCTools/BaseApplication;->setRecovering(Z)V

    goto/16 :goto_0

    :pswitch_4
    const-string v0, "RequestRecoveryData"

    const-string v1, "RESPONSE_GET_SERVSION"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "RESULT"

    const/16 v1, 0x37

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "RESULT"

    invoke-virtual {v3, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/vivo/PCTools/f/d;->e:Lcom/vivo/PCTools/BaseApplication;

    invoke-virtual {v0, v4}, Lcom/vivo/PCTools/BaseApplication;->setRecovering(Z)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final onCreateXmlFile(Lorg/xmlpull/v1/XmlSerializer;I)V
    .locals 0

    return-void
.end method
