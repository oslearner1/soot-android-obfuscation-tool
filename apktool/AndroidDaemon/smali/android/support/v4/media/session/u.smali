.class final Landroid/support/v4/media/session/u;
.super Landroid/support/v4/media/session/t;

# interfaces
.implements Landroid/support/v4/media/session/MediaSessionCompatApi23$Callback;


# instance fields
.field private synthetic a:Landroid/support/v4/media/session/s;


# direct methods
.method private constructor <init>(Landroid/support/v4/media/session/s;)V
    .locals 1

    iput-object p1, p0, Landroid/support/v4/media/session/u;->a:Landroid/support/v4/media/session/s;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v4/media/session/t;-><init>(Landroid/support/v4/media/session/s;B)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/media/session/s;B)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v4/media/session/u;-><init>(Landroid/support/v4/media/session/s;)V

    return-void
.end method


# virtual methods
.method public final onPlayFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/u;->a:Landroid/support/v4/media/session/s;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/media/session/s;->onPlayFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V

    return-void
.end method
