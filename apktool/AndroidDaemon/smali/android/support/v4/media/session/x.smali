.class final Landroid/support/v4/media/session/x;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/media/session/v;


# instance fields
.field private A:I

.field private B:Landroid/support/v4/media/c;

.field private C:Landroid/support/v4/media/at;

.field private final a:Landroid/content/Context;

.field private final b:Landroid/content/ComponentName;

.field private final c:Landroid/app/PendingIntent;

.field private final d:Ljava/lang/Object;

.field private final e:Landroid/support/v4/media/session/aa;

.field private final f:Landroid/support/v4/media/session/MediaSessionCompat$Token;

.field private final g:Landroid/support/v4/media/session/ab;

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;

.field private final j:Landroid/media/AudioManager;

.field private final k:Ljava/lang/Object;

.field private final l:Landroid/os/RemoteCallbackList;

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Landroid/support/v4/media/session/s;

.field private r:I

.field private s:Landroid/support/v4/media/MediaMetadataCompat;

.field private t:Landroid/support/v4/media/session/PlaybackStateCompat;

.field private u:Landroid/app/PendingIntent;

.field private v:Ljava/util/List;

.field private w:Ljava/lang/CharSequence;

.field private x:I

.field private y:Landroid/os/Bundle;

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;Landroid/app/PendingIntent;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/support/v4/media/session/x;->k:Ljava/lang/Object;

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/media/session/x;->l:Landroid/os/RemoteCallbackList;

    iput-boolean v2, p0, Landroid/support/v4/media/session/x;->m:Z

    iput-boolean v2, p0, Landroid/support/v4/media/session/x;->n:Z

    iput-boolean v2, p0, Landroid/support/v4/media/session/x;->o:Z

    iput-boolean v2, p0, Landroid/support/v4/media/session/x;->p:Z

    new-instance v0, Landroid/support/v4/media/session/y;

    invoke-direct {v0, p0}, Landroid/support/v4/media/session/y;-><init>(Landroid/support/v4/media/session/x;)V

    iput-object v0, p0, Landroid/support/v4/media/session/x;->C:Landroid/support/v4/media/at;

    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MediaButtonReceiver component may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Landroid/support/v4/media/session/x;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/session/x;->h:Ljava/lang/String;

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Landroid/support/v4/media/session/x;->j:Landroid/media/AudioManager;

    iput-object p2, p0, Landroid/support/v4/media/session/x;->i:Ljava/lang/String;

    iput-object p3, p0, Landroid/support/v4/media/session/x;->b:Landroid/content/ComponentName;

    iput-object p4, p0, Landroid/support/v4/media/session/x;->c:Landroid/app/PendingIntent;

    new-instance v0, Landroid/support/v4/media/session/aa;

    invoke-direct {v0, p0}, Landroid/support/v4/media/session/aa;-><init>(Landroid/support/v4/media/session/x;)V

    iput-object v0, p0, Landroid/support/v4/media/session/x;->e:Landroid/support/v4/media/session/aa;

    new-instance v0, Landroid/support/v4/media/session/MediaSessionCompat$Token;

    iget-object v1, p0, Landroid/support/v4/media/session/x;->e:Landroid/support/v4/media/session/aa;

    invoke-direct {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat$Token;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/v4/media/session/x;->f:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    new-instance v0, Landroid/support/v4/media/session/ab;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/support/v4/media/session/ab;-><init>(Landroid/support/v4/media/session/x;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/support/v4/media/session/x;->g:Landroid/support/v4/media/session/ab;

    iput v2, p0, Landroid/support/v4/media/session/x;->x:I

    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v4/media/session/x;->z:I

    const/4 v0, 0x3

    iput v0, p0, Landroid/support/v4/media/session/x;->A:I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    invoke-static {p4}, Landroid/support/v4/media/session/c;->createRemoteControlClient(Landroid/app/PendingIntent;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/session/x;->d:Ljava/lang/Object;

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/media/session/x;->d:Ljava/lang/Object;

    goto :goto_0
.end method

.method static synthetic a(Landroid/support/v4/media/session/x;)Landroid/support/v4/media/c;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/x;->B:Landroid/support/v4/media/c;

    return-object v0
.end method

.method private a(Landroid/support/v4/media/session/ParcelableVolumeInfo;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/media/session/x;->l:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    iget-object v0, p0, Landroid/support/v4/media/session/x;->l:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/IMediaControllerCallback;

    :try_start_0
    invoke-interface {v0, p1}, Landroid/support/v4/media/session/IMediaControllerCallback;->onVolumeInfoChanged(Landroid/support/v4/media/session/ParcelableVolumeInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/session/x;->l:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method static synthetic a(Landroid/support/v4/media/session/x;II)V
    .locals 2

    iget v0, p0, Landroid/support/v4/media/session/x;->z:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroid/support/v4/media/session/x;->B:Landroid/support/v4/media/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/media/session/x;->B:Landroid/support/v4/media/c;

    invoke-virtual {v0, p1}, Landroid/support/v4/media/c;->onAdjustVolume(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v4/media/session/x;->j:Landroid/media/AudioManager;

    iget v1, p0, Landroid/support/v4/media/session/x;->A:I

    invoke-virtual {v0, v1, p1, p2}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    goto :goto_0
.end method

.method static synthetic a(Landroid/support/v4/media/session/x;Landroid/support/v4/media/session/ParcelableVolumeInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v4/media/session/x;->a(Landroid/support/v4/media/session/ParcelableVolumeInfo;)V

    return-void
.end method

.method private a()Z
    .locals 5

    const/16 v4, 0x12

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Landroid/support/v4/media/session/x;->n:Z

    if-eqz v2, :cond_5

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x8

    if-lt v2, v3, :cond_0

    iget-boolean v2, p0, Landroid/support/v4/media/session/x;->p:Z

    if-nez v2, :cond_2

    iget v2, p0, Landroid/support/v4/media/session/x;->r:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v4, :cond_1

    iget-object v2, p0, Landroid/support/v4/media/session/x;->a:Landroid/content/Context;

    iget-object v3, p0, Landroid/support/v4/media/session/x;->c:Landroid/app/PendingIntent;

    iget-object v4, p0, Landroid/support/v4/media/session/x;->b:Landroid/content/ComponentName;

    invoke-static {v2, v3, v4}, Landroid/support/v4/media/session/ag;->registerMediaButtonEventReceiver(Landroid/content/Context;Landroid/app/PendingIntent;Landroid/content/ComponentName;)V

    :goto_0
    iput-boolean v0, p0, Landroid/support/v4/media/session/x;->p:Z

    :cond_0
    :goto_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v2, v3, :cond_7

    iget-boolean v2, p0, Landroid/support/v4/media/session/x;->o:Z

    if-nez v2, :cond_4

    iget v2, p0, Landroid/support/v4/media/session/x;->r:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_4

    iget-object v1, p0, Landroid/support/v4/media/session/x;->a:Landroid/content/Context;

    iget-object v2, p0, Landroid/support/v4/media/session/x;->d:Ljava/lang/Object;

    invoke-static {v1, v2}, Landroid/support/v4/media/session/c;->registerRemoteControlClient(Landroid/content/Context;Ljava/lang/Object;)V

    iput-boolean v0, p0, Landroid/support/v4/media/session/x;->o:Z

    :goto_2
    return v0

    :cond_1
    iget-object v2, p0, Landroid/support/v4/media/session/x;->a:Landroid/content/Context;

    iget-object v3, p0, Landroid/support/v4/media/session/x;->b:Landroid/content/ComponentName;

    invoke-static {v2, v3}, Landroid/support/v4/media/session/c;->registerMediaButtonEventReceiver(Landroid/content/Context;Landroid/content/ComponentName;)V

    goto :goto_0

    :cond_2
    iget-boolean v2, p0, Landroid/support/v4/media/session/x;->p:Z

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/support/v4/media/session/x;->r:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v4, :cond_3

    iget-object v2, p0, Landroid/support/v4/media/session/x;->a:Landroid/content/Context;

    iget-object v3, p0, Landroid/support/v4/media/session/x;->c:Landroid/app/PendingIntent;

    iget-object v4, p0, Landroid/support/v4/media/session/x;->b:Landroid/content/ComponentName;

    invoke-static {v2, v3, v4}, Landroid/support/v4/media/session/ag;->unregisterMediaButtonEventReceiver(Landroid/content/Context;Landroid/app/PendingIntent;Landroid/content/ComponentName;)V

    :goto_3
    iput-boolean v1, p0, Landroid/support/v4/media/session/x;->p:Z

    goto :goto_1

    :cond_3
    iget-object v2, p0, Landroid/support/v4/media/session/x;->a:Landroid/content/Context;

    iget-object v3, p0, Landroid/support/v4/media/session/x;->b:Landroid/content/ComponentName;

    invoke-static {v2, v3}, Landroid/support/v4/media/session/c;->unregisterMediaButtonEventReceiver(Landroid/content/Context;Landroid/content/ComponentName;)V

    goto :goto_3

    :cond_4
    iget-boolean v0, p0, Landroid/support/v4/media/session/x;->o:Z

    if-eqz v0, :cond_7

    iget v0, p0, Landroid/support/v4/media/session/x;->r:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_7

    iget-object v0, p0, Landroid/support/v4/media/session/x;->d:Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/support/v4/media/session/c;->setState(Ljava/lang/Object;I)V

    iget-object v0, p0, Landroid/support/v4/media/session/x;->a:Landroid/content/Context;

    iget-object v2, p0, Landroid/support/v4/media/session/x;->d:Ljava/lang/Object;

    invoke-static {v0, v2}, Landroid/support/v4/media/session/c;->unregisterRemoteControlClient(Landroid/content/Context;Ljava/lang/Object;)V

    iput-boolean v1, p0, Landroid/support/v4/media/session/x;->o:Z

    move v0, v1

    goto :goto_2

    :cond_5
    iget-boolean v0, p0, Landroid/support/v4/media/session/x;->p:Z

    if-eqz v0, :cond_6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v4, :cond_8

    iget-object v0, p0, Landroid/support/v4/media/session/x;->a:Landroid/content/Context;

    iget-object v2, p0, Landroid/support/v4/media/session/x;->c:Landroid/app/PendingIntent;

    iget-object v3, p0, Landroid/support/v4/media/session/x;->b:Landroid/content/ComponentName;

    invoke-static {v0, v2, v3}, Landroid/support/v4/media/session/ag;->unregisterMediaButtonEventReceiver(Landroid/content/Context;Landroid/app/PendingIntent;Landroid/content/ComponentName;)V

    :goto_4
    iput-boolean v1, p0, Landroid/support/v4/media/session/x;->p:Z

    :cond_6
    iget-boolean v0, p0, Landroid/support/v4/media/session/x;->o:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/support/v4/media/session/x;->d:Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/support/v4/media/session/c;->setState(Ljava/lang/Object;I)V

    iget-object v0, p0, Landroid/support/v4/media/session/x;->a:Landroid/content/Context;

    iget-object v2, p0, Landroid/support/v4/media/session/x;->d:Ljava/lang/Object;

    invoke-static {v0, v2}, Landroid/support/v4/media/session/c;->unregisterRemoteControlClient(Landroid/content/Context;Ljava/lang/Object;)V

    iput-boolean v1, p0, Landroid/support/v4/media/session/x;->o:Z

    :cond_7
    move v0, v1

    goto :goto_2

    :cond_8
    iget-object v0, p0, Landroid/support/v4/media/session/x;->a:Landroid/content/Context;

    iget-object v2, p0, Landroid/support/v4/media/session/x;->b:Landroid/content/ComponentName;

    invoke-static {v0, v2}, Landroid/support/v4/media/session/c;->unregisterMediaButtonEventReceiver(Landroid/content/Context;Landroid/content/ComponentName;)V

    goto :goto_4
.end method

.method static synthetic b(Landroid/support/v4/media/session/x;)I
    .locals 1

    iget v0, p0, Landroid/support/v4/media/session/x;->z:I

    return v0
.end method

.method private b()Landroid/support/v4/media/session/PlaybackStateCompat;
    .locals 12

    const-wide/16 v0, 0x0

    const-wide/16 v2, -0x1

    iget-object v4, p0, Landroid/support/v4/media/session/x;->k:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v9, p0, Landroid/support/v4/media/session/x;->t:Landroid/support/v4/media/session/PlaybackStateCompat;

    iget-object v5, p0, Landroid/support/v4/media/session/x;->s:Landroid/support/v4/media/MediaMetadataCompat;

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/support/v4/media/session/x;->s:Landroid/support/v4/media/MediaMetadataCompat;

    const-string v6, "android.media.metadata.DURATION"

    invoke-virtual {v5, v6}, Landroid/support/v4/media/MediaMetadataCompat;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v2, p0, Landroid/support/v4/media/session/x;->s:Landroid/support/v4/media/MediaMetadataCompat;

    const-string v3, "android.media.metadata.DURATION"

    invoke-virtual {v2, v3}, Landroid/support/v4/media/MediaMetadataCompat;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    :cond_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x0

    if-eqz v9, :cond_5

    invoke-virtual {v9}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_1

    invoke-virtual {v9}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result v5

    const/4 v6, 0x4

    if-eq v5, v6, :cond_1

    invoke-virtual {v9}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result v5

    const/4 v6, 0x5

    if-ne v5, v6, :cond_5

    :cond_1
    invoke-virtual {v9}, Landroid/support/v4/media/session/PlaybackStateCompat;->getLastPositionUpdateTime()J

    move-result-wide v7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    cmp-long v10, v7, v0

    if-lez v10, :cond_5

    invoke-virtual {v9}, Landroid/support/v4/media/session/PlaybackStateCompat;->getPlaybackSpeed()F

    move-result v4

    sub-long v7, v5, v7

    long-to-float v7, v7

    mul-float/2addr v4, v7

    float-to-long v7, v4

    invoke-virtual {v9}, Landroid/support/v4/media/session/PlaybackStateCompat;->getPosition()J

    move-result-wide v10

    add-long/2addr v7, v10

    cmp-long v4, v2, v0

    if-ltz v4, :cond_3

    cmp-long v4, v7, v2

    if-lez v4, :cond_3

    :goto_0
    new-instance v0, Landroid/support/v4/media/session/ao;

    invoke-direct {v0, v9}, Landroid/support/v4/media/session/ao;-><init>(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    invoke-virtual {v9}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result v1

    invoke-virtual {v9}, Landroid/support/v4/media/session/PlaybackStateCompat;->getPlaybackSpeed()F

    move-result v4

    invoke-virtual/range {v0 .. v6}, Landroid/support/v4/media/session/ao;->setState(IJFJ)Landroid/support/v4/media/session/ao;

    invoke-virtual {v0}, Landroid/support/v4/media/session/ao;->build()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v0

    :goto_1
    if-nez v0, :cond_2

    move-object v0, v9

    :cond_2
    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0

    :cond_3
    cmp-long v2, v7, v0

    if-gez v2, :cond_4

    move-wide v2, v0

    goto :goto_0

    :cond_4
    move-wide v2, v7

    goto :goto_0

    :cond_5
    move-object v0, v4

    goto :goto_1
.end method

.method static synthetic b(Landroid/support/v4/media/session/x;II)V
    .locals 2

    iget v0, p0, Landroid/support/v4/media/session/x;->z:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroid/support/v4/media/session/x;->B:Landroid/support/v4/media/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/media/session/x;->B:Landroid/support/v4/media/c;

    invoke-virtual {v0, p1}, Landroid/support/v4/media/c;->onSetVolumeTo(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v4/media/session/x;->j:Landroid/media/AudioManager;

    iget v1, p0, Landroid/support/v4/media/session/x;->A:I

    invoke-virtual {v0, v1, p1, p2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0
.end method

.method static synthetic c(Landroid/support/v4/media/session/x;)I
    .locals 1

    iget v0, p0, Landroid/support/v4/media/session/x;->A:I

    return v0
.end method

.method static synthetic d(Landroid/support/v4/media/session/x;)Landroid/support/v4/media/session/ab;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/x;->g:Landroid/support/v4/media/session/ab;

    return-object v0
.end method

.method static synthetic e(Landroid/support/v4/media/session/x;)I
    .locals 1

    iget v0, p0, Landroid/support/v4/media/session/x;->r:I

    return v0
.end method

.method static synthetic f(Landroid/support/v4/media/session/x;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/media/session/x;->m:Z

    return v0
.end method

.method static synthetic g(Landroid/support/v4/media/session/x;)Landroid/os/RemoteCallbackList;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/x;->l:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic h(Landroid/support/v4/media/session/x;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/x;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Landroid/support/v4/media/session/x;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/x;->i:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Landroid/support/v4/media/session/x;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/x;->k:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic k(Landroid/support/v4/media/session/x;)Landroid/app/PendingIntent;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/x;->u:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic l(Landroid/support/v4/media/session/x;)Landroid/media/AudioManager;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/x;->j:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic m(Landroid/support/v4/media/session/x;)Landroid/support/v4/media/MediaMetadataCompat;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/x;->s:Landroid/support/v4/media/MediaMetadataCompat;

    return-object v0
.end method

.method static synthetic n(Landroid/support/v4/media/session/x;)Landroid/support/v4/media/session/PlaybackStateCompat;
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/media/session/x;->b()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v0

    return-object v0
.end method

.method static synthetic o(Landroid/support/v4/media/session/x;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/x;->v:Ljava/util/List;

    return-object v0
.end method

.method static synthetic p(Landroid/support/v4/media/session/x;)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/x;->w:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic q(Landroid/support/v4/media/session/x;)Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/x;->y:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic r(Landroid/support/v4/media/session/x;)I
    .locals 1

    iget v0, p0, Landroid/support/v4/media/session/x;->x:I

    return v0
.end method

.method static synthetic s(Landroid/support/v4/media/session/x;)Landroid/support/v4/media/session/s;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/x;->q:Landroid/support/v4/media/session/s;

    return-object v0
.end method

.method static synthetic t(Landroid/support/v4/media/session/x;)Landroid/support/v4/media/session/PlaybackStateCompat;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/x;->t:Landroid/support/v4/media/session/PlaybackStateCompat;

    return-object v0
.end method


# virtual methods
.method public final getMediaSession()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getRemoteControlClient()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/x;->d:Ljava/lang/Object;

    return-object v0
.end method

.method public final getSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/x;->f:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    return-object v0
.end method

.method public final isActive()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/media/session/x;->n:Z

    return v0
.end method

.method public final release()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/media/session/x;->n:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/media/session/x;->m:Z

    invoke-direct {p0}, Landroid/support/v4/media/session/x;->a()Z

    iget-object v0, p0, Landroid/support/v4/media/session/x;->l:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    iget-object v0, p0, Landroid/support/v4/media/session/x;->l:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/IMediaControllerCallback;

    :try_start_0
    invoke-interface {v0}, Landroid/support/v4/media/session/IMediaControllerCallback;->onSessionDestroyed()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/session/x;->l:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    iget-object v0, p0, Landroid/support/v4/media/session/x;->l:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->kill()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public final sendSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/media/session/x;->l:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    iget-object v0, p0, Landroid/support/v4/media/session/x;->l:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/IMediaControllerCallback;

    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/support/v4/media/session/IMediaControllerCallback;->onEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/session/x;->l:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public final setActive(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/media/session/x;->n:Z

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean p1, p0, Landroid/support/v4/media/session/x;->n:Z

    invoke-direct {p0}, Landroid/support/v4/media/session/x;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/media/session/x;->s:Landroid/support/v4/media/MediaMetadataCompat;

    invoke-virtual {p0, v0}, Landroid/support/v4/media/session/x;->setMetadata(Landroid/support/v4/media/MediaMetadataCompat;)V

    iget-object v0, p0, Landroid/support/v4/media/session/x;->t:Landroid/support/v4/media/session/PlaybackStateCompat;

    invoke-virtual {p0, v0}, Landroid/support/v4/media/session/x;->setPlaybackState(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    goto :goto_0
.end method

.method public final setCallback(Landroid/support/v4/media/session/s;Landroid/os/Handler;)V
    .locals 4

    const/4 v1, 0x0

    const/16 v3, 0x13

    const/16 v2, 0x12

    iget-object v0, p0, Landroid/support/v4/media/session/x;->q:Landroid/support/v4/media/session/s;

    if-ne p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v2, :cond_4

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_2

    iget-object v0, p0, Landroid/support/v4/media/session/x;->d:Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/support/v4/media/session/ag;->setOnPlaybackPositionUpdateListener(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_3

    iget-object v0, p0, Landroid/support/v4/media/session/x;->d:Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/support/v4/media/session/h;->setOnMetadataUpdateListener(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    :goto_1
    iput-object p1, p0, Landroid/support/v4/media/session/x;->q:Landroid/support/v4/media/session/s;

    goto :goto_0

    :cond_4
    if-nez p2, :cond_5

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    :cond_5
    new-instance v0, Landroid/support/v4/media/session/af;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/media/session/af;-><init>(Landroid/support/v4/media/session/x;Landroid/support/v4/media/session/s;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v2, :cond_6

    invoke-static {v0}, Landroid/support/v4/media/session/ag;->createPlaybackPositionUpdateListener(Landroid/support/v4/media/session/af;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/media/session/x;->d:Ljava/lang/Object;

    invoke-static {v2, v1}, Landroid/support/v4/media/session/ag;->setOnPlaybackPositionUpdateListener(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_6
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_3

    invoke-static {v0}, Landroid/support/v4/media/session/h;->createMetadataUpdateListener(Landroid/support/v4/media/session/af;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/media/session/x;->d:Ljava/lang/Object;

    invoke-static {v1, v0}, Landroid/support/v4/media/session/h;->setOnMetadataUpdateListener(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public final setExtras(Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/media/session/x;->y:Landroid/os/Bundle;

    return-void
.end method

.method public final setFlags(I)V
    .locals 2

    iget-object v1, p0, Landroid/support/v4/media/session/x;->k:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput p1, p0, Landroid/support/v4/media/session/x;->r:I

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Landroid/support/v4/media/session/x;->a()Z

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final setMediaButtonReceiver(Landroid/app/PendingIntent;)V
    .locals 0

    return-void
.end method

.method public final setMetadata(Landroid/support/v4/media/MediaMetadataCompat;)V
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/support/v4/media/session/x;->k:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iput-object p1, p0, Landroid/support/v4/media/session/x;->s:Landroid/support/v4/media/MediaMetadataCompat;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroid/support/v4/media/session/x;->l:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_0
    if-ltz v2, :cond_0

    iget-object v0, p0, Landroid/support/v4/media/session/x;->l:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/IMediaControllerCallback;

    :try_start_1
    invoke-interface {v0, p1}, Landroid/support/v4/media/session/IMediaControllerCallback;->onMetadataChanged(Landroid/support/v4/media/MediaMetadataCompat;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/session/x;->l:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    iget-boolean v0, p0, Landroid/support/v4/media/session/x;->n:Z

    if-nez v0, :cond_2

    :cond_1
    :goto_2
    return-void

    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v0, v2, :cond_5

    iget-object v3, p0, Landroid/support/v4/media/session/x;->d:Ljava/lang/Object;

    if-nez p1, :cond_3

    move-object v0, v1

    :goto_3
    iget-object v1, p0, Landroid/support/v4/media/session/x;->t:Landroid/support/v4/media/session/PlaybackStateCompat;

    if-nez v1, :cond_4

    const-wide/16 v1, 0x0

    :goto_4
    invoke-static {v3, v0, v1, v2}, Landroid/support/v4/media/session/h;->setMetadata(Ljava/lang/Object;Landroid/os/Bundle;J)V

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Landroid/support/v4/media/MediaMetadataCompat;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_3

    :cond_4
    iget-object v1, p0, Landroid/support/v4/media/session/x;->t:Landroid/support/v4/media/session/PlaybackStateCompat;

    invoke-virtual {v1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getActions()J

    move-result-wide v1

    goto :goto_4

    :cond_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v0, v2, :cond_1

    iget-object v0, p0, Landroid/support/v4/media/session/x;->d:Ljava/lang/Object;

    if-nez p1, :cond_6

    :goto_5
    invoke-static {v0, v1}, Landroid/support/v4/media/session/c;->setMetadata(Ljava/lang/Object;Landroid/os/Bundle;)V

    goto :goto_2

    :cond_6
    invoke-virtual {p1}, Landroid/support/v4/media/MediaMetadataCompat;->getBundle()Landroid/os/Bundle;

    move-result-object v1

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public final setPlaybackState(Landroid/support/v4/media/session/PlaybackStateCompat;)V
    .locals 9

    const/16 v8, 0x12

    const/16 v7, 0xe

    iget-object v1, p0, Landroid/support/v4/media/session/x;->k:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Landroid/support/v4/media/session/x;->t:Landroid/support/v4/media/session/PlaybackStateCompat;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroid/support/v4/media/session/x;->l:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    iget-object v0, p0, Landroid/support/v4/media/session/x;->l:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/IMediaControllerCallback;

    :try_start_1
    invoke-interface {v0, p1}, Landroid/support/v4/media/session/IMediaControllerCallback;->onPlaybackStateChanged(Landroid/support/v4/media/session/PlaybackStateCompat;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/session/x;->l:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    iget-boolean v0, p0, Landroid/support/v4/media/session/x;->n:Z

    if-nez v0, :cond_2

    :cond_1
    :goto_2
    return-void

    :cond_2
    if-nez p1, :cond_3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v7, :cond_1

    iget-object v0, p0, Landroid/support/v4/media/session/x;->d:Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v4/media/session/c;->setState(Ljava/lang/Object;I)V

    iget-object v0, p0, Landroid/support/v4/media/session/x;->d:Ljava/lang/Object;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Landroid/support/v4/media/session/c;->setTransportControlFlags(Ljava/lang/Object;J)V

    goto :goto_2

    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v8, :cond_5

    iget-object v0, p0, Landroid/support/v4/media/session/x;->d:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result v1

    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getPosition()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getPlaybackSpeed()F

    move-result v4

    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getLastPositionUpdateTime()J

    move-result-wide v5

    invoke-static/range {v0 .. v6}, Landroid/support/v4/media/session/ag;->setState(Ljava/lang/Object;IJFJ)V

    :cond_4
    :goto_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_6

    iget-object v0, p0, Landroid/support/v4/media/session/x;->d:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getActions()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/support/v4/media/session/h;->setTransportControlFlags(Ljava/lang/Object;J)V

    goto :goto_2

    :cond_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v7, :cond_4

    iget-object v0, p0, Landroid/support/v4/media/session/x;->d:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result v1

    invoke-static {v0, v1}, Landroid/support/v4/media/session/c;->setState(Ljava/lang/Object;I)V

    goto :goto_3

    :cond_6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v8, :cond_7

    iget-object v0, p0, Landroid/support/v4/media/session/x;->d:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getActions()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/support/v4/media/session/ag;->setTransportControlFlags(Ljava/lang/Object;J)V

    goto :goto_2

    :cond_7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v7, :cond_1

    iget-object v0, p0, Landroid/support/v4/media/session/x;->d:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getActions()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/support/v4/media/session/c;->setTransportControlFlags(Ljava/lang/Object;J)V

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public final setPlaybackToLocal(I)V
    .locals 7

    iget-object v0, p0, Landroid/support/v4/media/session/x;->B:Landroid/support/v4/media/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/media/session/x;->B:Landroid/support/v4/media/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/media/c;->setCallback(Landroid/support/v4/media/at;)V

    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v4/media/session/x;->z:I

    new-instance v0, Landroid/support/v4/media/session/ParcelableVolumeInfo;

    iget v1, p0, Landroid/support/v4/media/session/x;->z:I

    iget v2, p0, Landroid/support/v4/media/session/x;->A:I

    const/4 v3, 0x2

    iget-object v4, p0, Landroid/support/v4/media/session/x;->j:Landroid/media/AudioManager;

    iget v5, p0, Landroid/support/v4/media/session/x;->A:I

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v4

    iget-object v5, p0, Landroid/support/v4/media/session/x;->j:Landroid/media/AudioManager;

    iget v6, p0, Landroid/support/v4/media/session/x;->A:I

    invoke-virtual {v5, v6}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v5

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/media/session/ParcelableVolumeInfo;-><init>(IIIII)V

    invoke-direct {p0, v0}, Landroid/support/v4/media/session/x;->a(Landroid/support/v4/media/session/ParcelableVolumeInfo;)V

    return-void
.end method

.method public final setPlaybackToRemote$3c5a58fd(Landroid/support/v4/media/c;)V
    .locals 6

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "volumeProvider may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/session/x;->B:Landroid/support/v4/media/c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/media/session/x;->B:Landroid/support/v4/media/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/media/c;->setCallback(Landroid/support/v4/media/at;)V

    :cond_1
    const/4 v0, 0x2

    iput v0, p0, Landroid/support/v4/media/session/x;->z:I

    iput-object p1, p0, Landroid/support/v4/media/session/x;->B:Landroid/support/v4/media/c;

    new-instance v0, Landroid/support/v4/media/session/ParcelableVolumeInfo;

    iget v1, p0, Landroid/support/v4/media/session/x;->z:I

    iget v2, p0, Landroid/support/v4/media/session/x;->A:I

    iget-object v3, p0, Landroid/support/v4/media/session/x;->B:Landroid/support/v4/media/c;

    invoke-virtual {v3}, Landroid/support/v4/media/c;->getVolumeControl()I

    move-result v3

    iget-object v4, p0, Landroid/support/v4/media/session/x;->B:Landroid/support/v4/media/c;

    invoke-virtual {v4}, Landroid/support/v4/media/c;->getMaxVolume()I

    move-result v4

    iget-object v5, p0, Landroid/support/v4/media/session/x;->B:Landroid/support/v4/media/c;

    invoke-virtual {v5}, Landroid/support/v4/media/c;->getCurrentVolume()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/media/session/ParcelableVolumeInfo;-><init>(IIIII)V

    invoke-direct {p0, v0}, Landroid/support/v4/media/session/x;->a(Landroid/support/v4/media/session/ParcelableVolumeInfo;)V

    iget-object v0, p0, Landroid/support/v4/media/session/x;->C:Landroid/support/v4/media/at;

    invoke-virtual {p1, v0}, Landroid/support/v4/media/c;->setCallback(Landroid/support/v4/media/at;)V

    return-void
.end method

.method public final setQueue(Ljava/util/List;)V
    .locals 2

    iput-object p1, p0, Landroid/support/v4/media/session/x;->v:Ljava/util/List;

    iget-object v0, p0, Landroid/support/v4/media/session/x;->l:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    iget-object v0, p0, Landroid/support/v4/media/session/x;->l:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/IMediaControllerCallback;

    :try_start_0
    invoke-interface {v0, p1}, Landroid/support/v4/media/session/IMediaControllerCallback;->onQueueChanged(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/session/x;->l:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public final setQueueTitle(Ljava/lang/CharSequence;)V
    .locals 2

    iput-object p1, p0, Landroid/support/v4/media/session/x;->w:Ljava/lang/CharSequence;

    iget-object v0, p0, Landroid/support/v4/media/session/x;->l:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    iget-object v0, p0, Landroid/support/v4/media/session/x;->l:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/IMediaControllerCallback;

    :try_start_0
    invoke-interface {v0, p1}, Landroid/support/v4/media/session/IMediaControllerCallback;->onQueueTitleChanged(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/session/x;->l:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public final setRatingType(I)V
    .locals 0

    iput p1, p0, Landroid/support/v4/media/session/x;->x:I

    return-void
.end method

.method public final setSessionActivity(Landroid/app/PendingIntent;)V
    .locals 2

    iget-object v1, p0, Landroid/support/v4/media/session/x;->k:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Landroid/support/v4/media/session/x;->u:Landroid/app/PendingIntent;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
