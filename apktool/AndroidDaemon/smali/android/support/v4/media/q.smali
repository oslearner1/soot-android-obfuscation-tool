.class final Landroid/support/v4/media/q;
.super Landroid/support/v4/media/t;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Landroid/support/v4/media/s;

.field private synthetic c:Landroid/support/v4/media/MediaBrowserServiceCompat;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaBrowserServiceCompat;Ljava/lang/Object;Ljava/lang/String;Landroid/support/v4/media/s;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/media/q;->c:Landroid/support/v4/media/MediaBrowserServiceCompat;

    iput-object p3, p0, Landroid/support/v4/media/q;->a:Ljava/lang/String;

    iput-object p4, p0, Landroid/support/v4/media/q;->b:Landroid/support/v4/media/s;

    invoke-direct {p0, p1, p2}, Landroid/support/v4/media/t;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method final synthetic a(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onLoadChildren sent null list for id "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/support/v4/media/q;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/q;->c:Landroid/support/v4/media/MediaBrowserServiceCompat;

    invoke-static {v0}, Landroid/support/v4/media/MediaBrowserServiceCompat;->a(Landroid/support/v4/media/MediaBrowserServiceCompat;)Landroid/support/v4/util/ArrayMap;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/media/q;->b:Landroid/support/v4/media/s;

    iget-object v1, v1, Landroid/support/v4/media/s;->b:Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;

    invoke-interface {v1}, Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/media/q;->b:Landroid/support/v4/media/s;

    if-ne v0, v1, :cond_1

    :try_start_0
    iget-object v0, p0, Landroid/support/v4/media/q;->b:Landroid/support/v4/media/s;

    iget-object v0, v0, Landroid/support/v4/media/s;->b:Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;

    iget-object v1, p0, Landroid/support/v4/media/q;->a:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;->onLoadChildren(Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "MediaBrowserServiceCompat"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Calling onLoadChildren() failed for id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/support/v4/media/q;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " package="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/media/q;->b:Landroid/support/v4/media/s;

    iget-object v2, v2, Landroid/support/v4/media/s;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
