.class final Landroid/support/v4/media/session/f;
.super Landroid/support/v4/media/session/IMediaControllerCallback$Stub;


# instance fields
.field private synthetic a:Landroid/support/v4/media/session/d;


# direct methods
.method private constructor <init>(Landroid/support/v4/media/session/d;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/media/session/f;->a:Landroid/support/v4/media/session/d;

    invoke-direct {p0}, Landroid/support/v4/media/session/IMediaControllerCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/media/session/d;B)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v4/media/session/f;-><init>(Landroid/support/v4/media/session/d;)V

    return-void
.end method


# virtual methods
.method public final onEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/media/session/f;->a:Landroid/support/v4/media/session/d;

    invoke-static {v0}, Landroid/support/v4/media/session/d;->a(Landroid/support/v4/media/session/d;)Landroid/support/v4/media/session/e;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Landroid/support/v4/media/session/e;->post(ILjava/lang/Object;Landroid/os/Bundle;)V

    return-void
.end method

.method public final onExtrasChanged(Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/media/session/f;->a:Landroid/support/v4/media/session/d;

    invoke-static {v0}, Landroid/support/v4/media/session/d;->a(Landroid/support/v4/media/session/d;)Landroid/support/v4/media/session/e;

    move-result-object v0

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/support/v4/media/session/e;->post(ILjava/lang/Object;Landroid/os/Bundle;)V

    return-void
.end method

.method public final onMetadataChanged(Landroid/support/v4/media/MediaMetadataCompat;)V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/media/session/f;->a:Landroid/support/v4/media/session/d;

    invoke-static {v0}, Landroid/support/v4/media/session/d;->a(Landroid/support/v4/media/session/d;)Landroid/support/v4/media/session/e;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/support/v4/media/session/e;->post(ILjava/lang/Object;Landroid/os/Bundle;)V

    return-void
.end method

.method public final onPlaybackStateChanged(Landroid/support/v4/media/session/PlaybackStateCompat;)V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/media/session/f;->a:Landroid/support/v4/media/session/d;

    invoke-static {v0}, Landroid/support/v4/media/session/d;->a(Landroid/support/v4/media/session/d;)Landroid/support/v4/media/session/e;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/support/v4/media/session/e;->post(ILjava/lang/Object;Landroid/os/Bundle;)V

    return-void
.end method

.method public final onQueueChanged(Ljava/util/List;)V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/media/session/f;->a:Landroid/support/v4/media/session/d;

    invoke-static {v0}, Landroid/support/v4/media/session/d;->a(Landroid/support/v4/media/session/d;)Landroid/support/v4/media/session/e;

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/support/v4/media/session/e;->post(ILjava/lang/Object;Landroid/os/Bundle;)V

    return-void
.end method

.method public final onQueueTitleChanged(Ljava/lang/CharSequence;)V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/media/session/f;->a:Landroid/support/v4/media/session/d;

    invoke-static {v0}, Landroid/support/v4/media/session/d;->a(Landroid/support/v4/media/session/d;)Landroid/support/v4/media/session/e;

    move-result-object v0

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/support/v4/media/session/e;->post(ILjava/lang/Object;Landroid/os/Bundle;)V

    return-void
.end method

.method public final onSessionDestroyed()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/v4/media/session/f;->a:Landroid/support/v4/media/session/d;

    invoke-static {v0}, Landroid/support/v4/media/session/d;->a(Landroid/support/v4/media/session/d;)Landroid/support/v4/media/session/e;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1, v2, v2}, Landroid/support/v4/media/session/e;->post(ILjava/lang/Object;Landroid/os/Bundle;)V

    return-void
.end method

.method public final onVolumeInfoChanged(Landroid/support/v4/media/session/ParcelableVolumeInfo;)V
    .locals 7

    const/4 v6, 0x0

    if-eqz p1, :cond_0

    new-instance v0, Landroid/support/v4/media/session/k;

    iget v1, p1, Landroid/support/v4/media/session/ParcelableVolumeInfo;->a:I

    iget v2, p1, Landroid/support/v4/media/session/ParcelableVolumeInfo;->b:I

    iget v3, p1, Landroid/support/v4/media/session/ParcelableVolumeInfo;->c:I

    iget v4, p1, Landroid/support/v4/media/session/ParcelableVolumeInfo;->d:I

    iget v5, p1, Landroid/support/v4/media/session/ParcelableVolumeInfo;->e:I

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/media/session/k;-><init>(IIIII)V

    :goto_0
    iget-object v1, p0, Landroid/support/v4/media/session/f;->a:Landroid/support/v4/media/session/d;

    invoke-static {v1}, Landroid/support/v4/media/session/d;->a(Landroid/support/v4/media/session/d;)Landroid/support/v4/media/session/e;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0, v6}, Landroid/support/v4/media/session/e;->post(ILjava/lang/Object;Landroid/os/Bundle;)V

    return-void

    :cond_0
    move-object v0, v6

    goto :goto_0
.end method
