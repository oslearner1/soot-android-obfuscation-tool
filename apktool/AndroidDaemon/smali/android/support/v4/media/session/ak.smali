.class Landroid/support/v4/media/session/ak;
.super Landroid/media/session/MediaSession$Callback;


# instance fields
.field protected final a:Landroid/support/v4/media/session/aj;


# direct methods
.method public constructor <init>(Landroid/support/v4/media/session/aj;)V
    .locals 0

    invoke-direct {p0}, Landroid/media/session/MediaSession$Callback;-><init>()V

    iput-object p1, p0, Landroid/support/v4/media/session/ak;->a:Landroid/support/v4/media/session/aj;

    return-void
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/ak;->a:Landroid/support/v4/media/session/aj;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/media/session/aj;->onCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    return-void
.end method

.method public onCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/ak;->a:Landroid/support/v4/media/session/aj;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/media/session/aj;->onCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public onFastForward()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/ak;->a:Landroid/support/v4/media/session/aj;

    invoke-interface {v0}, Landroid/support/v4/media/session/aj;->onFastForward()V

    return-void
.end method

.method public onMediaButtonEvent(Landroid/content/Intent;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/ak;->a:Landroid/support/v4/media/session/aj;

    invoke-interface {v0, p1}, Landroid/support/v4/media/session/aj;->onMediaButtonEvent(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/media/session/MediaSession$Callback;->onMediaButtonEvent(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/ak;->a:Landroid/support/v4/media/session/aj;

    invoke-interface {v0}, Landroid/support/v4/media/session/aj;->onPause()V

    return-void
.end method

.method public onPlay()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/ak;->a:Landroid/support/v4/media/session/aj;

    invoke-interface {v0}, Landroid/support/v4/media/session/aj;->onPlay()V

    return-void
.end method

.method public onPlayFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/ak;->a:Landroid/support/v4/media/session/aj;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/media/session/aj;->onPlayFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public onPlayFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/ak;->a:Landroid/support/v4/media/session/aj;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/media/session/aj;->onPlayFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public onRewind()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/ak;->a:Landroid/support/v4/media/session/aj;

    invoke-interface {v0}, Landroid/support/v4/media/session/aj;->onRewind()V

    return-void
.end method

.method public onSeekTo(J)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/ak;->a:Landroid/support/v4/media/session/aj;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/media/session/aj;->onSeekTo(J)V

    return-void
.end method

.method public onSetRating(Landroid/media/Rating;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/ak;->a:Landroid/support/v4/media/session/aj;

    invoke-interface {v0, p1}, Landroid/support/v4/media/session/aj;->onSetRating(Ljava/lang/Object;)V

    return-void
.end method

.method public onSkipToNext()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/ak;->a:Landroid/support/v4/media/session/aj;

    invoke-interface {v0}, Landroid/support/v4/media/session/aj;->onSkipToNext()V

    return-void
.end method

.method public onSkipToPrevious()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/ak;->a:Landroid/support/v4/media/session/aj;

    invoke-interface {v0}, Landroid/support/v4/media/session/aj;->onSkipToPrevious()V

    return-void
.end method

.method public onSkipToQueueItem(J)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/ak;->a:Landroid/support/v4/media/session/aj;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/media/session/aj;->onSkipToQueueItem(J)V

    return-void
.end method

.method public onStop()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/ak;->a:Landroid/support/v4/media/session/aj;

    invoke-interface {v0}, Landroid/support/v4/media/session/aj;->onStop()V

    return-void
.end method
