.class final Landroid/support/v4/media/session/al;
.super Landroid/support/v4/media/session/ak;


# direct methods
.method public constructor <init>(Landroid/support/v4/media/session/MediaSessionCompatApi23$Callback;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v4/media/session/ak;-><init>(Landroid/support/v4/media/session/aj;)V

    return-void
.end method


# virtual methods
.method public final onPlayFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/al;->a:Landroid/support/v4/media/session/aj;

    check-cast v0, Landroid/support/v4/media/session/MediaSessionCompatApi23$Callback;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompatApi23$Callback;->onPlayFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V

    return-void
.end method
