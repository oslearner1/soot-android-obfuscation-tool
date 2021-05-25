.class final Landroid/support/v4/media/k;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private synthetic a:Landroid/support/v4/media/d;


# direct methods
.method private constructor <init>(Landroid/support/v4/media/d;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/media/k;->a:Landroid/support/v4/media/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/media/d;B)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v4/media/k;-><init>(Landroid/support/v4/media/d;)V

    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Landroid/support/v4/media/k;->a:Landroid/support/v4/media/d;

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Landroid/support/v4/media/d;)Landroid/support/v4/media/k;

    move-result-object v0

    if-eq v0, p0, :cond_1

    iget-object v0, p0, Landroid/support/v4/media/k;->a:Landroid/support/v4/media/d;

    invoke-static {v0}, Landroid/support/v4/media/d;->d(Landroid/support/v4/media/d;)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MediaBrowserCompat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/media/k;->a:Landroid/support/v4/media/d;

    invoke-static {v2}, Landroid/support/v4/media/d;->h(Landroid/support/v4/media/d;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with mServiceConnection="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/media/k;->a:Landroid/support/v4/media/d;

    invoke-static {v2}, Landroid/support/v4/media/d;->a(Landroid/support/v4/media/d;)Landroid/support/v4/media/k;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " this="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    const-string v0, "onServiceConnected"

    invoke-direct {p0, v0}, Landroid/support/v4/media/k;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/k;->a:Landroid/support/v4/media/d;

    invoke-static {p2}, Landroid/support/v4/media/IMediaBrowserServiceCompat$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/v4/media/IMediaBrowserServiceCompat;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/media/d;->a(Landroid/support/v4/media/d;Landroid/support/v4/media/IMediaBrowserServiceCompat;)Landroid/support/v4/media/IMediaBrowserServiceCompat;

    iget-object v0, p0, Landroid/support/v4/media/k;->a:Landroid/support/v4/media/d;

    iget-object v1, p0, Landroid/support/v4/media/k;->a:Landroid/support/v4/media/d;

    invoke-static {v1}, Landroid/support/v4/media/d;->i(Landroid/support/v4/media/d;)Landroid/support/v4/media/l;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/media/d;->a(Landroid/support/v4/media/d;Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;)Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;

    iget-object v0, p0, Landroid/support/v4/media/k;->a:Landroid/support/v4/media/d;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/support/v4/media/d;->a(Landroid/support/v4/media/d;I)I

    :try_start_0
    iget-object v0, p0, Landroid/support/v4/media/k;->a:Landroid/support/v4/media/d;

    invoke-static {v0}, Landroid/support/v4/media/d;->g(Landroid/support/v4/media/d;)Landroid/support/v4/media/IMediaBrowserServiceCompat;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/media/k;->a:Landroid/support/v4/media/d;

    invoke-static {v1}, Landroid/support/v4/media/d;->j(Landroid/support/v4/media/d;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/media/k;->a:Landroid/support/v4/media/d;

    invoke-static {v2}, Landroid/support/v4/media/d;->k(Landroid/support/v4/media/d;)Landroid/os/Bundle;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v4/media/k;->a:Landroid/support/v4/media/d;

    invoke-static {v3}, Landroid/support/v4/media/d;->f(Landroid/support/v4/media/d;)Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Landroid/support/v4/media/IMediaBrowserServiceCompat;->connect(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "MediaBrowserCompat"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RemoteException during connect for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/support/v4/media/k;->a:Landroid/support/v4/media/d;

    invoke-static {v2}, Landroid/support/v4/media/d;->h(Landroid/support/v4/media/d;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const/4 v1, 0x0

    const-string v0, "onServiceDisconnected"

    invoke-direct {p0, v0}, Landroid/support/v4/media/k;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/k;->a:Landroid/support/v4/media/d;

    invoke-static {v0, v1}, Landroid/support/v4/media/d;->a(Landroid/support/v4/media/d;Landroid/support/v4/media/IMediaBrowserServiceCompat;)Landroid/support/v4/media/IMediaBrowserServiceCompat;

    iget-object v0, p0, Landroid/support/v4/media/k;->a:Landroid/support/v4/media/d;

    invoke-static {v0, v1}, Landroid/support/v4/media/d;->a(Landroid/support/v4/media/d;Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;)Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;

    iget-object v0, p0, Landroid/support/v4/media/k;->a:Landroid/support/v4/media/d;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/support/v4/media/d;->a(Landroid/support/v4/media/d;I)I

    iget-object v0, p0, Landroid/support/v4/media/k;->a:Landroid/support/v4/media/d;

    invoke-static {v0}, Landroid/support/v4/media/d;->c(Landroid/support/v4/media/d;)Landroid/support/v4/app/s;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/s;->onConnectionSuspended()V

    goto :goto_0
.end method
