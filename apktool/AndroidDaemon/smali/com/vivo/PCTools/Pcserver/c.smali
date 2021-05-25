.class public final Lcom/vivo/PCTools/Pcserver/c;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f0b014b

    iput v0, p0, Lcom/vivo/PCTools/Pcserver/c;->a:I

    return-void
.end method


# virtual methods
.method public final getStringFromResouces(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vivo/PCTools/Pcserver/c;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final showNotification(Landroid/app/Service;Landroid/app/NotificationManager;)V
    .locals 9

    const/high16 v8, 0x14000000

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v0, "Notify"

    const-string v1, "come to showNotification"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/vivo/PCTools/Pcserver/c;->b:Landroid/content/Context;

    const-string v1, "restart"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const v0, 0x7f0b00ff

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/Pcserver/c;->getStringFromResouces(I)Ljava/lang/String;

    move-result-object v4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-ge v0, v5, :cond_1

    const v0, 0x7f020038

    :goto_0
    new-instance v5, Landroid/support/v4/app/bm;

    invoke-direct {v5, p1}, Landroid/support/v4/app/bm;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v0}, Landroid/support/v4/app/bm;->setSmallIcon(I)Landroid/support/v4/app/bm;

    invoke-virtual {v5, v4}, Landroid/support/v4/app/bm;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/bm;

    invoke-virtual {v5, v2, v3}, Landroid/support/v4/app/bm;->setWhen(J)Landroid/support/v4/app/bm;

    invoke-virtual {v5, v7}, Landroid/support/v4/app/bm;->setOngoing(Z)Landroid/support/v4/app/bm;

    invoke-virtual {p1}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/vivo/PCTools/BaseApplication;

    invoke-virtual {v0}, Lcom/vivo/PCTools/BaseApplication;->getAppState()Lcom/vivo/PCTools/BaseApplication$AppState;

    move-result-object v2

    sget-object v3, Lcom/vivo/PCTools/BaseApplication$AppState;->Wifi:Lcom/vivo/PCTools/BaseApplication$AppState;

    if-ne v2, v3, :cond_2

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/vivo/PCTools/MainActivity/WifiConnectActivity;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {p1, v6, v0, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    const v1, 0x7f0b0100

    invoke-virtual {p0, v1}, Lcom/vivo/PCTools/Pcserver/c;->getStringFromResouces(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {p1}, Landroid/support/v4/view/e;->getWIFIString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v4}, Landroid/support/v4/app/bm;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/bm;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v4/app/bm;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/bm;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/bm;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/bm;

    iget v0, p0, Lcom/vivo/PCTools/Pcserver/c;->a:I

    invoke-virtual {v5}, Landroid/support/v4/app/bm;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const v0, 0x7f02000f

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/vivo/PCTools/BaseApplication;->getAppState()Lcom/vivo/PCTools/BaseApplication$AppState;

    move-result-object v0

    sget-object v1, Lcom/vivo/PCTools/BaseApplication$AppState;->USB:Lcom/vivo/PCTools/BaseApplication$AppState;

    if-ne v0, v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vivo/PCTools/MainActivity/IndicatorTabActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {p1, v6, v0, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v5, v4}, Landroid/support/v4/app/bm;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/bm;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/bm;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/bm;

    move-result-object v0

    const v1, 0x7f0b0101

    invoke-virtual {p0, v1}, Lcom/vivo/PCTools/Pcserver/c;->getStringFromResouces(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/bm;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/bm;

    iget v0, p0, Lcom/vivo/PCTools/Pcserver/c;->a:I

    invoke-virtual {v5}, Landroid/support/v4/app/bm;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    goto :goto_1
.end method
