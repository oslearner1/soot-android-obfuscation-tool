.class Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$3;
.super Landroid/support/v4/os/ResultReceiver;


# instance fields
.field private synthetic b:Landroid/support/v4/media/c;

.field private synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/support/v4/media/d;Landroid/os/Handler;Landroid/support/v4/media/c;Ljava/lang/String;)V
    .locals 0

    iput-object p3, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$3;->b:Landroid/support/v4/media/c;

    iput-object p4, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$3;->c:Ljava/lang/String;

    invoke-direct {p0, p2}, Landroid/support/v4/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected final a(ILandroid/os/Bundle;)V
    .locals 2

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    const-string v0, "media_item"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$3;->b:Landroid/support/v4/media/c;

    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$3;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/media/c;->onError(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    const-string v0, "media_item"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    instance-of v1, v0, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    if-nez v1, :cond_2

    iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$3;->b:Landroid/support/v4/media/c;

    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$3;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/media/c;->onError(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$3;->b:Landroid/support/v4/media/c;

    check-cast v0, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    invoke-virtual {v1, v0}, Landroid/support/v4/media/c;->onItemLoaded(Landroid/support/v4/media/MediaBrowserCompat$MediaItem;)V

    goto :goto_0
.end method
