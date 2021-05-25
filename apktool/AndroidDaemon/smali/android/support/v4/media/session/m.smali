.class Landroid/support/v4/media/session/m;
.super Landroid/support/v4/media/session/l;


# instance fields
.field protected final a:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/media/session/l;-><init>()V

    iput-object p1, p0, Landroid/support/v4/media/session/m;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public fastForward()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/m;->a:Ljava/lang/Object;

    invoke-static {v0}, Landroid/support/v4/media/session/r;->fastForward(Ljava/lang/Object;)V

    return-void
.end method

.method public pause()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/m;->a:Ljava/lang/Object;

    invoke-static {v0}, Landroid/support/v4/media/session/r;->pause(Ljava/lang/Object;)V

    return-void
.end method

.method public play()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/m;->a:Ljava/lang/Object;

    invoke-static {v0}, Landroid/support/v4/media/session/r;->play(Ljava/lang/Object;)V

    return-void
.end method

.method public playFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/m;->a:Ljava/lang/Object;

    invoke-static {v0, p1, p2}, Landroid/support/v4/media/session/r;->playFromMediaId(Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public playFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/m;->a:Ljava/lang/Object;

    invoke-static {v0, p1, p2}, Landroid/support/v4/media/session/r;->playFromSearch(Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public playFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public rewind()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/m;->a:Ljava/lang/Object;

    invoke-static {v0}, Landroid/support/v4/media/session/r;->rewind(Ljava/lang/Object;)V

    return-void
.end method

.method public seekTo(J)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/m;->a:Ljava/lang/Object;

    invoke-static {v0, p1, p2}, Landroid/support/v4/media/session/r;->seekTo(Ljava/lang/Object;J)V

    return-void
.end method

.method public sendCustomAction(Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/media/session/m;->a:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/support/v4/media/session/r;->sendCustomAction(Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/m;->a:Ljava/lang/Object;

    invoke-static {v0, p1, p2}, Landroid/support/v4/media/session/r;->sendCustomAction(Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public setRating(Landroid/support/v4/media/RatingCompat;)V
    .locals 2

    iget-object v1, p0, Landroid/support/v4/media/session/m;->a:Ljava/lang/Object;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/support/v4/media/RatingCompat;->getRating()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    invoke-static {v1, v0}, Landroid/support/v4/media/session/r;->setRating(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public skipToNext()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/m;->a:Ljava/lang/Object;

    invoke-static {v0}, Landroid/support/v4/media/session/r;->skipToNext(Ljava/lang/Object;)V

    return-void
.end method

.method public skipToPrevious()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/m;->a:Ljava/lang/Object;

    invoke-static {v0}, Landroid/support/v4/media/session/r;->skipToPrevious(Ljava/lang/Object;)V

    return-void
.end method

.method public skipToQueueItem(J)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/m;->a:Ljava/lang/Object;

    invoke-static {v0, p1, p2}, Landroid/support/v4/media/session/r;->skipToQueueItem(Ljava/lang/Object;J)V

    return-void
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/m;->a:Ljava/lang/Object;

    invoke-static {v0}, Landroid/support/v4/media/session/r;->stop(Ljava/lang/Object;)V

    return-void
.end method
