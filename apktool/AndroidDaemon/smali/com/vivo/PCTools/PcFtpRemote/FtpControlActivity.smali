.class public Lcom/vivo/PCTools/PcFtpRemote/FtpControlActivity;
.super Landroid/app/Activity;


# instance fields
.field protected a:Lorg/swiftp/af;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/os/Handler;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/Button;

.field private g:Landroid/app/Activity;

.field private h:Landroid/view/View;

.field private i:Landroid/view/View$OnClickListener;

.field private j:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lorg/swiftp/af;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/swiftp/af;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/FtpControlActivity;->a:Lorg/swiftp/af;

    new-instance v0, Lcom/vivo/PCTools/PcFtpRemote/c;

    invoke-direct {v0, p0}, Lcom/vivo/PCTools/PcFtpRemote/c;-><init>(Lcom/vivo/PCTools/PcFtpRemote/FtpControlActivity;)V

    iput-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/FtpControlActivity;->c:Landroid/os/Handler;

    new-instance v0, Lcom/vivo/PCTools/PcFtpRemote/d;

    invoke-direct {v0, p0}, Lcom/vivo/PCTools/PcFtpRemote/d;-><init>(Lcom/vivo/PCTools/PcFtpRemote/FtpControlActivity;)V

    iput-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/FtpControlActivity;->i:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/vivo/PCTools/PcFtpRemote/e;

    invoke-direct {v0, p0}, Lcom/vivo/PCTools/PcFtpRemote/e;-><init>(Lcom/vivo/PCTools/PcFtpRemote/FtpControlActivity;)V

    iput-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/FtpControlActivity;->j:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/vivo/PCTools/PcFtpRemote/FtpControlActivity;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/FtpControlActivity;->g:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic b(Lcom/vivo/PCTools/PcFtpRemote/FtpControlActivity;)V
    .locals 5

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/vivo/PCTools/PcFtpRemote/FtpControlActivity;->a:Lorg/swiftp/af;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Warning due to storage state "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/swiftp/af;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/FtpControlActivity;->g:Landroid/app/Activity;

    const v1, 0x7f0b015c

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1, v4, v4}, Landroid/widget/Toast;->setGravity(III)V

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/vivo/PCTools/PcFtpRemote/FtpControlActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0, v3}, Lcom/vivo/PCTools/PcFtpRemote/FtpControlActivity;->requestWindowFeature(I)Z

    const v1, 0x7f03000b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/FtpControlActivity;->h:Landroid/view/View;

    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/FtpControlActivity;->h:Landroid/view/View;

    const v1, 0x7f0a0042

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/FtpControlActivity;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/FtpControlActivity;->h:Landroid/view/View;

    const v1, 0x7f0a0041

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/FtpControlActivity;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/FtpControlActivity;->h:Landroid/view/View;

    const v1, 0x7f0a0040

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/FtpControlActivity;->e:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/FtpControlActivity;->h:Landroid/view/View;

    const v1, 0x7f0a0043

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/FtpControlActivity;->f:Landroid/widget/Button;

    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/FtpControlActivity;->f:Landroid/widget/Button;

    iget-object v1, p0, Lcom/vivo/PCTools/PcFtpRemote/FtpControlActivity;->i:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/vivo/PCTools/PcFtpRemote/FtpControlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0153

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Landroid/support/v4/view/e;->getWIFIString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/FtpControlActivity;->h:Landroid/view/View;

    const v2, 0x7f0a003d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/FtpControlActivity;->h:Landroid/view/View;

    const v2, 0x7f0a003e

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/FtpControlActivity;->h:Landroid/view/View;

    const v1, 0x7f0a003f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/vivo/PCTools/PcFtpRemote/f;

    invoke-direct {v1, p0}, Lcom/vivo/PCTools/PcFtpRemote/f;-><init>(Lcom/vivo/PCTools/PcFtpRemote/FtpControlActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/FtpControlActivity;->h:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/PcFtpRemote/FtpControlActivity;->setContentView(Landroid/view/View;)V

    const v0, 0x7f0a0046

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/PcFtpRemote/FtpControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0b0102

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0a0045

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/PcFtpRemote/FtpControlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Lcom/vivo/PCTools/PcFtpRemote/g;

    invoke-direct {v1, p0}, Lcom/vivo/PCTools/PcFtpRemote/g;-><init>(Lcom/vivo/PCTools/PcFtpRemote/FtpControlActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object p0, p0, Lcom/vivo/PCTools/PcFtpRemote/FtpControlActivity;->g:Landroid/app/Activity;

    invoke-static {}, Lorg/swiftp/ae;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/FtpControlActivity;->g:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null context!?!?!?"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {v0}, Lorg/swiftp/ae;->setContext(Landroid/content/Context;)V

    :cond_1
    invoke-virtual {p0}, Lcom/vivo/PCTools/PcFtpRemote/FtpControlActivity;->updateUi()V

    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/FtpControlActivity;->c:Landroid/os/Handler;

    invoke-static {v0}, Lorg/swiftp/aj;->registerClient(Landroid/os/Handler;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/FtpControlActivity;->c:Landroid/os/Handler;

    invoke-static {v0}, Lorg/swiftp/aj;->unregisterClient(Landroid/os/Handler;)V

    return-void
.end method

.method public onPause()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/FtpControlActivity;->c:Landroid/os/Handler;

    invoke-static {v0}, Lorg/swiftp/aj;->unregisterClient(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/FtpControlActivity;->a:Lorg/swiftp/af;

    const/4 v1, 0x3

    const-string v2, "Unregistered for wifi updates"

    invoke-virtual {v0, v1, v2}, Lorg/swiftp/af;->l(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/FtpControlActivity;->g:Landroid/app/Activity;

    iget-object v1, p0, Lcom/vivo/PCTools/PcFtpRemote/FtpControlActivity;->j:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/FtpControlActivity;->c:Landroid/os/Handler;

    invoke-static {v0}, Lorg/swiftp/aj;->registerClient(Landroid/os/Handler;)V

    invoke-virtual {p0}, Lcom/vivo/PCTools/PcFtpRemote/FtpControlActivity;->updateUi()V

    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/FtpControlActivity;->a:Lorg/swiftp/af;

    const/4 v1, 0x3

    const-string v2, "Registered for wifi updates"

    invoke-virtual {v0, v1, v2}, Lorg/swiftp/af;->l(ILjava/lang/String;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vivo/PCTools/PcFtpRemote/FtpControlActivity;->g:Landroid/app/Activity;

    iget-object v2, p0, Lcom/vivo/PCTools/PcFtpRemote/FtpControlActivity;->j:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/FtpControlActivity;->c:Landroid/os/Handler;

    invoke-static {v0}, Lorg/swiftp/aj;->registerClient(Landroid/os/Handler;)V

    invoke-virtual {p0}, Lcom/vivo/PCTools/PcFtpRemote/FtpControlActivity;->updateUi()V

    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/FtpControlActivity;->c:Landroid/os/Handler;

    invoke-static {v0}, Lorg/swiftp/aj;->unregisterClient(Landroid/os/Handler;)V

    return-void
.end method

.method public updateUi()V
    .locals 10

    const/4 v6, 0x3

    const/16 v3, 0x8

    const/4 v9, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/FtpControlActivity;->a:Lorg/swiftp/af;

    const-string v1, "Updating UI"

    invoke-virtual {v0, v6, v1, v9}, Lorg/swiftp/af;->l(ILjava/lang/String;Z)V

    invoke-static {p0}, Lcom/vivo/PCTools/s/a;->getInstance(Landroid/content/Context;)Lcom/vivo/PCTools/s/a;

    move-result-object v0

    iget-object v0, v0, Lcom/vivo/PCTools/s/a;->a:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {}, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->isWifiEnabled()Z

    move-result v4

    const v1, 0x7f0b0157

    invoke-virtual {p0, v1}, Lcom/vivo/PCTools/PcFtpRemote/FtpControlActivity;->getString(I)Ljava/lang/String;

    invoke-static {p0}, Landroid/support/v4/view/e;->getWIFIString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v4, :cond_0

    move-object v1, v0

    :cond_0
    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/FtpControlActivity;->h:Landroid/view/View;

    const v5, 0x7f0a003e

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/FtpControlActivity;->h:Landroid/view/View;

    const v1, 0x7f0a003f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v4, :cond_4

    const v1, 0x7f02003c

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-static {}, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/FtpControlActivity;->a:Lorg/swiftp/af;

    const-string v5, "updateUi: server is running"

    invoke-virtual {v0, v6, v5, v9}, Lorg/swiftp/af;->l(ILjava/lang/String;Z)V

    invoke-static {}, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->getWifiIp()Ljava/net/InetAddress;

    move-result-object v5

    if-eqz v5, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->getPort()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v6, p0, Lcom/vivo/PCTools/PcFtpRemote/FtpControlActivity;->b:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "ftp://"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->getPort()I

    move-result v7

    const/16 v8, 0x15

    if-ne v7, v8, :cond_1

    const-string v0, ""

    :cond_1
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/FtpControlActivity;->f:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    if-eqz v4, :cond_6

    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/FtpControlActivity;->f:Landroid/widget/Button;

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_3
    iget-object v4, p0, Lcom/vivo/PCTools/PcFtpRemote/FtpControlActivity;->f:Landroid/widget/Button;

    if-eqz v1, :cond_8

    const v0, 0x7f0b015e

    :goto_4
    invoke-virtual {v4, v0}, Landroid/widget/Button;->setText(I)V

    iget-object v4, p0, Lcom/vivo/PCTools/PcFtpRemote/FtpControlActivity;->b:Landroid/widget/TextView;

    if-eqz v1, :cond_9

    move v0, v2

    :goto_5
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v4, p0, Lcom/vivo/PCTools/PcFtpRemote/FtpControlActivity;->d:Landroid/widget/TextView;

    if-eqz v1, :cond_a

    move v0, v2

    :goto_6
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/FtpControlActivity;->e:Landroid/widget/TextView;

    if-eqz v1, :cond_b

    :goto_7
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_4
    const v1, 0x7f02003b

    goto/16 :goto_1

    :cond_5
    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/FtpControlActivity;->g:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;

    invoke-direct {v5, v0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v5}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/FtpControlActivity;->b:Landroid/widget/TextView;

    const-string v5, ""

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_6
    invoke-static {}, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/FtpControlActivity;->g:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;

    invoke-direct {v4, v0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v4}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    :cond_7
    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/FtpControlActivity;->f:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_3

    :cond_8
    const v0, 0x7f0b015d

    goto :goto_4

    :cond_9
    move v0, v3

    goto :goto_5

    :cond_a
    move v0, v3

    goto :goto_6

    :cond_b
    move v3, v2

    goto :goto_7
.end method
