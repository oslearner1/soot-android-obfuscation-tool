.class final Landroid/support/v4/media/session/aa;
.super Landroid/support/v4/media/session/IMediaSession$Stub;


# instance fields
.field private synthetic a:Landroid/support/v4/media/session/x;


# direct methods
.method constructor <init>(Landroid/support/v4/media/session/x;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/media/session/aa;->a:Landroid/support/v4/media/session/x;

    invoke-direct {p0}, Landroid/support/v4/media/session/IMediaSession$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final adjustVolume(IILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/aa;->a:Landroid/support/v4/media/session/x;

    invoke-static {v0, p1, p2}, Landroid/support/v4/media/session/x;->a(Landroid/support/v4/media/session/x;II)V

    return-void
.end method

.method public final fastForward()V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/media/session/aa;->a:Landroid/support/v4/media/session/x;

    invoke-static {v0}, Landroid/support/v4/media/session/x;->d(Landroid/support/v4/media/session/x;)Landroid/support/v4/media/session/ab;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/ab;->post(I)V

    return-void
.end method

.method public final getExtras()Landroid/os/Bundle;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/media/session/aa;->a:Landroid/support/v4/media/session/x;

    invoke-static {v0}, Landroid/support/v4/media/session/x;->j(Landroid/support/v4/media/session/x;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/support/v4/media/session/aa;->a:Landroid/support/v4/media/session/x;

    invoke-static {v0}, Landroid/support/v4/media/session/x;->q(Landroid/support/v4/media/session/x;)Landroid/os/Bundle;

    move-result-object v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final getFlags()J
    .locals 4

    iget-object v0, p0, Landroid/support/v4/media/session/aa;->a:Landroid/support/v4/media/session/x;

    invoke-static {v0}, Landroid/support/v4/media/session/x;->j(Landroid/support/v4/media/session/x;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/support/v4/media/session/aa;->a:Landroid/support/v4/media/session/x;

    invoke-static {v0}, Landroid/support/v4/media/session/x;->e(Landroid/support/v4/media/session/x;)I

    move-result v0

    int-to-long v2, v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v2

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final getLaunchPendingIntent()Landroid/app/PendingIntent;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/media/session/aa;->a:Landroid/support/v4/media/session/x;

    invoke-static {v0}, Landroid/support/v4/media/session/x;->j(Landroid/support/v4/media/session/x;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/support/v4/media/session/aa;->a:Landroid/support/v4/media/session/x;

    invoke-static {v0}, Landroid/support/v4/media/session/x;->k(Landroid/support/v4/media/session/x;)Landroid/app/PendingIntent;

    move-result-object v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final getMetadata()Landroid/support/v4/media/MediaMetadataCompat;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/aa;->a:Landroid/support/v4/media/session/x;

    invoke-static {v0}, Landroid/support/v4/media/session/x;->m(Landroid/support/v4/media/session/x;)Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v0

    return-object v0
.end method

.method public final getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/aa;->a:Landroid/support/v4/media/session/x;

    invoke-static {v0}, Landroid/support/v4/media/session/x;->h(Landroid/support/v4/media/session/x;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getPlaybackState()Landroid/support/v4/media/session/PlaybackStateCompat;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/aa;->a:Landroid/support/v4/media/session/x;

    invoke-static {v0}, Landroid/support/v4/media/session/x;->n(Landroid/support/v4/media/session/x;)Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v0

    return-object v0
.end method

.method public final getQueue()Ljava/util/List;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/media/session/aa;->a:Landroid/support/v4/media/session/x;

    invoke-static {v0}, Landroid/support/v4/media/session/x;->j(Landroid/support/v4/media/session/x;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/support/v4/media/session/aa;->a:Landroid/support/v4/media/session/x;

    invoke-static {v0}, Landroid/support/v4/media/session/x;->o(Landroid/support/v4/media/session/x;)Ljava/util/List;

    move-result-object v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final getQueueTitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/aa;->a:Landroid/support/v4/media/session/x;

    invoke-static {v0}, Landroid/support/v4/media/session/x;->p(Landroid/support/v4/media/session/x;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final getRatingType()I
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/aa;->a:Landroid/support/v4/media/session/x;

    invoke-static {v0}, Landroid/support/v4/media/session/x;->r(Landroid/support/v4/media/session/x;)I

    move-result v0

    return v0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/aa;->a:Landroid/support/v4/media/session/x;

    invoke-static {v0}, Landroid/support/v4/media/session/x;->i(Landroid/support/v4/media/session/x;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getVolumeAttributes()Landroid/support/v4/media/session/ParcelableVolumeInfo;
    .locals 7

    const/4 v3, 0x2

    iget-object v0, p0, Landroid/support/v4/media/session/aa;->a:Landroid/support/v4/media/session/x;

    invoke-static {v0}, Landroid/support/v4/media/session/x;->j(Landroid/support/v4/media/session/x;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    :try_start_0
    iget-object v0, p0, Landroid/support/v4/media/session/aa;->a:Landroid/support/v4/media/session/x;

    invoke-static {v0}, Landroid/support/v4/media/session/x;->b(Landroid/support/v4/media/session/x;)I

    move-result v1

    iget-object v0, p0, Landroid/support/v4/media/session/aa;->a:Landroid/support/v4/media/session/x;

    invoke-static {v0}, Landroid/support/v4/media/session/x;->c(Landroid/support/v4/media/session/x;)I

    move-result v2

    iget-object v0, p0, Landroid/support/v4/media/session/aa;->a:Landroid/support/v4/media/session/x;

    invoke-static {v0}, Landroid/support/v4/media/session/x;->a(Landroid/support/v4/media/session/x;)Landroid/support/v4/media/c;

    move-result-object v0

    if-ne v1, v3, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/media/c;->getVolumeControl()I

    move-result v3

    invoke-virtual {v0}, Landroid/support/v4/media/c;->getMaxVolume()I

    move-result v4

    invoke-virtual {v0}, Landroid/support/v4/media/c;->getCurrentVolume()I

    move-result v5

    :goto_0
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Landroid/support/v4/media/session/ParcelableVolumeInfo;

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/media/session/ParcelableVolumeInfo;-><init>(IIIII)V

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/support/v4/media/session/aa;->a:Landroid/support/v4/media/session/x;

    invoke-static {v0}, Landroid/support/v4/media/session/x;->l(Landroid/support/v4/media/session/x;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v4

    iget-object v0, p0, Landroid/support/v4/media/session/aa;->a:Landroid/support/v4/media/session/x;

    invoke-static {v0}, Landroid/support/v4/media/session/x;->l(Landroid/support/v4/media/session/x;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method public final isTransportControlEnabled()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/aa;->a:Landroid/support/v4/media/session/x;

    invoke-static {v0}, Landroid/support/v4/media/session/x;->e(Landroid/support/v4/media/session/x;)I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final next()V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/media/session/aa;->a:Landroid/support/v4/media/session/x;

    invoke-static {v0}, Landroid/support/v4/media/session/x;->d(Landroid/support/v4/media/session/x;)Landroid/support/v4/media/session/ab;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/ab;->post(I)V

    return-void
.end method

.method public final pause()V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/media/session/aa;->a:Landroid/support/v4/media/session/x;

    invoke-static {v0}, Landroid/support/v4/media/session/x;->d(Landroid/support/v4/media/session/x;)Landroid/support/v4/media/session/ab;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/ab;->post(I)V

    return-void
.end method

.method public final play()V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/media/session/aa;->a:Landroid/support/v4/media/session/x;

    invoke-static {v0}, Landroid/support/v4/media/session/x;->d(Landroid/support/v4/media/session/x;)Landroid/support/v4/media/session/ab;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/ab;->post(I)V

    return-void
.end method

.method public final playFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/media/session/aa;->a:Landroid/support/v4/media/session/x;

    invoke-static {v0}, Landroid/support/v4/media/session/x;->d(Landroid/support/v4/media/session/x;)Landroid/support/v4/media/session/ab;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1, p2}, Landroid/support/v4/media/session/ab;->post(ILjava/lang/Object;Landroid/os/Bundle;)V

    return-void
.end method

.method public final playFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/media/session/aa;->a:Landroid/support/v4/media/session/x;

    invoke-static {v0}, Landroid/support/v4/media/session/x;->d(Landroid/support/v4/media/session/x;)Landroid/support/v4/media/session/ab;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1, p2}, Landroid/support/v4/media/session/ab;->post(ILjava/lang/Object;Landroid/os/Bundle;)V

    return-void
.end method

.method public final playFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/media/session/aa;->a:Landroid/support/v4/media/session/x;

    invoke-static {v0}, Landroid/support/v4/media/session/x;->d(Landroid/support/v4/media/session/x;)Landroid/support/v4/media/session/ab;

    move-result-object v0

    const/16 v1, 0x12

    invoke-virtual {v0, v1, p1, p2}, Landroid/support/v4/media/session/ab;->post(ILjava/lang/Object;Landroid/os/Bundle;)V

    return-void
.end method

.method public final previous()V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/media/session/aa;->a:Landroid/support/v4/media/session/x;

    invoke-static {v0}, Landroid/support/v4/media/session/x;->d(Landroid/support/v4/media/session/x;)Landroid/support/v4/media/session/ab;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/ab;->post(I)V

    return-void
.end method

.method public final rate(Landroid/support/v4/media/RatingCompat;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/media/session/aa;->a:Landroid/support/v4/media/session/x;

    invoke-static {v0}, Landroid/support/v4/media/session/x;->d(Landroid/support/v4/media/session/x;)Landroid/support/v4/media/session/ab;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/media/session/ab;->post(ILjava/lang/Object;)V

    return-void
.end method

.method public final registerCallbackListener(Landroid/support/v4/media/session/IMediaControllerCallback;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/aa;->a:Landroid/support/v4/media/session/x;

    invoke-static {v0}, Landroid/support/v4/media/session/x;->f(Landroid/support/v4/media/session/x;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {p1}, Landroid/support/v4/media/session/IMediaControllerCallback;->onSessionDestroyed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/session/aa;->a:Landroid/support/v4/media/session/x;

    invoke-static {v0}, Landroid/support/v4/media/session/x;->g(Landroid/support/v4/media/session/x;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final rewind()V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/media/session/aa;->a:Landroid/support/v4/media/session/x;

    invoke-static {v0}, Landroid/support/v4/media/session/x;->d(Landroid/support/v4/media/session/x;)Landroid/support/v4/media/session/ab;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/ab;->post(I)V

    return-void
.end method

.method public final seekTo(J)V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/media/session/aa;->a:Landroid/support/v4/media/session/x;

    invoke-static {v0}, Landroid/support/v4/media/session/x;->d(Landroid/support/v4/media/session/x;)Landroid/support/v4/media/session/ab;

    move-result-object v0

    const/16 v1, 0xb

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/media/session/ab;->post(ILjava/lang/Object;)V

    return-void
.end method

.method public final sendCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;)V
    .locals 4

    iget-object v0, p0, Landroid/support/v4/media/session/aa;->a:Landroid/support/v4/media/session/x;

    invoke-static {v0}, Landroid/support/v4/media/session/x;->d(Landroid/support/v4/media/session/x;)Landroid/support/v4/media/session/ab;

    move-result-object v0

    const/16 v1, 0xf

    new-instance v2, Landroid/support/v4/media/session/z;

    invoke-static {p3}, Landroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;->a(Landroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;)Landroid/os/ResultReceiver;

    move-result-object v3

    invoke-direct {v2, p1, p2, v3}, Landroid/support/v4/media/session/z;-><init>(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/media/session/ab;->post(ILjava/lang/Object;)V

    return-void
.end method

.method public final sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/media/session/aa;->a:Landroid/support/v4/media/session/x;

    invoke-static {v0}, Landroid/support/v4/media/session/x;->d(Landroid/support/v4/media/session/x;)Landroid/support/v4/media/session/ab;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1, p1, p2}, Landroid/support/v4/media/session/ab;->post(ILjava/lang/Object;Landroid/os/Bundle;)V

    return-void
.end method

.method public final sendMediaButton(Landroid/view/KeyEvent;)Z
    .locals 3

    iget-object v0, p0, Landroid/support/v4/media/session/aa;->a:Landroid/support/v4/media/session/x;

    invoke-static {v0}, Landroid/support/v4/media/session/x;->e(Landroid/support/v4/media/session/x;)I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/support/v4/media/session/aa;->a:Landroid/support/v4/media/session/x;

    invoke-static {v1}, Landroid/support/v4/media/session/x;->d(Landroid/support/v4/media/session/x;)Landroid/support/v4/media/session/ab;

    move-result-object v1

    const/16 v2, 0xe

    invoke-virtual {v1, v2, p1}, Landroid/support/v4/media/session/ab;->post(ILjava/lang/Object;)V

    :cond_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setVolumeTo(IILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/aa;->a:Landroid/support/v4/media/session/x;

    invoke-static {v0, p1, p2}, Landroid/support/v4/media/session/x;->b(Landroid/support/v4/media/session/x;II)V

    return-void
.end method

.method public final skipToQueueItem(J)V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/media/session/aa;->a:Landroid/support/v4/media/session/x;

    invoke-static {v0}, Landroid/support/v4/media/session/x;->d(Landroid/support/v4/media/session/x;)Landroid/support/v4/media/session/ab;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/media/session/ab;->post(ILjava/lang/Object;)V

    return-void
.end method

.method public final stop()V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/media/session/aa;->a:Landroid/support/v4/media/session/x;

    invoke-static {v0}, Landroid/support/v4/media/session/x;->d(Landroid/support/v4/media/session/x;)Landroid/support/v4/media/session/ab;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/ab;->post(I)V

    return-void
.end method

.method public final unregisterCallbackListener(Landroid/support/v4/media/session/IMediaControllerCallback;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/aa;->a:Landroid/support/v4/media/session/x;

    invoke-static {v0}, Landroid/support/v4/media/session/x;->g(Landroid/support/v4/media/session/x;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    return-void
.end method
