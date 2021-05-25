.class Landroid/support/v4/media/session/t;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/media/session/aj;


# instance fields
.field private synthetic a:Landroid/support/v4/media/session/s;


# direct methods
.method private constructor <init>(Landroid/support/v4/media/session/s;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/media/session/t;->a:Landroid/support/v4/media/session/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/media/session/s;B)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v4/media/session/t;-><init>(Landroid/support/v4/media/session/s;)V

    return-void
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/t;->a:Landroid/support/v4/media/session/s;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/media/session/s;->onCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    return-void
.end method

.method public onCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/t;->a:Landroid/support/v4/media/session/s;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/media/session/s;->onCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public onFastForward()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/t;->a:Landroid/support/v4/media/session/s;

    invoke-virtual {v0}, Landroid/support/v4/media/session/s;->onFastForward()V

    return-void
.end method

.method public onMediaButtonEvent(Landroid/content/Intent;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/t;->a:Landroid/support/v4/media/session/s;

    invoke-virtual {v0, p1}, Landroid/support/v4/media/session/s;->onMediaButtonEvent(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/t;->a:Landroid/support/v4/media/session/s;

    invoke-virtual {v0}, Landroid/support/v4/media/session/s;->onPause()V

    return-void
.end method

.method public onPlay()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/t;->a:Landroid/support/v4/media/session/s;

    invoke-virtual {v0}, Landroid/support/v4/media/session/s;->onPlay()V

    return-void
.end method

.method public onPlayFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/t;->a:Landroid/support/v4/media/session/s;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/media/session/s;->onPlayFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public onPlayFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/t;->a:Landroid/support/v4/media/session/s;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/media/session/s;->onPlayFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public onRewind()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/t;->a:Landroid/support/v4/media/session/s;

    invoke-virtual {v0}, Landroid/support/v4/media/session/s;->onRewind()V

    return-void
.end method

.method public onSeekTo(J)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/t;->a:Landroid/support/v4/media/session/s;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/media/session/s;->onSeekTo(J)V

    return-void
.end method

.method public onSetRating(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/media/session/t;->a:Landroid/support/v4/media/session/s;

    invoke-static {p1}, Landroid/support/v4/media/RatingCompat;->fromRating(Ljava/lang/Object;)Landroid/support/v4/media/RatingCompat;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/s;->onSetRating(Landroid/support/v4/media/RatingCompat;)V

    return-void
.end method

.method public onSkipToNext()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/t;->a:Landroid/support/v4/media/session/s;

    invoke-virtual {v0}, Landroid/support/v4/media/session/s;->onSkipToNext()V

    return-void
.end method

.method public onSkipToPrevious()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/t;->a:Landroid/support/v4/media/session/s;

    invoke-virtual {v0}, Landroid/support/v4/media/session/s;->onSkipToPrevious()V

    return-void
.end method

.method public onSkipToQueueItem(J)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/t;->a:Landroid/support/v4/media/session/s;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/media/session/s;->onSkipToQueueItem(J)V

    return-void
.end method

.method public onStop()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/t;->a:Landroid/support/v4/media/session/s;

    invoke-virtual {v0}, Landroid/support/v4/media/session/s;->onStop()V

    return-void
.end method
