.class final Landroid/support/v4/media/session/w;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/media/session/v;


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Landroid/support/v4/media/session/MediaSessionCompat$Token;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, p2}, Landroid/support/v4/media/session/c;->createSession(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/session/w;->a:Ljava/lang/Object;

    new-instance v0, Landroid/support/v4/media/session/MediaSessionCompat$Token;

    iget-object v1, p0, Landroid/support/v4/media/session/w;->a:Ljava/lang/Object;

    invoke-static {v1}, Landroid/support/v4/media/session/c;->getSessionToken(Ljava/lang/Object;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat$Token;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/v4/media/session/w;->b:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/support/v4/media/session/c;->verifySession(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/session/w;->a:Ljava/lang/Object;

    new-instance v0, Landroid/support/v4/media/session/MediaSessionCompat$Token;

    iget-object v1, p0, Landroid/support/v4/media/session/w;->a:Ljava/lang/Object;

    invoke-static {v1}, Landroid/support/v4/media/session/c;->getSessionToken(Ljava/lang/Object;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat$Token;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/v4/media/session/w;->b:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    return-void
.end method


# virtual methods
.method public final getMediaSession()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/w;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final getRemoteControlClient()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/w;->b:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    return-object v0
.end method

.method public final isActive()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/w;->a:Ljava/lang/Object;

    invoke-static {v0}, Landroid/support/v4/media/session/c;->isActive(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final release()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/w;->a:Ljava/lang/Object;

    invoke-static {v0}, Landroid/support/v4/media/session/c;->release(Ljava/lang/Object;)V

    return-void
.end method

.method public final sendSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/w;->a:Ljava/lang/Object;

    invoke-static {v0, p1, p2}, Landroid/support/v4/media/session/c;->sendSessionEvent(Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final setActive(Z)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/w;->a:Ljava/lang/Object;

    invoke-static {v0, p1}, Landroid/support/v4/media/session/c;->setActive(Ljava/lang/Object;Z)V

    return-void
.end method

.method public final setCallback(Landroid/support/v4/media/session/s;Landroid/os/Handler;)V
    .locals 2

    iget-object v1, p0, Landroid/support/v4/media/session/w;->a:Ljava/lang/Object;

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v1, v0, p2}, Landroid/support/v4/media/session/c;->setCallback(Ljava/lang/Object;Ljava/lang/Object;Landroid/os/Handler;)V

    return-void

    :cond_0
    iget-object v0, p1, Landroid/support/v4/media/session/s;->a:Ljava/lang/Object;

    goto :goto_0
.end method

.method public final setExtras(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/w;->a:Ljava/lang/Object;

    invoke-static {v0, p1}, Landroid/support/v4/media/session/c;->setExtras(Ljava/lang/Object;Landroid/os/Bundle;)V

    return-void
.end method

.method public final setFlags(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/w;->a:Ljava/lang/Object;

    invoke-static {v0, p1}, Landroid/support/v4/media/session/c;->setFlags(Ljava/lang/Object;I)V

    return-void
.end method

.method public final setMediaButtonReceiver(Landroid/app/PendingIntent;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/w;->a:Ljava/lang/Object;

    invoke-static {v0, p1}, Landroid/support/v4/media/session/c;->setMediaButtonReceiver(Ljava/lang/Object;Landroid/app/PendingIntent;)V

    return-void
.end method

.method public final setMetadata(Landroid/support/v4/media/MediaMetadataCompat;)V
    .locals 2

    iget-object v1, p0, Landroid/support/v4/media/session/w;->a:Ljava/lang/Object;

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v1, v0}, Landroid/support/v4/media/session/c;->setMetadata(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/media/MediaMetadataCompat;->getMediaMetadata()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final setPlaybackState(Landroid/support/v4/media/session/PlaybackStateCompat;)V
    .locals 2

    iget-object v1, p0, Landroid/support/v4/media/session/w;->a:Ljava/lang/Object;

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v1, v0}, Landroid/support/v4/media/session/c;->setPlaybackState(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getPlaybackState()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final setPlaybackToLocal(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/w;->a:Ljava/lang/Object;

    invoke-static {v0, p1}, Landroid/support/v4/media/session/c;->setPlaybackToLocal(Ljava/lang/Object;I)V

    return-void
.end method

.method public final setPlaybackToRemote$3c5a58fd(Landroid/support/v4/media/c;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/media/session/w;->a:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/support/v4/media/c;->getVolumeProvider()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/media/session/c;->setPlaybackToRemote(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final setQueue(Ljava/util/List;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->getQueueItem()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move-object v0, v1

    :cond_1
    iget-object v1, p0, Landroid/support/v4/media/session/w;->a:Ljava/lang/Object;

    invoke-static {v1, v0}, Landroid/support/v4/media/session/c;->setQueue(Ljava/lang/Object;Ljava/util/List;)V

    return-void
.end method

.method public final setQueueTitle(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/w;->a:Ljava/lang/Object;

    invoke-static {v0, p1}, Landroid/support/v4/media/session/c;->setQueueTitle(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setRatingType(I)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v4/media/session/w;->a:Ljava/lang/Object;

    invoke-static {v0, p1}, Landroid/support/v4/media/session/c;->setRatingType(Ljava/lang/Object;I)V

    :cond_0
    return-void
.end method

.method public final setSessionActivity(Landroid/app/PendingIntent;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/w;->a:Ljava/lang/Object;

    invoke-static {v0, p1}, Landroid/support/v4/media/session/c;->setSessionActivity(Ljava/lang/Object;Landroid/app/PendingIntent;)V

    return-void
.end method
