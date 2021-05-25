.class final Landroid/support/v4/media/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Landroid/support/v4/media/session/MediaSessionCompat$Token;

.field private synthetic d:Landroid/os/Bundle;

.field private synthetic e:Landroid/support/v4/media/d;


# direct methods
.method constructor <init>(Landroid/support/v4/media/d;Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;Ljava/lang/String;Landroid/support/v4/media/session/MediaSessionCompat$Token;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/media/h;->e:Landroid/support/v4/media/d;

    iput-object p2, p0, Landroid/support/v4/media/h;->a:Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;

    iput-object p3, p0, Landroid/support/v4/media/h;->b:Ljava/lang/String;

    iput-object p4, p0, Landroid/support/v4/media/h;->c:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    iput-object p5, p0, Landroid/support/v4/media/h;->d:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Landroid/support/v4/media/h;->e:Landroid/support/v4/media/d;

    iget-object v1, p0, Landroid/support/v4/media/h;->a:Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;

    const-string v2, "onConnect"

    invoke-static {v0, v1, v2}, Landroid/support/v4/media/d;->a(Landroid/support/v4/media/d;Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v4/media/h;->e:Landroid/support/v4/media/d;

    invoke-static {v0}, Landroid/support/v4/media/d;->d(Landroid/support/v4/media/d;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const-string v0, "MediaBrowserCompat"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onConnect from service while mState="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/support/v4/media/h;->e:Landroid/support/v4/media/d;

    invoke-static {v2}, Landroid/support/v4/media/d;->d(Landroid/support/v4/media/d;)I

    move-result v2

    invoke-static {v2}, Landroid/support/v4/media/d;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "... ignoring"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/support/v4/media/h;->e:Landroid/support/v4/media/d;

    iget-object v1, p0, Landroid/support/v4/media/h;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/support/v4/media/d;->a(Landroid/support/v4/media/d;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Landroid/support/v4/media/h;->e:Landroid/support/v4/media/d;

    iget-object v1, p0, Landroid/support/v4/media/h;->c:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    invoke-static {v0, v1}, Landroid/support/v4/media/d;->a(Landroid/support/v4/media/d;Landroid/support/v4/media/session/MediaSessionCompat$Token;)Landroid/support/v4/media/session/MediaSessionCompat$Token;

    iget-object v0, p0, Landroid/support/v4/media/h;->e:Landroid/support/v4/media/d;

    iget-object v1, p0, Landroid/support/v4/media/h;->d:Landroid/os/Bundle;

    invoke-static {v0, v1}, Landroid/support/v4/media/d;->a(Landroid/support/v4/media/d;Landroid/os/Bundle;)Landroid/os/Bundle;

    iget-object v0, p0, Landroid/support/v4/media/h;->e:Landroid/support/v4/media/d;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/support/v4/media/d;->a(Landroid/support/v4/media/d;I)I

    iget-object v0, p0, Landroid/support/v4/media/h;->e:Landroid/support/v4/media/d;

    invoke-static {v0}, Landroid/support/v4/media/d;->c(Landroid/support/v4/media/d;)Landroid/support/v4/app/s;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/s;->onConnected()V

    iget-object v0, p0, Landroid/support/v4/media/h;->e:Landroid/support/v4/media/d;

    invoke-static {v0}, Landroid/support/v4/media/d;->e(Landroid/support/v4/media/d;)Landroid/support/v4/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_0
    iget-object v2, p0, Landroid/support/v4/media/h;->e:Landroid/support/v4/media/d;

    invoke-static {v2}, Landroid/support/v4/media/d;->g(Landroid/support/v4/media/d;)Landroid/support/v4/media/IMediaBrowserServiceCompat;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v4/media/h;->e:Landroid/support/v4/media/d;

    invoke-static {v3}, Landroid/support/v4/media/d;->f(Landroid/support/v4/media/d;)Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Landroid/support/v4/media/IMediaBrowserServiceCompat;->addSubscription(Ljava/lang/String;Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v2, "MediaBrowserCompat"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "addSubscription failed with RemoteException parentId="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
