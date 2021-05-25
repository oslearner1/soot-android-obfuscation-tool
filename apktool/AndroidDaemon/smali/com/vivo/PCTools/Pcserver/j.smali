.class public final Lcom/vivo/PCTools/Pcserver/j;
.super Landroid/os/Handler;


# static fields
.field private static b:I


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/vivo/PCTools/Pcserver/j;->a:Landroid/content/Context;

    const/high16 v0, -0x80000000

    sput v0, Lcom/vivo/PCTools/Pcserver/j;->b:I

    return-void
.end method

.method public static declared-synchronized PostToPC(Lcom/vivo/PCTools/q/a/a;)V
    .locals 3

    const-class v1, Lcom/vivo/PCTools/Pcserver/j;

    monitor-enter v1

    if-nez p0, :cond_0

    :try_start_0
    const-string v0, "ServiceHandler"

    const-string v2, "Post Null"

    invoke-static {v0, v2}, Lcom/vivo/PCTools/util/b;->logE(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/vivo/PCTools/Pcserver/e;->getInstance()Lcom/vivo/PCTools/Pcserver/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/PCTools/Pcserver/e;->getAllChannels()Lorg/jboss/netty/channel/group/ChannelGroup;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "ServiceHandler"

    const-string v2, "Get Channel Null"

    invoke-static {v0, v2}, Lcom/vivo/PCTools/util/b;->logE(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    :try_start_2
    invoke-static {v0, p0}, Lcom/vivo/PCTools/Pcserver/a;->SendToPC(Lorg/jboss/netty/channel/group/ChannelGroup;Lcom/vivo/PCTools/q/a/a;)V

    const-string v0, "ServiceHandler"

    const-string v2, "Post success"

    invoke-static {v0, v2}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public static declared-synchronized getMsgId()I
    .locals 2

    const-class v1, Lcom/vivo/PCTools/Pcserver/j;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/vivo/PCTools/Pcserver/j;->b:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/vivo/PCTools/Pcserver/j;->b:I

    if-nez v0, :cond_0

    const/high16 v0, -0x80000000

    sput v0, Lcom/vivo/PCTools/Pcserver/j;->b:I

    :cond_0
    sget v0, Lcom/vivo/PCTools/Pcserver/j;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    const/16 v4, 0xe

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "state"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/vivo/PCTools/r/b;

    iget-object v1, p0, Lcom/vivo/PCTools/Pcserver/j;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/vivo/PCTools/r/b;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/vivo/PCTools/Pcserver/j;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/r/b;->sendSimInfoOffline(Landroid/content/Context;)Lcom/vivo/PCTools/q/a/a;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/PCTools/Pcserver/j;->PostToPC(Lcom/vivo/PCTools/q/a/a;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/vivo/PCTools/Pcserver/j;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput v3, v0, Landroid/os/Message;->what:I

    const-wide/16 v1, 0x9c4

    invoke-virtual {p0, v0, v1, v2}, Lcom/vivo/PCTools/Pcserver/j;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :pswitch_2
    const-string v0, "ServiceHandler"

    const-string v1, "Service Handle SIM_STATE_CHANGED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/vivo/PCTools/r/b;

    iget-object v1, p0, Lcom/vivo/PCTools/Pcserver/j;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/vivo/PCTools/r/b;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/vivo/PCTools/Pcserver/j;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/r/b;->sendSimInfo(Landroid/content/Context;)Lcom/vivo/PCTools/q/a/a;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/PCTools/Pcserver/j;->PostToPC(Lcom/vivo/PCTools/q/a/a;)V

    goto :goto_0

    :pswitch_3
    const-string v0, "ServiceHandler"

    const-string v1, "Service Handle NEWSMSARRIVEED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    if-eqz v0, :cond_2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/vivo/PCTools/r/d;

    iget-object v1, p0, Lcom/vivo/PCTools/Pcserver/j;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/vivo/PCTools/r/d;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "uri"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ServiceHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/vivo/PCTools/Pcserver/j;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/vivo/PCTools/r/f;->smsNewMessageNotify(Landroid/content/Context;Ljava/lang/String;)Lcom/vivo/PCTools/q/a/a;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/PCTools/Pcserver/j;->PostToPC(Lcom/vivo/PCTools/q/a/a;)V

    goto/16 :goto_0

    :pswitch_4
    const-string v0, "ServiceHandler"

    const-string v1, "Service Handle MEDIA_MOUNTED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/vivo/PCTools/q/a/a;

    invoke-direct {v0}, Lcom/vivo/PCTools/q/a/a;-><init>()V

    invoke-static {}, Lcom/vivo/PCTools/Pcserver/j;->getMsgId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/q/a/a;->setMegId(I)V

    iget-object v1, p0, Lcom/vivo/PCTools/Pcserver/j;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/vivo/PCTools/m/a;->GetMemoeyInfo(Lcom/vivo/PCTools/q/a/a;Landroid/content/Context;)Lcom/vivo/PCTools/q/a/a;

    invoke-static {v0}, Lcom/vivo/PCTools/Pcserver/j;->PostToPC(Lcom/vivo/PCTools/q/a/a;)V

    goto/16 :goto_0

    :pswitch_5
    const-string v0, "ServiceHandler"

    const-string v1, "Service Handle PACKAGE_ADDED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/vivo/PCTools/g/h;

    invoke-direct {v1}, Lcom/vivo/PCTools/g/h;-><init>()V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/vivo/PCTools/Pcserver/j;->a:Landroid/content/Context;

    invoke-virtual {v1, v0, v2}, Lcom/vivo/PCTools/g/h;->ParaserAddApp(Landroid/content/Intent;Landroid/content/Context;)Lcom/vivo/PCTools/q/a/a;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/PCTools/Pcserver/j;->PostToPC(Lcom/vivo/PCTools/q/a/a;)V

    goto/16 :goto_0

    :pswitch_6
    const-string v0, "ServiceHandler"

    const-string v1, "Service Handle PACKAGE_REMOVED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_7
    const-string v0, "ServiceHandler"

    const-string v1, "Service Handle MESSAGE_SENT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/vivo/PCTools/Pcserver/j;->a:Landroid/content/Context;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    invoke-static {v1, v0}, Lcom/vivo/PCTools/r/f;->handleSmsSent(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    :pswitch_8
    const-string v0, "ServiceHandler"

    const-string v1, "Incoming CALL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/vivo/PCTools/Pcserver/j;->a:Landroid/content/Context;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    invoke-static {v1, v0}, Lcom/vivo/PCTools/e/c;->PhoneIncomingCall(Landroid/content/Context;Landroid/content/Intent;)Lcom/vivo/PCTools/q/a/a;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/PCTools/Pcserver/j;->PostToPC(Lcom/vivo/PCTools/q/a/a;)V

    goto/16 :goto_0

    :pswitch_9
    const-string v0, "ServiceHandler"

    const-string v1, "Accept CALL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/vivo/PCTools/q/a/a;

    invoke-direct {v0}, Lcom/vivo/PCTools/q/a/a;-><init>()V

    invoke-static {}, Lcom/vivo/PCTools/Pcserver/j;->getMsgId()I

    move-result v0

    new-instance v1, Lcom/vivo/PCTools/q/a/a;

    invoke-direct {v1}, Lcom/vivo/PCTools/q/a/a;-><init>()V

    invoke-virtual {v1, v0}, Lcom/vivo/PCTools/q/a/a;->setMegId(I)V

    invoke-virtual {v1, v2}, Lcom/vivo/PCTools/q/a/a;->setHeadLength(S)V

    invoke-virtual {v1, v4}, Lcom/vivo/PCTools/q/a/a;->setModule(S)V

    const/16 v0, 0x13

    invoke-virtual {v1, v0}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    invoke-virtual {v1, v2}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    invoke-static {v1}, Lcom/vivo/PCTools/Pcserver/j;->PostToPC(Lcom/vivo/PCTools/q/a/a;)V

    goto/16 :goto_0

    :pswitch_a
    const-string v0, "ServiceHandler"

    const-string v1, "Phone CALL state idle"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/PCTools/Pcserver/j;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/vivo/PCTools/e/c;->resumeVolumeState(Landroid/content/Context;)V

    invoke-static {}, Lcom/vivo/PCTools/Pcserver/j;->getMsgId()I

    move-result v0

    new-instance v1, Lcom/vivo/PCTools/q/a/a;

    invoke-direct {v1}, Lcom/vivo/PCTools/q/a/a;-><init>()V

    invoke-virtual {v1, v0}, Lcom/vivo/PCTools/q/a/a;->setMegId(I)V

    invoke-virtual {v1, v2}, Lcom/vivo/PCTools/q/a/a;->setHeadLength(S)V

    invoke-virtual {v1, v4}, Lcom/vivo/PCTools/q/a/a;->setModule(S)V

    const/16 v0, 0x12

    invoke-virtual {v1, v0}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    invoke-virtual {v1, v2}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    invoke-static {v1}, Lcom/vivo/PCTools/Pcserver/j;->PostToPC(Lcom/vivo/PCTools/q/a/a;)V

    goto/16 :goto_0

    :pswitch_b
    const-string v0, "ServiceHandler"

    const-string v1, "contants backup finish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/vivo/PCTools/q/a/a;

    invoke-direct {v0}, Lcom/vivo/PCTools/q/a/a;-><init>()V

    invoke-static {}, Lcom/vivo/PCTools/Pcserver/j;->getMsgId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/q/a/a;->setMegId(I)V

    invoke-virtual {v0, v2}, Lcom/vivo/PCTools/q/a/a;->setHeadLength(S)V

    invoke-virtual {v0, v3}, Lcom/vivo/PCTools/q/a/a;->setModule(S)V

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    invoke-virtual {v0, v2}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    invoke-virtual {v0, v2}, Lcom/vivo/PCTools/q/a/a;->setBodyLength(I)V

    invoke-static {v0}, Lcom/vivo/PCTools/Pcserver/j;->PostToPC(Lcom/vivo/PCTools/q/a/a;)V

    goto/16 :goto_0

    :pswitch_c
    const-string v0, "ServiceHandler"

    const-string v1, "ACTION_START_PASSWD"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/vivo/PCTools/Pcserver/j;->a:Landroid/content/Context;

    const-class v2, Lcom/vivo/PCTools/MainActivity/PasswordCheckedActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/vivo/PCTools/Pcserver/j;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :pswitch_d
    const-string v0, "ServiceHandler"

    const-string v1, "ACCOUNTS_CHANGED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/PCTools/Pcserver/j;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/vivo/PCTools/m/a;->sendAccountsInfo(Landroid/content/Context;)Lcom/vivo/PCTools/q/a/a;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/PCTools/Pcserver/j;->PostToPC(Lcom/vivo/PCTools/q/a/a;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_a
        :pswitch_b
        :pswitch_1
        :pswitch_c
        :pswitch_d
        :pswitch_9
    .end packed-switch
.end method
