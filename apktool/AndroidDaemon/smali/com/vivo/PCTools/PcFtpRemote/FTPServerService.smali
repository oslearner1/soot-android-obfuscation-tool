.class public Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;
.super Landroid/app/Service;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static a:Ljava/lang/Thread;

.field private static d:Lorg/swiftp/af;

.field private static f:Landroid/net/wifi/WifiManager$WifiLock;

.field private static g:Ljava/util/List;

.field private static h:Ljava/util/List;

.field private static i:I

.field private static j:Z

.field private static k:Z

.field private static l:Z

.field private static p:Landroid/content/SharedPreferences;


# instance fields
.field private b:Z

.field private c:Lorg/swiftp/af;

.field private e:Ljava/net/ServerSocket;

.field private m:Lorg/swiftp/ai;

.field private n:Lorg/swiftp/ProxyConnector;

.field private o:Ljava/util/List;

.field private q:Landroid/os/PowerManager$WakeLock;

.field private r:Lcom/vivo/PCTools/s/a;

.field private final s:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    sput-object v2, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->a:Ljava/lang/Thread;

    new-instance v0, Lorg/swiftp/af;

    const-class v1, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/swiftp/af;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->d:Lorg/swiftp/af;

    sput-object v2, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->f:Landroid/net/wifi/WifiManager$WifiLock;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->g:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->h:Ljava/util/List;

    invoke-static {}, Lorg/swiftp/ac;->getUiLogLevel()I

    sput-object v2, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->p:Landroid/content/SharedPreferences;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->b:Z

    new-instance v0, Lorg/swiftp/af;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/swiftp/af;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->c:Lorg/swiftp/af;

    iput-object v2, p0, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->m:Lorg/swiftp/ai;

    iput-object v2, p0, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->n:Lorg/swiftp/ProxyConnector;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->o:Ljava/util/List;

    new-instance v0, Lcom/vivo/PCTools/PcFtpRemote/a;

    invoke-direct {v0, p0}, Lcom/vivo/PCTools/PcFtpRemote/a;-><init>(Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;)V

    iput-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->s:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private a()V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->stopForeground(Z)V

    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->c:Lorg/swiftp/af;

    const-string v1, "Cleared notification"

    invoke-virtual {v0, v1}, Lorg/swiftp/af;->d(Ljava/lang/String;)V

    return-void
.end method

.method private b()Z
    .locals 4

    const/4 v0, 0x1

    :try_start_0
    new-instance v1, Ljava/net/ServerSocket;

    invoke-direct {v1}, Ljava/net/ServerSocket;-><init>()V

    iput-object v1, p0, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->e:Ljava/net/ServerSocket;

    iget-object v1, p0, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->e:Ljava/net/ServerSocket;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/net/ServerSocket;->setReuseAddress(Z)V

    iget-object v1, p0, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->e:Ljava/net/ServerSocket;

    new-instance v2, Ljava/net/InetSocketAddress;

    sget v3, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->i:I

    invoke-direct {v2, v3}, Ljava/net/InetSocketAddress;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->c:Lorg/swiftp/af;

    const/4 v1, 0x5

    const-string v2, "Error opening port, check your network connection."

    invoke-virtual {v0, v1, v2}, Lorg/swiftp/af;->l(ILjava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c()V
    .locals 3

    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->c:Lorg/swiftp/af;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Terminating "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->o:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " session thread(s)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/swiftp/af;->i(Ljava/lang/String;)V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/swiftp/SessionThread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/swiftp/SessionThread;->closeDataSocket()V

    invoke-virtual {v0}, Lorg/swiftp/SessionThread;->closeSocket()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private d()V
    .locals 2

    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->c:Lorg/swiftp/af;

    const-string v1, "Releasing wake lock"

    invoke-virtual {v0, v1}, Lorg/swiftp/af;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->q:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->q:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->q:Landroid/os/PowerManager$WakeLock;

    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->c:Lorg/swiftp/af;

    const-string v1, "Finished releasing wake lock"

    invoke-virtual {v0, v1}, Lorg/swiftp/af;->d(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->c:Lorg/swiftp/af;

    const-string v1, "Couldn\'t release null wake lock"

    invoke-virtual {v0, v1}, Lorg/swiftp/af;->i(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private e()V
    .locals 2

    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->c:Lorg/swiftp/af;

    const-string v1, "Releasing wifi lock"

    invoke-virtual {v0, v1}, Lorg/swiftp/af;->d(Ljava/lang/String;)V

    sget-object v0, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->f:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->f:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    const/4 v0, 0x0

    sput-object v0, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->f:Landroid/net/wifi/WifiManager$WifiLock;

    :cond_0
    return-void
.end method

.method public static getPort()I
    .locals 1

    sget v0, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->i:I

    return v0
.end method

.method public static getServerLogContents()Ljava/util/List;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->h:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static getSessionMonitorContents()Ljava/util/List;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->g:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static getSettings()Landroid/content/SharedPreferences;
    .locals 1

    sget-object v0, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->p:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public static getWifiIp()Ljava/net/InetAddress;
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Lorg/swiftp/ae;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Global context is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {v1}, Lcom/vivo/PCTools/s/a;->getInstance(Landroid/content/Context;)Lcom/vivo/PCTools/s/a;

    move-result-object v1

    iget-object v1, v1, Lcom/vivo/PCTools/s/a;->a:Landroid/net/wifi/WifiManager;

    invoke-static {}, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->isWifiEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    invoke-static {v1}, Lorg/swiftp/ak;->intToInet(I)Ljava/net/InetAddress;

    move-result-object v0

    goto :goto_0
.end method

.method public static isRunning()Z
    .locals 3

    const/4 v2, 0x3

    sget-object v0, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->a:Ljava/lang/Thread;

    if-nez v0, :cond_0

    sget-object v0, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->d:Lorg/swiftp/af;

    const-string v1, "Server is not running (null serverThread)"

    invoke-virtual {v0, v2, v1}, Lorg/swiftp/af;->l(ILjava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->a:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->d:Lorg/swiftp/af;

    const-string v1, "serverThread non-null but !isAlive()"

    invoke-virtual {v0, v2, v1}, Lorg/swiftp/af;->l(ILjava/lang/String;)V

    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->d:Lorg/swiftp/af;

    const-string v1, "Server is alive"

    invoke-virtual {v0, v2, v1}, Lorg/swiftp/af;->l(ILjava/lang/String;)V

    goto :goto_1
.end method

.method public static isWifiEnabled()Z
    .locals 3

    invoke-static {}, Lorg/swiftp/ae;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Global context is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {v0}, Lcom/vivo/PCTools/s/a;->getInstance(Landroid/content/Context;)Lcom/vivo/PCTools/s/a;

    move-result-object v1

    iget-object v1, v1, Lcom/vivo/PCTools/s/a;->a:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static log(ILjava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lorg/swiftp/ac;->getServerLogScrollBack()I

    move-result v0

    :goto_0
    sget-object v1, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gt v1, v0, :cond_0

    return-void

    :cond_0
    sget-object v1, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->h:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static setPort(I)V
    .locals 0

    sput p0, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->i:I

    return-void
.end method

.method public static updateClients()V
    .locals 0

    invoke-static {}, Lorg/swiftp/aj;->updateClients()V

    return-void
.end method

.method public static writeMonitor(ZLjava/lang/String;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public cleanupAndStopService()V
    .locals 3

    invoke-virtual {p0}, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    invoke-direct {p0}, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->e()V

    invoke-direct {p0}, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->d()V

    invoke-direct {p0}, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->a()V

    return-void
.end method

.method public errorShutdown()V
    .locals 3

    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->c:Lorg/swiftp/af;

    const/4 v1, 0x6

    const-string v2, "Service errorShutdown() called"

    invoke-virtual {v0, v1, v2}, Lorg/swiftp/af;->l(ILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->cleanupAndStopService()V

    return-void
.end method

.method public getProxyConnector()Lorg/swiftp/ProxyConnector;
    .locals 1

    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->n:Lorg/swiftp/ProxyConnector;

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->c:Lorg/swiftp/af;

    const/4 v1, 0x3

    const-string v2, "PCtools Ftp server created"

    invoke-virtual {v0, v1, v2}, Lorg/swiftp/af;->l(ILjava/lang/String;)V

    invoke-static {}, Lorg/swiftp/ae;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/swiftp/ae;->setContext(Landroid/content/Context;)V

    :cond_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "file"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->s:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {v0}, Lcom/vivo/PCTools/s/a;->getInstance(Landroid/content/Context;)Lcom/vivo/PCTools/s/a;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->r:Lcom/vivo/PCTools/s/a;

    return-void
.end method

.method public onDestroy()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x5

    const/4 v2, 0x4

    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->c:Lorg/swiftp/af;

    const-string v1, "onDestroy() Stopping server"

    invoke-virtual {v0, v2, v1}, Lorg/swiftp/af;->l(ILjava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->b:Z

    sget-object v0, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->a:Ljava/lang/Thread;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->c:Lorg/swiftp/af;

    const-string v1, "Stopping with null serverThread"

    invoke-virtual {v0, v3, v1}, Lorg/swiftp/af;->l(ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->a:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :try_start_0
    sget-object v0, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->a:Ljava/lang/Thread;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, v1, v2}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    sget-object v0, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->a:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->c:Lorg/swiftp/af;

    const-string v1, "Server thread failed to exit"

    invoke-virtual {v0, v3, v1}, Lorg/swiftp/af;->l(ILjava/lang/String;)V

    :goto_2
    :try_start_1
    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->e:Ljava/net/ServerSocket;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->c:Lorg/swiftp/af;

    const/4 v1, 0x4

    const-string v2, "Closing listenSocket"

    invoke-virtual {v0, v1, v2}, Lorg/swiftp/af;->l(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->e:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_3
    invoke-static {}, Lorg/swiftp/aj;->updateClients()V

    sget-object v0, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->f:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->f:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    sput-object v4, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->f:Landroid/net/wifi/WifiManager$WifiLock;

    :cond_2
    invoke-direct {p0}, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->a()V

    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->s:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->c:Lorg/swiftp/af;

    const-string v1, "FTPServerService.onDestroy() finished"

    invoke-virtual {v0, v1}, Lorg/swiftp/af;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->c:Lorg/swiftp/af;

    const-string v1, "serverThread join()ed ok"

    invoke-virtual {v0, v1}, Lorg/swiftp/af;->d(Ljava/lang/String;)V

    sput-object v4, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->a:Ljava/lang/Thread;

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 4

    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->b:Z

    const/16 v0, 0xa

    :goto_0
    sget-object v1, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->a:Ljava/lang/Thread;

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->c:Lorg/swiftp/af;

    const/4 v1, 0x3

    const-string v2, "Creating server thread"

    invoke-virtual {v0, v1, v2}, Lorg/swiftp/af;->l(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object v0, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->a:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_1
    return-void

    :cond_0
    iget-object v1, p0, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->c:Lorg/swiftp/af;

    const/4 v2, 0x5

    const-string v3, "Won\'t start, server thread exists"

    invoke-virtual {v1, v2, v3}, Lorg/swiftp/af;->l(ILjava/lang/String;)V

    if-lez v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    const-wide/16 v1, 0x3e8

    invoke-static {v1, v2}, Lorg/swiftp/ak;->sleepIgnoreInterupt(J)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->c:Lorg/swiftp/af;

    const/4 v1, 0x6

    const-string v2, "Server thread already exists"

    invoke-virtual {v0, v1, v2}, Lorg/swiftp/af;->l(ILjava/lang/String;)V

    goto :goto_1
.end method

.method public registerSessionThread(Lorg/swiftp/SessionThread;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->o:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->c:Lorg/swiftp/af;

    const-string v1, "Registered session thread"

    invoke-virtual {v0, v1}, Lorg/swiftp/af;->d(Ljava/lang/String;)V

    return-void

    :cond_1
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/swiftp/SessionThread;

    invoke-virtual {v0}, Lorg/swiftp/SessionThread;->isAlive()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->c:Lorg/swiftp/af;

    const/4 v4, 0x3

    const-string v5, "Cleaning up finished session..."

    invoke-virtual {v3, v4, v5}, Lorg/swiftp/af;->l(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Lorg/swiftp/SessionThread;->join()V

    iget-object v3, p0, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->c:Lorg/swiftp/af;

    const/4 v4, 0x3

    const-string v5, "Thread joined"

    invoke-virtual {v3, v4, v5}, Lorg/swiftp/af;->l(ILjava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lorg/swiftp/SessionThread;->closeSocket()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->c:Lorg/swiftp/af;

    const/4 v3, 0x3

    const-string v4, "Interrupted while joining"

    invoke-virtual {v0, v3, v4}, Lorg/swiftp/af;->l(ILjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/swiftp/SessionThread;

    iget-object v2, p0, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->o:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public run()V
    .locals 10

    const/16 v4, 0xa

    const/4 v9, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x3

    const/4 v1, 0x0

    invoke-static {}, Lorg/swiftp/aj;->updateClients()V

    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->c:Lorg/swiftp/af;

    const-string v2, "Server thread running"

    invoke-virtual {v0, v8, v2}, Lorg/swiftp/af;->l(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->c:Lorg/swiftp/af;

    const-string v2, "Loading settings"

    invoke-virtual {v0, v8, v2}, Lorg/swiftp/af;->l(ILjava/lang/String;)V

    invoke-static {}, Lorg/swiftp/ac;->getSettingsName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lorg/swiftp/ac;->getSettingsMode()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->p:Landroid/content/SharedPreferences;

    const-string v2, "portNum"

    sget v3, Lorg/swiftp/ac;->b:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->i:I

    if-nez v0, :cond_0

    sget v0, Lorg/swiftp/ac;->b:I

    sput v0, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->i:I

    :cond_0
    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->c:Lorg/swiftp/af;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Using port "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->i:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v8, v2}, Lorg/swiftp/af;->l(ILjava/lang/String;)V

    sput-boolean v1, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->k:Z

    sput-boolean v7, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->j:Z

    sput-boolean v1, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->l:Z

    sget-boolean v0, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->j:Z

    if-eqz v0, :cond_5

    move v0, v1

    :goto_0
    invoke-direct {p0}, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->b()Z

    move-result v2

    if-nez v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    if-lt v0, v4, :cond_2

    :cond_1
    if-lt v0, v4, :cond_3

    invoke-virtual {p0}, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->cleanupAndStopService()V

    :goto_1
    return-void

    :cond_2
    sget v2, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->i:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->i:I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->c:Lorg/swiftp/af;

    const-string v2, "Taking wifi lock"

    invoke-virtual {v0, v2}, Lorg/swiftp/af;->d(Ljava/lang/String;)V

    sget-object v0, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->f:Landroid/net/wifi/WifiManager$WifiLock;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->r:Lcom/vivo/PCTools/s/a;

    iget-object v0, v0, Lcom/vivo/PCTools/s/a;->a:Landroid/net/wifi/WifiManager;

    const-string v2, "FTP"

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager;->createWifiLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v0

    sput-object v0, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->f:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager$WifiLock;->setReferenceCounted(Z)V

    :cond_4
    sget-object v0, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->f:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    :cond_5
    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->q:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_6

    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const-string v2, "FTP"

    invoke-virtual {v0, v7, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->q:Landroid/os/PowerManager$WakeLock;

    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->q:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    :cond_6
    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->c:Lorg/swiftp/af;

    const-string v2, "Acquiring wake lock"

    invoke-virtual {v0, v2}, Lorg/swiftp/af;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->q:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->c:Lorg/swiftp/af;

    const/4 v2, 0x4

    const-string v3, "PCTools Ftp server ready"

    invoke-virtual {v0, v2, v3}, Lorg/swiftp/af;->l(ILjava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v0, v2, :cond_b

    const v0, 0x7f020012

    :goto_2
    const v2, 0x7f0b0158

    invoke-virtual {p0, v2}, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    new-instance v5, Landroid/support/v4/app/bm;

    invoke-virtual {p0}, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/support/v4/app/bm;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v0}, Landroid/support/v4/app/bm;->setSmallIcon(I)Landroid/support/v4/app/bm;

    invoke-virtual {v5, v2}, Landroid/support/v4/app/bm;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/bm;

    invoke-virtual {v5, v3, v4}, Landroid/support/v4/app/bm;->setWhen(J)Landroid/support/v4/app/bm;

    invoke-virtual {v5, v7}, Landroid/support/v4/app/bm;->setOngoing(Z)Landroid/support/v4/app/bm;

    const v0, 0x7f0b0159

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v0, ""

    invoke-static {}, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->getWifiIp()Ljava/net/InetAddress;

    move-result-object v4

    if-eqz v4, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->getPort()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "ftp://"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->getPort()I

    move-result v6

    const/16 v7, 0x15

    if-ne v6, v7, :cond_7

    const-string v0, ""

    :cond_7
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_8
    new-instance v4, Landroid/content/Intent;

    const-class v6, Lcom/vivo/PCTools/PcFtpRemote/FtpControlActivity;

    invoke-direct {v4, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v6, ""

    const/4 v7, 0x2

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {p0, v1, v4, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v5, v2}, Landroid/support/v4/app/bm;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/bm;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/support/v4/app/bm;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/bm;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v4/app/bm;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/bm;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v4/app/bm;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/bm;

    const v0, 0x1e23d

    invoke-virtual {v5}, Landroid/support/v4/app/bm;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->startForeground(ILandroid/app/Notification;)V

    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->c:Lorg/swiftp/af;

    const-string v2, "Notication setup done"

    invoke-virtual {v0, v2}, Lorg/swiftp/af;->d(Ljava/lang/String;)V

    invoke-static {}, Lorg/swiftp/aj;->updateClients()V

    :goto_3
    iget-boolean v0, p0, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->b:Z

    if-eqz v0, :cond_c

    invoke-direct {p0}, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->c()V

    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->n:Lorg/swiftp/ProxyConnector;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->n:Lorg/swiftp/ProxyConnector;

    invoke-virtual {v0}, Lorg/swiftp/ProxyConnector;->quit()V

    iput-object v9, p0, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->n:Lorg/swiftp/ProxyConnector;

    :cond_9
    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->m:Lorg/swiftp/ai;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->m:Lorg/swiftp/ai;

    invoke-virtual {v0}, Lorg/swiftp/ai;->quit()V

    iput-object v9, p0, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->m:Lorg/swiftp/ai;

    :cond_a
    iput-boolean v1, p0, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->b:Z

    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->c:Lorg/swiftp/af;

    const-string v1, "Exiting cleanly, returning from run()"

    invoke-virtual {v0, v8, v1}, Lorg/swiftp/af;->l(ILjava/lang/String;)V

    invoke-direct {p0}, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->a()V

    invoke-direct {p0}, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->d()V

    invoke-direct {p0}, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->e()V

    goto/16 :goto_1

    :cond_b
    const v0, 0x7f020014

    goto/16 :goto_2

    :cond_c
    sget-boolean v0, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->j:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->m:Lorg/swiftp/ai;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->m:Lorg/swiftp/ai;

    invoke-virtual {v0}, Lorg/swiftp/ai;->isAlive()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->c:Lorg/swiftp/af;

    const-string v2, "Joining crashed wifiListener thread"

    invoke-virtual {v0, v8, v2}, Lorg/swiftp/af;->l(ILjava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->m:Lorg/swiftp/ai;

    invoke-virtual {v0}, Lorg/swiftp/ai;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_4
    iput-object v9, p0, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->m:Lorg/swiftp/ai;

    :cond_d
    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->m:Lorg/swiftp/ai;

    if-nez v0, :cond_e

    new-instance v0, Lorg/swiftp/ai;

    iget-object v2, p0, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->e:Ljava/net/ServerSocket;

    invoke-direct {v0, v2, p0}, Lorg/swiftp/ai;-><init>(Ljava/net/ServerSocket;Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;)V

    iput-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->m:Lorg/swiftp/ai;

    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->m:Lorg/swiftp/ai;

    invoke-virtual {v0}, Lorg/swiftp/ai;->start()V

    :cond_e
    const-wide/16 v2, 0x3e8

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->c:Lorg/swiftp/af;

    const-string v2, "Thread interrupted"

    invoke-virtual {v0, v8, v2}, Lorg/swiftp/af;->l(ILjava/lang/String;)V

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_4
.end method
