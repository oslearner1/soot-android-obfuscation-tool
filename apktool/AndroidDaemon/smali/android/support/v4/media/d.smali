.class final Landroid/support/v4/media/d;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/content/ComponentName;

.field private final c:Landroid/support/v4/app/s;

.field private final d:Landroid/os/Bundle;

.field private final e:Landroid/os/Handler;

.field private final f:Landroid/support/v4/util/ArrayMap;

.field private g:I

.field private h:Landroid/support/v4/media/k;

.field private i:Landroid/support/v4/media/IMediaBrowserServiceCompat;

.field private j:Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;

.field private k:Ljava/lang/String;

.field private l:Landroid/support/v4/media/session/MediaSessionCompat$Token;

.field private m:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/support/v4/app/s;Landroid/os/Bundle;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/support/v4/media/d;->e:Landroid/os/Handler;

    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/support/v4/media/d;->f:Landroid/support/v4/util/ArrayMap;

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/media/d;->g:I

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "service component must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "connection callback must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput-object p1, p0, Landroid/support/v4/media/d;->a:Landroid/content/Context;

    iput-object p2, p0, Landroid/support/v4/media/d;->b:Landroid/content/ComponentName;

    iput-object p3, p0, Landroid/support/v4/media/d;->c:Landroid/support/v4/app/s;

    iput-object p4, p0, Landroid/support/v4/media/d;->d:Landroid/os/Bundle;

    return-void
.end method

.method static synthetic a(Landroid/support/v4/media/d;I)I
    .locals 0

    iput p1, p0, Landroid/support/v4/media/d;->g:I

    return p1
.end method

.method static synthetic a(Landroid/support/v4/media/d;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    iput-object p1, p0, Landroid/support/v4/media/d;->m:Landroid/os/Bundle;

    return-object p1
.end method

.method static synthetic a(Landroid/support/v4/media/d;Landroid/support/v4/media/IMediaBrowserServiceCompat;)Landroid/support/v4/media/IMediaBrowserServiceCompat;
    .locals 0

    iput-object p1, p0, Landroid/support/v4/media/d;->i:Landroid/support/v4/media/IMediaBrowserServiceCompat;

    return-object p1
.end method

.method static synthetic a(Landroid/support/v4/media/d;Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;)Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;
    .locals 0

    iput-object p1, p0, Landroid/support/v4/media/d;->j:Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;

    return-object p1
.end method

.method static synthetic a(Landroid/support/v4/media/d;)Landroid/support/v4/media/k;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/d;->h:Landroid/support/v4/media/k;

    return-object v0
.end method

.method static synthetic a(Landroid/support/v4/media/d;Landroid/support/v4/media/session/MediaSessionCompat$Token;)Landroid/support/v4/media/session/MediaSessionCompat$Token;
    .locals 0

    iput-object p1, p0, Landroid/support/v4/media/d;->l:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    return-object p1
.end method

.method static synthetic a(I)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Landroid/support/v4/media/d;->b(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Landroid/support/v4/media/d;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Landroid/support/v4/media/d;->k:Ljava/lang/String;

    return-object p1
.end method

.method private a()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/v4/media/d;->h:Landroid/support/v4/media/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/media/d;->a:Landroid/content/Context;

    iget-object v1, p0, Landroid/support/v4/media/d;->h:Landroid/support/v4/media/k;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/media/d;->g:I

    iput-object v2, p0, Landroid/support/v4/media/d;->h:Landroid/support/v4/media/k;

    iput-object v2, p0, Landroid/support/v4/media/d;->i:Landroid/support/v4/media/IMediaBrowserServiceCompat;

    iput-object v2, p0, Landroid/support/v4/media/d;->j:Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;

    iput-object v2, p0, Landroid/support/v4/media/d;->k:Ljava/lang/String;

    iput-object v2, p0, Landroid/support/v4/media/d;->l:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    return-void
.end method

.method static synthetic a(Landroid/support/v4/media/d;Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;Ljava/lang/String;Landroid/support/v4/media/session/MediaSessionCompat$Token;Landroid/os/Bundle;)V
    .locals 7

    iget-object v6, p0, Landroid/support/v4/media/d;->e:Landroid/os/Handler;

    new-instance v0, Landroid/support/v4/media/h;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/media/h;-><init>(Landroid/support/v4/media/d;Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;Ljava/lang/String;Landroid/support/v4/media/session/MediaSessionCompat$Token;Landroid/os/Bundle;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic a(Landroid/support/v4/media/d;Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;Ljava/lang/String;Ljava/util/List;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/media/d;->e:Landroid/os/Handler;

    new-instance v1, Landroid/support/v4/media/j;

    invoke-direct {v1, p0, p1, p3, p2}, Landroid/support/v4/media/j;-><init>(Landroid/support/v4/media/d;Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic a(Landroid/support/v4/media/d;Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Landroid/support/v4/media/d;->j:Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;

    if-eq v0, p1, :cond_1

    iget v0, p0, Landroid/support/v4/media/d;->g:I

    if-eqz v0, :cond_0

    const-string v0, "MediaBrowserCompat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/media/d;->b:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with mServiceConnection="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/media/d;->j:Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;

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

.method private static b(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UNKNOWN/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "CONNECT_STATE_DISCONNECTED"

    goto :goto_0

    :pswitch_1
    const-string v0, "CONNECT_STATE_CONNECTING"

    goto :goto_0

    :pswitch_2
    const-string v0, "CONNECT_STATE_CONNECTED"

    goto :goto_0

    :pswitch_3
    const-string v0, "CONNECT_STATE_SUSPENDED"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic b(Landroid/support/v4/media/d;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/media/d;->a()V

    return-void
.end method

.method static synthetic b(Landroid/support/v4/media/d;Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/media/d;->e:Landroid/os/Handler;

    new-instance v1, Landroid/support/v4/media/i;

    invoke-direct {v1, p0, p1}, Landroid/support/v4/media/i;-><init>(Landroid/support/v4/media/d;Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic c(Landroid/support/v4/media/d;)Landroid/support/v4/app/s;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/d;->c:Landroid/support/v4/app/s;

    return-object v0
.end method

.method static synthetic d(Landroid/support/v4/media/d;)I
    .locals 1

    iget v0, p0, Landroid/support/v4/media/d;->g:I

    return v0
.end method

.method static synthetic e(Landroid/support/v4/media/d;)Landroid/support/v4/util/ArrayMap;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/d;->f:Landroid/support/v4/util/ArrayMap;

    return-object v0
.end method

.method static synthetic f(Landroid/support/v4/media/d;)Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/d;->j:Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;

    return-object v0
.end method

.method static synthetic g(Landroid/support/v4/media/d;)Landroid/support/v4/media/IMediaBrowserServiceCompat;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/d;->i:Landroid/support/v4/media/IMediaBrowserServiceCompat;

    return-object v0
.end method

.method static synthetic h(Landroid/support/v4/media/d;)Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/d;->b:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic i(Landroid/support/v4/media/d;)Landroid/support/v4/media/l;
    .locals 1

    new-instance v0, Landroid/support/v4/media/l;

    invoke-direct {v0, p0}, Landroid/support/v4/media/l;-><init>(Landroid/support/v4/media/d;)V

    return-object v0
.end method

.method static synthetic j(Landroid/support/v4/media/d;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/d;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic k(Landroid/support/v4/media/d;)Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/d;->d:Landroid/os/Bundle;

    return-object v0
.end method


# virtual methods
.method public final connect()V
    .locals 6

    const/4 v2, 0x1

    const/4 v0, 0x0

    iget v1, p0, Landroid/support/v4/media/d;->g:I

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "connect() called while not disconnected (state="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Landroid/support/v4/media/d;->g:I

    invoke-static {v2}, Landroid/support/v4/media/d;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v1, p0, Landroid/support/v4/media/d;->i:Landroid/support/v4/media/IMediaBrowserServiceCompat;

    if-eqz v1, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mServiceBinder should be null. Instead it is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/support/v4/media/d;->i:Landroid/support/v4/media/IMediaBrowserServiceCompat;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v1, p0, Landroid/support/v4/media/d;->j:Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;

    if-eqz v1, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mServiceCallbacks should be null. Instead it is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/support/v4/media/d;->j:Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput v2, p0, Landroid/support/v4/media/d;->g:I

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.media.browse.MediaBrowserServiceCompat"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/support/v4/media/d;->b:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    new-instance v2, Landroid/support/v4/media/k;

    invoke-direct {v2, p0, v0}, Landroid/support/v4/media/k;-><init>(Landroid/support/v4/media/d;B)V

    iput-object v2, p0, Landroid/support/v4/media/d;->h:Landroid/support/v4/media/k;

    :try_start_0
    iget-object v3, p0, Landroid/support/v4/media/d;->a:Landroid/content/Context;

    iget-object v4, p0, Landroid/support/v4/media/d;->h:Landroid/support/v4/media/k;

    const/4 v5, 0x1

    invoke-virtual {v3, v1, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/support/v4/media/d;->e:Landroid/os/Handler;

    new-instance v1, Landroid/support/v4/media/e;

    invoke-direct {v1, p0, v2}, Landroid/support/v4/media/e;-><init>(Landroid/support/v4/media/d;Landroid/content/ServiceConnection;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void

    :catch_0
    move-exception v1

    const-string v1, "MediaBrowserCompat"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed binding to service "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Landroid/support/v4/media/d;->b:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public final disconnect()V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/media/d;->j:Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/support/v4/media/d;->i:Landroid/support/v4/media/IMediaBrowserServiceCompat;

    iget-object v1, p0, Landroid/support/v4/media/d;->j:Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;

    invoke-interface {v0, v1}, Landroid/support/v4/media/IMediaBrowserServiceCompat;->disconnect(Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-direct {p0}, Landroid/support/v4/media/d;->a()V

    return-void

    :catch_0
    move-exception v0

    const-string v0, "MediaBrowserCompat"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RemoteException during connect for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/support/v4/media/d;->b:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public final getExtras()Landroid/os/Bundle;
    .locals 3

    invoke-virtual {p0}, Landroid/support/v4/media/d;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getExtras() called while not connected (state="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Landroid/support/v4/media/d;->g:I

    invoke-static {v2}, Landroid/support/v4/media/d;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/d;->m:Landroid/os/Bundle;

    return-object v0
.end method

.method public final getItem(Ljava/lang/String;Landroid/support/v4/media/c;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mediaId is empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cb is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p0, Landroid/support/v4/media/d;->g:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const-string v0, "MediaBrowserCompat"

    const-string v1, "Not connected, unable to retrieve the MediaItem."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/support/v4/media/d;->e:Landroid/os/Handler;

    new-instance v1, Landroid/support/v4/media/f;

    invoke-direct {v1, p0, p2, p1}, Landroid/support/v4/media/f;-><init>(Landroid/support/v4/media/d;Landroid/support/v4/media/c;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_2
    new-instance v0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$3;

    iget-object v1, p0, Landroid/support/v4/media/d;->e:Landroid/os/Handler;

    invoke-direct {v0, p0, v1, p2, p1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$3;-><init>(Landroid/support/v4/media/d;Landroid/os/Handler;Landroid/support/v4/media/c;Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Landroid/support/v4/media/d;->i:Landroid/support/v4/media/IMediaBrowserServiceCompat;

    invoke-interface {v1, p1, v0}, Landroid/support/v4/media/IMediaBrowserServiceCompat;->getMediaItem(Ljava/lang/String;Landroid/support/v4/os/ResultReceiver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "MediaBrowserCompat"

    const-string v1, "Remote error getting media item."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/support/v4/media/d;->e:Landroid/os/Handler;

    new-instance v1, Landroid/support/v4/media/g;

    invoke-direct {v1, p0, p2, p1}, Landroid/support/v4/media/g;-><init>(Landroid/support/v4/media/d;Landroid/support/v4/media/c;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public final getRoot()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Landroid/support/v4/media/d;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getSessionToken() called while not connected(state="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Landroid/support/v4/media/d;->g:I

    invoke-static {v2}, Landroid/support/v4/media/d;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/d;->k:Ljava/lang/String;

    return-object v0
.end method

.method public final getServiceComponent()Landroid/content/ComponentName;
    .locals 3

    invoke-virtual {p0}, Landroid/support/v4/media/d;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getServiceComponent() called while not connected (state="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Landroid/support/v4/media/d;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/d;->b:Landroid/content/ComponentName;

    return-object v0
.end method

.method public final getSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;
    .locals 3

    invoke-virtual {p0}, Landroid/support/v4/media/d;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getSessionToken() called while not connected(state="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Landroid/support/v4/media/d;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/d;->l:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    return-object v0
.end method

.method public final isConnected()Z
    .locals 2

    iget v0, p0, Landroid/support/v4/media/d;->g:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final subscribe$679fa4aa(Ljava/lang/String;Lcom/vivo/PCTools/Pcserver/a;)V
    .locals 3

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "parentId is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Landroid/support/v4/media/d;->f:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/m;

    if-nez v0, :cond_4

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_2

    new-instance v0, Landroid/support/v4/media/m;

    invoke-direct {v0, p1}, Landroid/support/v4/media/m;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/support/v4/media/d;->f:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iput-object p2, v0, Landroid/support/v4/media/m;->a:Lcom/vivo/PCTools/Pcserver/a;

    iget v0, p0, Landroid/support/v4/media/d;->g:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    :try_start_0
    iget-object v0, p0, Landroid/support/v4/media/d;->i:Landroid/support/v4/media/IMediaBrowserServiceCompat;

    iget-object v1, p0, Landroid/support/v4/media/d;->j:Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;

    invoke-interface {v0, p1, v1}, Landroid/support/v4/media/IMediaBrowserServiceCompat;->addSubscription(Ljava/lang/String;Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    return-void

    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "MediaBrowserCompat"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "addSubscription failed with RemoteException parentId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public final unsubscribe(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "parentId is empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/d;->f:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/m;

    iget v1, p0, Landroid/support/v4/media/d;->g:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Landroid/support/v4/media/d;->i:Landroid/support/v4/media/IMediaBrowserServiceCompat;

    iget-object v1, p0, Landroid/support/v4/media/d;->j:Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;

    invoke-interface {v0, p1, v1}, Landroid/support/v4/media/IMediaBrowserServiceCompat;->removeSubscription(Ljava/lang/String;Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "MediaBrowserCompat"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "removeSubscription failed with RemoteException parentId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
