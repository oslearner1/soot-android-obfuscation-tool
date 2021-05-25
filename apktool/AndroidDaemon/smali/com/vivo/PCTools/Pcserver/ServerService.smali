.class public Lcom/vivo/PCTools/Pcserver/ServerService;
.super Landroid/app/Service;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final a:Ljava/lang/String;

.field public static b:Landroid/app/NotificationManager;

.field private static d:Landroid/accounts/AccountManager;

.field private static f:I

.field private static g:Lcom/vivo/PCTools/Pcserver/ServerService;


# instance fields
.field private c:Lcom/vivo/PCTools/Pcserver/j;

.field private e:Landroid/accounts/OnAccountsUpdateListener;

.field private h:Lcom/vivo/PCTools/Reciver/DeamonReciver;

.field private final i:Lcom/vivo/PCTools/Reciver/InternalReceiver;

.field private j:I

.field private k:Landroid/telephony/PhoneStateListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/vivo/PCTools/Pcserver/ServerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vivo/PCTools/Pcserver/ServerService;->a:Ljava/lang/String;

    const v0, 0x7f0b014b

    sput v0, Lcom/vivo/PCTools/Pcserver/ServerService;->f:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/vivo/PCTools/Reciver/DeamonReciver;

    invoke-direct {v0}, Lcom/vivo/PCTools/Reciver/DeamonReciver;-><init>()V

    iput-object v0, p0, Lcom/vivo/PCTools/Pcserver/ServerService;->h:Lcom/vivo/PCTools/Reciver/DeamonReciver;

    new-instance v0, Lcom/vivo/PCTools/Reciver/InternalReceiver;

    invoke-direct {v0}, Lcom/vivo/PCTools/Reciver/InternalReceiver;-><init>()V

    iput-object v0, p0, Lcom/vivo/PCTools/Pcserver/ServerService;->i:Lcom/vivo/PCTools/Reciver/InternalReceiver;

    const/4 v0, 0x0

    iput v0, p0, Lcom/vivo/PCTools/Pcserver/ServerService;->j:I

    new-instance v0, Lcom/vivo/PCTools/Pcserver/g;

    invoke-direct {v0, p0}, Lcom/vivo/PCTools/Pcserver/g;-><init>(Lcom/vivo/PCTools/Pcserver/ServerService;)V

    iput-object v0, p0, Lcom/vivo/PCTools/Pcserver/ServerService;->k:Landroid/telephony/PhoneStateListener;

    return-void
.end method

.method public static CloseNotification()V
    .locals 2

    sget-object v0, Lcom/vivo/PCTools/Pcserver/ServerService;->b:Landroid/app/NotificationManager;

    sget v1, Lcom/vivo/PCTools/Pcserver/ServerService;->f:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method static synthetic a(Lcom/vivo/PCTools/Pcserver/ServerService;)Lcom/vivo/PCTools/Pcserver/j;
    .locals 1

    iget-object v0, p0, Lcom/vivo/PCTools/Pcserver/ServerService;->c:Lcom/vivo/PCTools/Pcserver/j;

    return-object v0
.end method

.method static synthetic a(Lcom/vivo/PCTools/Pcserver/ServerService;I)V
    .locals 0

    iput p1, p0, Lcom/vivo/PCTools/Pcserver/ServerService;->j:I

    return-void
.end method

.method static synthetic b(Lcom/vivo/PCTools/Pcserver/ServerService;)I
    .locals 1

    iget v0, p0, Lcom/vivo/PCTools/Pcserver/ServerService;->j:I

    return v0
.end method

.method public static getService()Lcom/vivo/PCTools/Pcserver/ServerService;
    .locals 1

    sget-object v0, Lcom/vivo/PCTools/Pcserver/ServerService;->g:Lcom/vivo/PCTools/Pcserver/ServerService;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/vivo/PCTools/Pcserver/ServerService;->g:Lcom/vivo/PCTools/Pcserver/ServerService;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public enableListenPhoneStates(ZLandroid/content/Context;)V
    .locals 3

    const-string v0, "phone"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/vivo/PCTools/Pcserver/ServerService;->k:Landroid/telephony/PhoneStateListener;

    if-eqz p1, :cond_0

    const/16 v1, 0x20

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/vivo/PCTools/Pcserver/ServerService;->c:Lcom/vivo/PCTools/Pcserver/j;

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    new-instance v0, Lcom/vivo/PCTools/Pcserver/i;

    invoke-direct {v0, p0}, Lcom/vivo/PCTools/Pcserver/i;-><init>(Lcom/vivo/PCTools/Pcserver/ServerService;)V

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    const-class v0, Lcom/vivo/PCTools/Pcserver/ServerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onCreate:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/vivo/PCTools/Pcserver/e;->getInstance()Lcom/vivo/PCTools/Pcserver/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/vivo/PCTools/Pcserver/e;->setContext(Landroid/content/Context;)V

    invoke-static {}, Lcom/vivo/PCTools/Pcserver/e;->getInstance()Lcom/vivo/PCTools/Pcserver/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/PCTools/Pcserver/e;->start()V

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "HandlerThread"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    invoke-static {p0}, Landroid/support/v4/view/ae;->startFtpServer(Landroid/content/Context;)V

    new-instance v1, Lcom/vivo/PCTools/Pcserver/j;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Lcom/vivo/PCTools/Pcserver/j;-><init>(Landroid/os/Looper;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vivo/PCTools/Pcserver/ServerService;->c:Lcom/vivo/PCTools/Pcserver/j;

    iget-object v0, p0, Lcom/vivo/PCTools/Pcserver/ServerService;->i:Lcom/vivo/PCTools/Reciver/InternalReceiver;

    invoke-virtual {v0, p0}, Lcom/vivo/PCTools/Reciver/InternalReceiver;->registerAll(Landroid/content/Context;)V

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/Pcserver/ServerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    sput-object v0, Lcom/vivo/PCTools/Pcserver/ServerService;->b:Landroid/app/NotificationManager;

    const-string v0, "account"

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/Pcserver/ServerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountManager;

    sput-object v0, Lcom/vivo/PCTools/Pcserver/ServerService;->d:Landroid/accounts/AccountManager;

    sput-object p0, Lcom/vivo/PCTools/Pcserver/ServerService;->g:Lcom/vivo/PCTools/Pcserver/ServerService;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p0}, Lcom/vivo/PCTools/Pcserver/ServerService;->enableListenPhoneStates(ZLandroid/content/Context;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.provider.Telephony.VIVO_SMS_RECEIVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vivo/PCTools/Pcserver/ServerService;->h:Lcom/vivo/PCTools/Reciver/DeamonReciver;

    invoke-virtual {p0, v1, v0}, Lcom/vivo/PCTools/Pcserver/ServerService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Lcom/vivo/PCTools/Pcserver/h;

    invoke-direct {v0, p0}, Lcom/vivo/PCTools/Pcserver/h;-><init>(Lcom/vivo/PCTools/Pcserver/ServerService;)V

    iput-object v0, p0, Lcom/vivo/PCTools/Pcserver/ServerService;->e:Landroid/accounts/OnAccountsUpdateListener;

    sget-object v0, Lcom/vivo/PCTools/Pcserver/ServerService;->d:Landroid/accounts/AccountManager;

    iget-object v1, p0, Lcom/vivo/PCTools/Pcserver/ServerService;->e:Landroid/accounts/OnAccountsUpdateListener;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    return-void
.end method

.method public onDestroy()V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    iget-object v0, p0, Lcom/vivo/PCTools/Pcserver/ServerService;->h:Lcom/vivo/PCTools/Reciver/DeamonReciver;

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/Pcserver/ServerService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/vivo/PCTools/Pcserver/ServerService;->i:Lcom/vivo/PCTools/Reciver/InternalReceiver;

    invoke-virtual {v0, p0}, Lcom/vivo/PCTools/Reciver/InternalReceiver;->unregisterAll(Landroid/content/Context;)V

    sget-object v0, Lcom/vivo/PCTools/Pcserver/ServerService;->d:Landroid/accounts/AccountManager;

    iget-object v1, p0, Lcom/vivo/PCTools/Pcserver/ServerService;->e:Landroid/accounts/OnAccountsUpdateListener;

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->removeOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V

    iput-object v3, p0, Lcom/vivo/PCTools/Pcserver/ServerService;->e:Landroid/accounts/OnAccountsUpdateListener;

    iget-object v0, p0, Lcom/vivo/PCTools/Pcserver/ServerService;->c:Lcom/vivo/PCTools/Pcserver/j;

    invoke-virtual {v0}, Lcom/vivo/PCTools/Pcserver/j;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    invoke-static {}, Lcom/vivo/PCTools/Pcserver/e;->getInstance()Lcom/vivo/PCTools/Pcserver/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/PCTools/Pcserver/e;->shutdown()V

    invoke-static {p0}, Landroid/support/v4/view/ae;->stopFtpServer(Landroid/content/Context;)V

    invoke-static {}, Lcom/vivo/PCTools/Pcserver/ServerService;->CloseNotification()V

    invoke-virtual {p0}, Lcom/vivo/PCTools/Pcserver/ServerService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/vivo/PCTools/BaseApplication;

    invoke-virtual {v0}, Lcom/vivo/PCTools/BaseApplication;->getAppState()Lcom/vivo/PCTools/BaseApplication$AppState;

    move-result-object v1

    sget-object v2, Lcom/vivo/PCTools/BaseApplication$AppState;->USB:Lcom/vivo/PCTools/BaseApplication$AppState;

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/vivo/PCTools/BaseApplication;->getmUsbConnectActivityInstance()Lcom/vivo/PCTools/MainActivity/UsbConnectActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/vivo/PCTools/BaseApplication;->getmUsbConnectActivityInstance()Lcom/vivo/PCTools/MainActivity/UsbConnectActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vivo/PCTools/MainActivity/UsbConnectActivity;->finish()V

    :cond_0
    :goto_0
    sget-object v1, Lcom/vivo/PCTools/BaseApplication$AppState;->STOP:Lcom/vivo/PCTools/BaseApplication$AppState;

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/BaseApplication;->setAppState(Lcom/vivo/PCTools/BaseApplication$AppState;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p0}, Lcom/vivo/PCTools/Pcserver/ServerService;->enableListenPhoneStates(ZLandroid/content/Context;)V

    sput-object v3, Lcom/vivo/PCTools/Pcserver/ServerService;->g:Lcom/vivo/PCTools/Pcserver/ServerService;

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/vivo/PCTools/BaseApplication;->getAppState()Lcom/vivo/PCTools/BaseApplication$AppState;

    move-result-object v1

    sget-object v2, Lcom/vivo/PCTools/BaseApplication$AppState;->Wifi:Lcom/vivo/PCTools/BaseApplication$AppState;

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/vivo/PCTools/BaseApplication;->getmWifiConnectActivityInstance()Lcom/vivo/PCTools/MainActivity/WifiConnectActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/vivo/PCTools/BaseApplication;->getmWifiConnectActivityInstance()Lcom/vivo/PCTools/MainActivity/WifiConnectActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vivo/PCTools/MainActivity/WifiConnectActivity;->finish()V

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/vivo/PCTools/Pcserver/ServerService;->c:Lcom/vivo/PCTools/Pcserver/j;

    invoke-virtual {v0}, Lcom/vivo/PCTools/Pcserver/j;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const-string v1, "MSGTYPE"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->what:I

    iput p3, v0, Landroid/os/Message;->arg1:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/vivo/PCTools/Pcserver/ServerService;->c:Lcom/vivo/PCTools/Pcserver/j;

    invoke-virtual {v1, v0}, Lcom/vivo/PCTools/Pcserver/j;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0}, Lcom/vivo/PCTools/Pcserver/ServerService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/vivo/PCTools/BaseApplication;

    invoke-virtual {v0}, Lcom/vivo/PCTools/BaseApplication;->getAppState()Lcom/vivo/PCTools/BaseApplication$AppState;

    move-result-object v0

    if-eqz v1, :cond_1

    sget-object v2, Lcom/vivo/PCTools/BaseApplication$AppState;->USB:Lcom/vivo/PCTools/BaseApplication$AppState;

    if-eq v0, v2, :cond_1

    sget-object v0, Lcom/vivo/PCTools/Pcserver/ServerService;->a:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "usb"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/vivo/PCTools/Pcserver/ServerService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/vivo/PCTools/BaseApplication;

    sget-object v1, Lcom/vivo/PCTools/BaseApplication$AppState;->USB:Lcom/vivo/PCTools/BaseApplication$AppState;

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/BaseApplication;->setAppState(Lcom/vivo/PCTools/BaseApplication$AppState;)V

    :cond_1
    const/4 v0, 0x2

    return v0
.end method

.method public run()V
    .locals 0

    return-void
.end method

.method public shutdown()V
    .locals 0

    return-void
.end method

.method public start()V
    .locals 1

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
