.class public Landroid/support/v4/media/session/p;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Landroid/support/v4/media/session/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/support/v4/media/session/d;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/media/session/p;->a:Landroid/support/v4/media/session/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/media/session/d;B)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v4/media/session/p;-><init>(Landroid/support/v4/media/session/d;)V

    return-void
.end method


# virtual methods
.method public onMetadataChanged(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/media/session/p;->a:Landroid/support/v4/media/session/d;

    invoke-static {p1}, Landroid/support/v4/media/MediaMetadataCompat;->fromMediaMetadata(Ljava/lang/Object;)Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/d;->onMetadataChanged(Landroid/support/v4/media/MediaMetadataCompat;)V

    return-void
.end method

.method public onPlaybackStateChanged(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/media/session/p;->a:Landroid/support/v4/media/session/d;

    invoke-static {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->fromPlaybackState(Ljava/lang/Object;)Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/d;->onPlaybackStateChanged(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    return-void
.end method

.method public onSessionDestroyed()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/p;->a:Landroid/support/v4/media/session/d;

    invoke-virtual {v0}, Landroid/support/v4/media/session/d;->onSessionDestroyed()V

    return-void
.end method

.method public onSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/p;->a:Landroid/support/v4/media/session/d;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/media/session/d;->onSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
