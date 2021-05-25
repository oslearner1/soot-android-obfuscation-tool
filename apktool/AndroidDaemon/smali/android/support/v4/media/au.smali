.class final Landroid/support/v4/media/au;
.super Landroid/media/VolumeProvider;


# instance fields
.field private synthetic a:Landroid/support/v4/media/av;


# direct methods
.method constructor <init>(IIILandroid/support/v4/media/av;)V
    .locals 0

    iput-object p4, p0, Landroid/support/v4/media/au;->a:Landroid/support/v4/media/av;

    invoke-direct {p0, p1, p2, p3}, Landroid/media/VolumeProvider;-><init>(III)V

    return-void
.end method


# virtual methods
.method public final onAdjustVolume(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/au;->a:Landroid/support/v4/media/av;

    invoke-virtual {v0, p1}, Landroid/support/v4/media/av;->onAdjustVolume(I)V

    return-void
.end method

.method public final onSetVolumeTo(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/au;->a:Landroid/support/v4/media/av;

    invoke-virtual {v0, p1}, Landroid/support/v4/media/av;->onSetVolumeTo(I)V

    return-void
.end method
