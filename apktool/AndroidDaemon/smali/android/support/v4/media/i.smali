.class final Landroid/support/v4/media/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;

.field private synthetic b:Landroid/support/v4/media/d;


# direct methods
.method constructor <init>(Landroid/support/v4/media/d;Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/media/i;->b:Landroid/support/v4/media/d;

    iput-object p2, p0, Landroid/support/v4/media/i;->a:Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    const-string v0, "MediaBrowserCompat"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onConnectFailed for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/support/v4/media/i;->b:Landroid/support/v4/media/d;

    invoke-static {v2}, Landroid/support/v4/media/d;->h(Landroid/support/v4/media/d;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/support/v4/media/i;->b:Landroid/support/v4/media/d;

    iget-object v1, p0, Landroid/support/v4/media/i;->a:Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;

    const-string v2, "onConnectFailed"

    invoke-static {v0, v1, v2}, Landroid/support/v4/media/d;->a(Landroid/support/v4/media/d;Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/i;->b:Landroid/support/v4/media/d;

    invoke-static {v0}, Landroid/support/v4/media/d;->d(Landroid/support/v4/media/d;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const-string v0, "MediaBrowserCompat"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onConnect from service while mState="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/support/v4/media/i;->b:Landroid/support/v4/media/d;

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

    :cond_1
    iget-object v0, p0, Landroid/support/v4/media/i;->b:Landroid/support/v4/media/d;

    invoke-static {v0}, Landroid/support/v4/media/d;->b(Landroid/support/v4/media/d;)V

    iget-object v0, p0, Landroid/support/v4/media/i;->b:Landroid/support/v4/media/d;

    invoke-static {v0}, Landroid/support/v4/media/d;->c(Landroid/support/v4/media/d;)Landroid/support/v4/app/s;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/s;->onConnectionFailed()V

    goto :goto_0
.end method
