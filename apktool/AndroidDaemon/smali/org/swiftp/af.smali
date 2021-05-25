.class public Lorg/swiftp/af;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/swiftp/af;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lorg/swiftp/af;->l(ILjava/lang/String;Z)V

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lorg/swiftp/af;->l(ILjava/lang/String;Z)V

    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lorg/swiftp/af;->l(ILjava/lang/String;Z)V

    return-void
.end method

.method public l(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/swiftp/af;->l(ILjava/lang/String;Z)V

    return-void
.end method

.method public l(ILjava/lang/String;Z)V
    .locals 3

    const-class v1, Lorg/swiftp/af;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x6

    if-eq p1, v2, :cond_0

    const/4 v2, 0x5

    if-ne p1, v2, :cond_1

    :cond_0
    invoke-static {v0}, Lorg/swiftp/ae;->setLastError(Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lorg/swiftp/ac;->getConsoleLogLevel()I

    move-result v2

    if-lt p1, v2, :cond_2

    iget-object v2, p0, Lorg/swiftp/af;->a:Ljava/lang/String;

    invoke-static {p1, v2, v0}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-nez p3, :cond_3

    invoke-static {}, Lorg/swiftp/ac;->getUiLogLevel()I

    move-result v2

    if-lt p1, v2, :cond_3

    invoke-static {p1, v0}, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->log(ILjava/lang/String;)V

    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public w(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lorg/swiftp/af;->l(ILjava/lang/String;Z)V

    return-void
.end method
