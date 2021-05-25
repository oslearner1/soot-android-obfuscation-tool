.class public abstract Landroid/support/v4/media/session/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field private final a:Ljava/lang/Object;

.field private b:Landroid/support/v4/media/session/e;

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Landroid/support/v4/media/session/d;->c:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v4/media/session/p;

    invoke-direct {v0, p0, v2}, Landroid/support/v4/media/session/p;-><init>(Landroid/support/v4/media/session/d;B)V

    invoke-static {v0}, Landroid/support/v4/media/session/c;->createCallback(Landroid/support/v4/media/session/p;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/session/d;->a:Ljava/lang/Object;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/support/v4/media/session/f;

    invoke-direct {v0, p0, v2}, Landroid/support/v4/media/session/f;-><init>(Landroid/support/v4/media/session/d;B)V

    iput-object v0, p0, Landroid/support/v4/media/session/d;->a:Ljava/lang/Object;

    goto :goto_0
.end method

.method static synthetic a(Landroid/support/v4/media/session/d;)Landroid/support/v4/media/session/e;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/d;->b:Landroid/support/v4/media/session/e;

    return-object v0
.end method

.method static synthetic a(Landroid/support/v4/media/session/d;Landroid/os/Handler;)V
    .locals 2

    new-instance v0, Landroid/support/v4/media/session/e;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/support/v4/media/session/e;-><init>(Landroid/support/v4/media/session/d;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/support/v4/media/session/d;->b:Landroid/support/v4/media/session/e;

    return-void
.end method

.method static synthetic a(Landroid/support/v4/media/session/d;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/support/v4/media/session/d;->c:Z

    return p1
.end method

.method static synthetic b(Landroid/support/v4/media/session/d;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/media/session/d;->c:Z

    return v0
.end method

.method static synthetic c(Landroid/support/v4/media/session/d;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/d;->a:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public binderDied()V
    .locals 0

    invoke-virtual {p0}, Landroid/support/v4/media/session/d;->onSessionDestroyed()V

    return-void
.end method

.method public onAudioInfoChanged(Landroid/support/v4/media/session/k;)V
    .locals 0

    return-void
.end method

.method public onExtrasChanged(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onMetadataChanged(Landroid/support/v4/media/MediaMetadataCompat;)V
    .locals 0

    return-void
.end method

.method public onPlaybackStateChanged(Landroid/support/v4/media/session/PlaybackStateCompat;)V
    .locals 0

    return-void
.end method

.method public onQueueChanged(Ljava/util/List;)V
    .locals 0

    return-void
.end method

.method public onQueueTitleChanged(Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public onSessionDestroyed()V
    .locals 0

    return-void
.end method

.method public onSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method
