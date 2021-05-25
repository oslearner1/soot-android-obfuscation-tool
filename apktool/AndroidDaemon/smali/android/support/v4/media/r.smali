.class final Landroid/support/v4/media/r;
.super Landroid/support/v4/media/t;


# instance fields
.field private synthetic a:Landroid/support/v4/os/ResultReceiver;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaBrowserServiceCompat;Ljava/lang/Object;Landroid/support/v4/os/ResultReceiver;)V
    .locals 0

    iput-object p3, p0, Landroid/support/v4/media/r;->a:Landroid/support/v4/os/ResultReceiver;

    invoke-direct {p0, p1, p2}, Landroid/support/v4/media/t;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method final synthetic a(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "media_item"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v1, p0, Landroid/support/v4/media/r;->a:Landroid/support/v4/os/ResultReceiver;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void
.end method
