.class final Landroid/support/v4/media/l;
.super Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks$Stub;


# instance fields
.field private a:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Landroid/support/v4/media/d;)V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks$Stub;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/v4/media/l;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final onConnect(Ljava/lang/String;Landroid/support/v4/media/session/MediaSessionCompat$Token;Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/l;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/d;

    if-eqz v0, :cond_0

    invoke-static {v0, p0, p1, p2, p3}, Landroid/support/v4/media/d;->a(Landroid/support/v4/media/d;Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;Ljava/lang/String;Landroid/support/v4/media/session/MediaSessionCompat$Token;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public final onConnectFailed()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/l;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/d;

    if-eqz v0, :cond_0

    invoke-static {v0, p0}, Landroid/support/v4/media/d;->b(Landroid/support/v4/media/d;Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;)V

    :cond_0
    return-void
.end method

.method public final onLoadChildren(Ljava/lang/String;Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/l;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/d;

    if-eqz v0, :cond_0

    invoke-static {v0, p0, p1, p2}, Landroid/support/v4/media/d;->a(Landroid/support/v4/media/d;Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;Ljava/lang/String;Ljava/util/List;)V

    :cond_0
    return-void
.end method
