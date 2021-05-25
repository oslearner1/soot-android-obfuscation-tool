.class final Landroid/support/v4/media/session/q;
.super Landroid/media/session/MediaController$Callback;


# instance fields
.field private a:Landroid/support/v4/media/session/p;


# direct methods
.method public constructor <init>(Landroid/support/v4/media/session/p;)V
    .locals 0

    invoke-direct {p0}, Landroid/media/session/MediaController$Callback;-><init>()V

    iput-object p1, p0, Landroid/support/v4/media/session/q;->a:Landroid/support/v4/media/session/p;

    return-void
.end method


# virtual methods
.method public final onMetadataChanged(Landroid/media/MediaMetadata;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/q;->a:Landroid/support/v4/media/session/p;

    invoke-virtual {v0, p1}, Landroid/support/v4/media/session/p;->onMetadataChanged(Ljava/lang/Object;)V

    return-void
.end method

.method public final onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/q;->a:Landroid/support/v4/media/session/p;

    invoke-virtual {v0, p1}, Landroid/support/v4/media/session/p;->onPlaybackStateChanged(Ljava/lang/Object;)V

    return-void
.end method

.method public final onSessionDestroyed()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/q;->a:Landroid/support/v4/media/session/p;

    invoke-virtual {v0}, Landroid/support/v4/media/session/p;->onSessionDestroyed()V

    return-void
.end method

.method public final onSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/q;->a:Landroid/support/v4/media/session/p;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/media/session/p;->onSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
