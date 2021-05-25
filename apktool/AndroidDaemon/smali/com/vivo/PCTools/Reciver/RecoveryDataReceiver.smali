.class public Lcom/vivo/PCTools/Reciver/RecoveryDataReceiver;
.super Landroid/content/BroadcastReceiver;


# static fields
.field private static g:Ljava/lang/String;

.field private static h:Ljava/lang/String;

.field private static i:Ljava/lang/String;

.field private static j:Ljava/lang/String;

.field private static k:Ljava/lang/String;

.field private static l:Ljava/lang/String;


# instance fields
.field private a:Landroid/app/Notification;

.field private b:Landroid/content/Context;

.field private c:Landroid/app/NotificationManager;

.field private d:Landroid/app/PendingIntent;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private m:Lcom/vivo/PCTools/BaseApplication;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ""

    sput-object v0, Lcom/vivo/PCTools/Reciver/RecoveryDataReceiver;->g:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/vivo/PCTools/Reciver/RecoveryDataReceiver;->h:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/vivo/PCTools/Reciver/RecoveryDataReceiver;->i:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/vivo/PCTools/Reciver/RecoveryDataReceiver;->j:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/vivo/PCTools/Reciver/RecoveryDataReceiver;->k:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/vivo/PCTools/Reciver/RecoveryDataReceiver;->l:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object v0, p0, Lcom/vivo/PCTools/Reciver/RecoveryDataReceiver;->b:Landroid/content/Context;

    iput-object v0, p0, Lcom/vivo/PCTools/Reciver/RecoveryDataReceiver;->c:Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/vivo/PCTools/Reciver/RecoveryDataReceiver;->d:Landroid/app/PendingIntent;

    const-string v0, "com.vivo.PCTools.RecoveryData"

    iput-object v0, p0, Lcom/vivo/PCTools/Reciver/RecoveryDataReceiver;->e:Ljava/lang/String;

    const-string v0, "RecoveryDataReceiver"

    iput-object v0, p0, Lcom/vivo/PCTools/Reciver/RecoveryDataReceiver;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const/4 v3, 0x0

    iput-object p1, p0, Lcom/vivo/PCTools/Reciver/RecoveryDataReceiver;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/vivo/PCTools/Reciver/RecoveryDataReceiver;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0141

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0142

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/vivo/PCTools/Reciver/RecoveryDataReceiver;->g:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0143

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/vivo/PCTools/Reciver/RecoveryDataReceiver;->h:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0144

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0145

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/vivo/PCTools/Reciver/RecoveryDataReceiver;->i:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0146

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/vivo/PCTools/Reciver/RecoveryDataReceiver;->j:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0147

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/vivo/PCTools/Reciver/RecoveryDataReceiver;->k:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0148

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vivo/PCTools/Reciver/RecoveryDataReceiver;->l:Ljava/lang/String;

    iget-object v0, p0, Lcom/vivo/PCTools/Reciver/RecoveryDataReceiver;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/vivo/PCTools/BaseApplication;

    iput-object v0, p0, Lcom/vivo/PCTools/Reciver/RecoveryDataReceiver;->m:Lcom/vivo/PCTools/BaseApplication;

    iget-object v0, p0, Lcom/vivo/PCTools/Reciver/RecoveryDataReceiver;->b:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/vivo/PCTools/Reciver/RecoveryDataReceiver;->c:Landroid/app/NotificationManager;

    iget-object v0, p0, Lcom/vivo/PCTools/Reciver/RecoveryDataReceiver;->a:Landroid/app/Notification;

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    iput-object v0, p0, Lcom/vivo/PCTools/Reciver/RecoveryDataReceiver;->a:Landroid/app/Notification;

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/vivo/PCTools/Reciver/RecoveryDataReceiver;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "RESULT"

    const/4 v1, 0x2

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/vivo/PCTools/Reciver/RecoveryDataReceiver;->m:Lcom/vivo/PCTools/BaseApplication;

    invoke-virtual {v0}, Lcom/vivo/PCTools/BaseApplication;->isShowNotify()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/vivo/PCTools/Reciver/RecoveryDataReceiver;->i:Ljava/lang/String;

    sget-object v1, Lcom/vivo/PCTools/Reciver/RecoveryDataReceiver;->i:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/vivo/PCTools/Reciver/RecoveryDataReceiver;->updateNotification(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/vivo/PCTools/Reciver/RecoveryDataReceiver;->m:Lcom/vivo/PCTools/BaseApplication;

    invoke-virtual {v0, v3}, Lcom/vivo/PCTools/BaseApplication;->setShowNotify(Z)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/vivo/PCTools/Reciver/RecoveryDataReceiver;->m:Lcom/vivo/PCTools/BaseApplication;

    invoke-virtual {v0}, Lcom/vivo/PCTools/BaseApplication;->isShowNotify()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/vivo/PCTools/Reciver/RecoveryDataReceiver;->j:Ljava/lang/String;

    sget-object v1, Lcom/vivo/PCTools/Reciver/RecoveryDataReceiver;->j:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/vivo/PCTools/Reciver/RecoveryDataReceiver;->updateNotification(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/vivo/PCTools/Reciver/RecoveryDataReceiver;->m:Lcom/vivo/PCTools/BaseApplication;

    invoke-virtual {v0, v3}, Lcom/vivo/PCTools/BaseApplication;->setShowNotify(Z)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/vivo/PCTools/Reciver/RecoveryDataReceiver;->m:Lcom/vivo/PCTools/BaseApplication;

    invoke-virtual {v0}, Lcom/vivo/PCTools/BaseApplication;->isShowNotify()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/vivo/PCTools/Reciver/RecoveryDataReceiver;->k:Ljava/lang/String;

    sget-object v1, Lcom/vivo/PCTools/Reciver/RecoveryDataReceiver;->k:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/vivo/PCTools/Reciver/RecoveryDataReceiver;->updateNotification(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lcom/vivo/PCTools/Reciver/RecoveryDataReceiver;->m:Lcom/vivo/PCTools/BaseApplication;

    invoke-virtual {v0, v3}, Lcom/vivo/PCTools/BaseApplication;->setShowNotify(Z)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/vivo/PCTools/Reciver/RecoveryDataReceiver;->m:Lcom/vivo/PCTools/BaseApplication;

    invoke-virtual {v0}, Lcom/vivo/PCTools/BaseApplication;->isShowNotify()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/vivo/PCTools/Reciver/RecoveryDataReceiver;->l:Ljava/lang/String;

    sget-object v1, Lcom/vivo/PCTools/Reciver/RecoveryDataReceiver;->l:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/vivo/PCTools/Reciver/RecoveryDataReceiver;->updateNotification(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget-object v0, p0, Lcom/vivo/PCTools/Reciver/RecoveryDataReceiver;->m:Lcom/vivo/PCTools/BaseApplication;

    invoke-virtual {v0, v3}, Lcom/vivo/PCTools/BaseApplication;->setShowNotify(Z)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/vivo/PCTools/Reciver/RecoveryDataReceiver;->m:Lcom/vivo/PCTools/BaseApplication;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/BaseApplication;->setShowNotify(Z)V

    invoke-virtual {p0}, Lcom/vivo/PCTools/Reciver/RecoveryDataReceiver;->showNotification()V

    goto :goto_0

    nop

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

.method public showNotification()V
    .locals 7

    const/4 v6, 0x1

    new-instance v1, Landroid/support/v4/app/bm;

    iget-object v0, p0, Lcom/vivo/PCTools/Reciver/RecoveryDataReceiver;->b:Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/support/v4/app/bm;-><init>(Landroid/content/Context;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const v0, 0x7f020038

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x14

    if-le v4, v5, :cond_0

    const v0, 0x7f02000f

    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/support/v4/app/bm;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/bm;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/bm;->setSmallIcon(I)Landroid/support/v4/app/bm;

    move-result-object v0

    sget-object v1, Lcom/vivo/PCTools/Reciver/RecoveryDataReceiver;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/bm;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/bm;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/app/bm;->setWhen(J)Landroid/support/v4/app/bm;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/support/v4/app/bm;->setAutoCancel(Z)Landroid/support/v4/app/bm;

    move-result-object v0

    sget-object v1, Lcom/vivo/PCTools/Reciver/RecoveryDataReceiver;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/bm;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/bm;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/support/v4/app/bm;->setDefaults(I)Landroid/support/v4/app/bm;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/bm;->setOngoing(Z)Landroid/support/v4/app/bm;

    move-result-object v0

    sget-object v1, Lcom/vivo/PCTools/Reciver/RecoveryDataReceiver;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/bm;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/bm;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/bm;->build()Landroid/app/Notification;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/PCTools/Reciver/RecoveryDataReceiver;->a:Landroid/app/Notification;

    iget-object v0, p0, Lcom/vivo/PCTools/Reciver/RecoveryDataReceiver;->c:Landroid/app/NotificationManager;

    iget-object v1, p0, Lcom/vivo/PCTools/Reciver/RecoveryDataReceiver;->a:Landroid/app/Notification;

    invoke-virtual {v0, v6, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public updateNotification(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/vivo/PCTools/Reciver/RecoveryDataReceiver;->f:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "update notify:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/support/v4/app/bm;

    iget-object v0, p0, Lcom/vivo/PCTools/Reciver/RecoveryDataReceiver;->b:Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/support/v4/app/bm;-><init>(Landroid/content/Context;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const v0, 0x7f020038

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x14

    if-le v4, v5, :cond_0

    const v0, 0x7f02000f

    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/support/v4/app/bm;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/bm;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/bm;->setSmallIcon(I)Landroid/support/v4/app/bm;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/support/v4/app/bm;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/bm;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/app/bm;->setWhen(J)Landroid/support/v4/app/bm;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/support/v4/app/bm;->setAutoCancel(Z)Landroid/support/v4/app/bm;

    move-result-object v0

    sget-object v1, Lcom/vivo/PCTools/Reciver/RecoveryDataReceiver;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/bm;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/bm;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/support/v4/app/bm;->setDefaults(I)Landroid/support/v4/app/bm;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/bm;->setOngoing(Z)Landroid/support/v4/app/bm;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/app/bm;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/bm;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/bm;->build()Landroid/app/Notification;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/PCTools/Reciver/RecoveryDataReceiver;->a:Landroid/app/Notification;

    iget-object v0, p0, Lcom/vivo/PCTools/Reciver/RecoveryDataReceiver;->c:Landroid/app/NotificationManager;

    iget-object v1, p0, Lcom/vivo/PCTools/Reciver/RecoveryDataReceiver;->a:Landroid/app/Notification;

    invoke-virtual {v0, v6, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method
