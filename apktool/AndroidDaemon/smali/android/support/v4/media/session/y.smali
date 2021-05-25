.class final Landroid/support/v4/media/session/y;
.super Landroid/support/v4/media/at;


# instance fields
.field private synthetic a:Landroid/support/v4/media/session/x;


# direct methods
.method constructor <init>(Landroid/support/v4/media/session/x;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/media/session/y;->a:Landroid/support/v4/media/session/x;

    invoke-direct {p0}, Landroid/support/v4/media/at;-><init>()V

    return-void
.end method


# virtual methods
.method public final onVolumeChanged$3c5a58fd(Landroid/support/v4/media/c;)V
    .locals 6

    iget-object v0, p0, Landroid/support/v4/media/session/y;->a:Landroid/support/v4/media/session/x;

    invoke-static {v0}, Landroid/support/v4/media/session/x;->a(Landroid/support/v4/media/session/x;)Landroid/support/v4/media/c;

    move-result-object v0

    if-eq v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/support/v4/media/session/ParcelableVolumeInfo;

    iget-object v1, p0, Landroid/support/v4/media/session/y;->a:Landroid/support/v4/media/session/x;

    invoke-static {v1}, Landroid/support/v4/media/session/x;->b(Landroid/support/v4/media/session/x;)I

    move-result v1

    iget-object v2, p0, Landroid/support/v4/media/session/y;->a:Landroid/support/v4/media/session/x;

    invoke-static {v2}, Landroid/support/v4/media/session/x;->c(Landroid/support/v4/media/session/x;)I

    move-result v2

    invoke-virtual {p1}, Landroid/support/v4/media/c;->getVolumeControl()I

    move-result v3

    invoke-virtual {p1}, Landroid/support/v4/media/c;->getMaxVolume()I

    move-result v4

    invoke-virtual {p1}, Landroid/support/v4/media/c;->getCurrentVolume()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/media/session/ParcelableVolumeInfo;-><init>(IIIII)V

    iget-object v1, p0, Landroid/support/v4/media/session/y;->a:Landroid/support/v4/media/session/x;

    invoke-static {v1, v0}, Landroid/support/v4/media/session/x;->a(Landroid/support/v4/media/session/x;Landroid/support/v4/media/session/ParcelableVolumeInfo;)V

    goto :goto_0
.end method
