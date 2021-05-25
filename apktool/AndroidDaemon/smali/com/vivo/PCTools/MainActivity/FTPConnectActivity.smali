.class public Lcom/vivo/PCTools/MainActivity/FTPConnectActivity;
.super Landroid/app/Activity;


# instance fields
.field a:Landroid/widget/TextView;

.field private b:Landroid/content/Context;

.field private c:Landroid/app/Activity;

.field private d:Landroid/os/Handler;

.field private e:Landroid/content/BroadcastReceiver;

.field private f:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/PCTools/MainActivity/FTPConnectActivity;->a:Landroid/widget/TextView;

    new-instance v0, Lcom/vivo/PCTools/MainActivity/d;

    invoke-direct {v0, p0}, Lcom/vivo/PCTools/MainActivity/d;-><init>(Lcom/vivo/PCTools/MainActivity/FTPConnectActivity;)V

    iput-object v0, p0, Lcom/vivo/PCTools/MainActivity/FTPConnectActivity;->d:Landroid/os/Handler;

    new-instance v0, Lcom/vivo/PCTools/MainActivity/e;

    invoke-direct {v0, p0}, Lcom/vivo/PCTools/MainActivity/e;-><init>(Lcom/vivo/PCTools/MainActivity/FTPConnectActivity;)V

    iput-object v0, p0, Lcom/vivo/PCTools/MainActivity/FTPConnectActivity;->e:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/vivo/PCTools/MainActivity/f;

    invoke-direct {v0, p0}, Lcom/vivo/PCTools/MainActivity/f;-><init>(Lcom/vivo/PCTools/MainActivity/FTPConnectActivity;)V

    iput-object v0, p0, Lcom/vivo/PCTools/MainActivity/FTPConnectActivity;->f:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private a()V
    .locals 6

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/vivo/PCTools/MainActivity/FTPConnectActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b0111

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/vivo/PCTools/MainActivity/g;

    invoke-direct {v3, p0}, Lcom/vivo/PCTools/MainActivity/g;-><init>(Lcom/vivo/PCTools/MainActivity/FTPConnectActivity;)V

    new-instance v4, Lcom/vivo/PCTools/MainActivity/h;

    invoke-direct {v4, p0}, Lcom/vivo/PCTools/MainActivity/h;-><init>(Lcom/vivo/PCTools/MainActivity/FTPConnectActivity;)V

    move-object v0, p0

    move-object v5, v1

    invoke-static/range {v0 .. v5}, Lcom/vivo/PCTools/util/c;->showConfirmDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method static synthetic a(Lcom/vivo/PCTools/MainActivity/FTPConnectActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/vivo/PCTools/MainActivity/FTPConnectActivity;->a()V

    return-void
.end method

.method static synthetic b(Lcom/vivo/PCTools/MainActivity/FTPConnectActivity;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/vivo/PCTools/MainActivity/FTPConnectActivity;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lcom/vivo/PCTools/MainActivity/FTPConnectActivity;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/vivo/PCTools/MainActivity/FTPConnectActivity;->c:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public initView()V
    .locals 2

    const v0, 0x7f0a0046

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/MainActivity/FTPConnectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0b0102

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0a0047

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/MainActivity/FTPConnectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a0045

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/MainActivity/FTPConnectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const v0, 0x7f0a0009

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/MainActivity/FTPConnectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vivo/PCTools/MainActivity/FTPConnectActivity;->a:Landroid/widget/TextView;

    const v0, 0x7f0a000a

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/MainActivity/FTPConnectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/vivo/PCTools/MainActivity/FTPConnectActivity;->f:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    invoke-direct {p0}, Lcom/vivo/PCTools/MainActivity/FTPConnectActivity;->a()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/MainActivity/FTPConnectActivity;->requestWindowFeature(I)Z

    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/MainActivity/FTPConnectActivity;->setContentView(I)V

    iput-object p0, p0, Lcom/vivo/PCTools/MainActivity/FTPConnectActivity;->b:Landroid/content/Context;

    iput-object p0, p0, Lcom/vivo/PCTools/MainActivity/FTPConnectActivity;->c:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/vivo/PCTools/MainActivity/FTPConnectActivity;->initView()V

    invoke-virtual {p0}, Lcom/vivo/PCTools/MainActivity/FTPConnectActivity;->startServer()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/vivo/PCTools/MainActivity/FTPConnectActivity;->d:Landroid/os/Handler;

    invoke-static {v0}, Lorg/swiftp/aj;->unregisterClient(Landroid/os/Handler;)V

    return-void
.end method

.method protected onResume()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/vivo/PCTools/MainActivity/FTPConnectActivity;->d:Landroid/os/Handler;

    invoke-static {v0}, Lorg/swiftp/aj;->registerClient(Landroid/os/Handler;)V

    const-string v0, "FTPConnectActivity"

    const-string v1, "Registered for wifi updates"

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vivo/PCTools/MainActivity/FTPConnectActivity;->c:Landroid/app/Activity;

    iget-object v2, p0, Lcom/vivo/PCTools/MainActivity/FTPConnectActivity;->e:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    iget-object v0, p0, Lcom/vivo/PCTools/MainActivity/FTPConnectActivity;->d:Landroid/os/Handler;

    invoke-static {v0}, Lorg/swiftp/aj;->unregisterClient(Landroid/os/Handler;)V

    return-void
.end method

.method public startServer()V
    .locals 6

    const/4 v5, 0x0

    const/4 v0, 0x0

    invoke-static {v0}, Lorg/swiftp/ae;->setLastError(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    sget-object v1, Lorg/swiftp/ac;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/vivo/PCTools/MainActivity/FTPConnectActivity;->b:Landroid/content/Context;

    const-class v3, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v0}, Lorg/swiftp/ae;->setChrootDir(Ljava/io/File;)V

    invoke-static {}, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->isRunning()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v2, "mounted"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "FTPConnectActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Warning due to storage state "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f0b011f

    const/4 v2, 0x1

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    const/16 v2, 0x11

    invoke-virtual {v0, v2, v5, v5}, Landroid/widget/Toast;->setGravity(III)V

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_2
    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/PCTools/MainActivity/FTPConnectActivity;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/vivo/PCTools/MainActivity/FTPConnectActivity;->updateUi()V

    goto :goto_0
.end method

.method public updateUi()V
    .locals 5

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/vivo/PCTools/MainActivity/FTPConnectActivity;->b:Landroid/content/Context;

    const-class v2, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {}, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "FTPConnectActivity"

    const-string v2, "startServer: server is running"

    invoke-static {v1, v2}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->getWifiIp()Ljava/net/InetAddress;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->getPort()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/vivo/PCTools/MainActivity/FTPConnectActivity;->a:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ftp://"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->getPort()I

    move-result v3

    const/16 v4, 0x15

    if-ne v3, v4, :cond_0

    const-string v0, ""

    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/vivo/PCTools/MainActivity/FTPConnectActivity;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    iget-object v0, p0, Lcom/vivo/PCTools/MainActivity/FTPConnectActivity;->a:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/vivo/PCTools/MainActivity/FTPConnectActivity;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method
