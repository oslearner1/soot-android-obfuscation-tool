.class final Landroid/support/v4/media/aq;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/RemoteControlClient$OnGetPlaybackPositionListener;


# instance fields
.field private synthetic a:Landroid/support/v4/media/al;


# direct methods
.method constructor <init>(Landroid/support/v4/media/al;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/media/aq;->a:Landroid/support/v4/media/al;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGetPlaybackPosition()J
    .locals 2

    iget-object v0, p0, Landroid/support/v4/media/aq;->a:Landroid/support/v4/media/al;

    iget-object v0, v0, Landroid/support/v4/media/al;->c:Landroid/support/v4/media/ak;

    invoke-virtual {v0}, Landroid/support/v4/media/ak;->getPlaybackPosition()J

    move-result-wide v0

    return-wide v0
.end method
