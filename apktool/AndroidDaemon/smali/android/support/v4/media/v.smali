.class final Landroid/support/v4/media/v;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Landroid/os/Bundle;

.field private synthetic d:I

.field private synthetic e:Landroid/support/v4/media/u;


# direct methods
.method constructor <init>(Landroid/support/v4/media/u;Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;Ljava/lang/String;Landroid/os/Bundle;I)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/media/v;->e:Landroid/support/v4/media/u;

    iput-object p2, p0, Landroid/support/v4/media/v;->a:Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;

    iput-object p3, p0, Landroid/support/v4/media/v;->b:Ljava/lang/String;

    iput-object p4, p0, Landroid/support/v4/media/v;->c:Landroid/os/Bundle;

    iput p5, p0, Landroid/support/v4/media/v;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Landroid/support/v4/media/v;->a:Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;

    invoke-interface {v0}, Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/media/v;->e:Landroid/support/v4/media/u;

    iget-object v1, v1, Landroid/support/v4/media/u;->a:Landroid/support/v4/media/MediaBrowserServiceCompat;

    invoke-static {v1}, Landroid/support/v4/media/MediaBrowserServiceCompat;->a(Landroid/support/v4/media/MediaBrowserServiceCompat;)Landroid/support/v4/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/support/v4/media/s;

    iget-object v2, p0, Landroid/support/v4/media/v;->e:Landroid/support/v4/media/u;

    iget-object v2, v2, Landroid/support/v4/media/u;->a:Landroid/support/v4/media/MediaBrowserServiceCompat;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/support/v4/media/s;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat;B)V

    iget-object v2, p0, Landroid/support/v4/media/v;->b:Ljava/lang/String;

    iput-object v2, v1, Landroid/support/v4/media/s;->a:Ljava/lang/String;

    iget-object v2, p0, Landroid/support/v4/media/v;->c:Landroid/os/Bundle;

    iget-object v2, p0, Landroid/support/v4/media/v;->a:Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;

    iput-object v2, v1, Landroid/support/v4/media/s;->b:Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;

    iget-object v2, p0, Landroid/support/v4/media/v;->e:Landroid/support/v4/media/u;

    iget-object v2, v2, Landroid/support/v4/media/u;->a:Landroid/support/v4/media/MediaBrowserServiceCompat;

    iget-object v3, p0, Landroid/support/v4/media/v;->b:Ljava/lang/String;

    iget v4, p0, Landroid/support/v4/media/v;->d:I

    iget-object v5, p0, Landroid/support/v4/media/v;->c:Landroid/os/Bundle;

    invoke-virtual {v2, v3, v4, v5}, Landroid/support/v4/media/MediaBrowserServiceCompat;->onGetRoot$16f11348(Ljava/lang/String;ILandroid/os/Bundle;)Lcom/vivo/vcalendar/component/VComponentBuilder;

    move-result-object v2

    iput-object v2, v1, Landroid/support/v4/media/s;->c:Lcom/vivo/vcalendar/component/VComponentBuilder;

    iget-object v2, v1, Landroid/support/v4/media/s;->c:Lcom/vivo/vcalendar/component/VComponentBuilder;

    if-nez v2, :cond_1

    const-string v0, "MediaBrowserServiceCompat"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No root for client "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/support/v4/media/v;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Landroid/support/v4/media/v;->a:Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;

    invoke-interface {v0}, Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;->onConnectFailed()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "MediaBrowserServiceCompat"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Calling onConnectFailed() failed. Ignoring. pkg="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/support/v4/media/v;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v2, p0, Landroid/support/v4/media/v;->e:Landroid/support/v4/media/u;

    iget-object v2, v2, Landroid/support/v4/media/u;->a:Landroid/support/v4/media/MediaBrowserServiceCompat;

    invoke-static {v2}, Landroid/support/v4/media/MediaBrowserServiceCompat;->a(Landroid/support/v4/media/MediaBrowserServiceCompat;)Landroid/support/v4/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Landroid/support/v4/media/v;->e:Landroid/support/v4/media/u;

    iget-object v2, v2, Landroid/support/v4/media/u;->a:Landroid/support/v4/media/MediaBrowserServiceCompat;

    iget-object v2, v2, Landroid/support/v4/media/MediaBrowserServiceCompat;->a:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/support/v4/media/v;->a:Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;

    iget-object v3, v1, Landroid/support/v4/media/s;->c:Lcom/vivo/vcalendar/component/VComponentBuilder;

    invoke-virtual {v3}, Lcom/vivo/vcalendar/component/VComponentBuilder;->getRootId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/support/v4/media/v;->e:Landroid/support/v4/media/u;

    iget-object v4, v4, Landroid/support/v4/media/u;->a:Landroid/support/v4/media/MediaBrowserServiceCompat;

    iget-object v4, v4, Landroid/support/v4/media/MediaBrowserServiceCompat;->a:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    iget-object v1, v1, Landroid/support/v4/media/s;->c:Lcom/vivo/vcalendar/component/VComponentBuilder;

    invoke-virtual {v1}, Lcom/vivo/vcalendar/component/VComponentBuilder;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-interface {v2, v3, v4, v1}, Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;->onConnect(Ljava/lang/String;Landroid/support/v4/media/session/MediaSessionCompat$Token;Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v1, "MediaBrowserServiceCompat"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Calling onConnect() failed. Dropping client. pkg="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/support/v4/media/v;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/support/v4/media/v;->e:Landroid/support/v4/media/u;

    iget-object v1, v1, Landroid/support/v4/media/u;->a:Landroid/support/v4/media/MediaBrowserServiceCompat;

    invoke-static {v1}, Landroid/support/v4/media/MediaBrowserServiceCompat;->a(Landroid/support/v4/media/MediaBrowserServiceCompat;)Landroid/support/v4/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
