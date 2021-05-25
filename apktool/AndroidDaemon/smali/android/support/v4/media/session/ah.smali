.class final Landroid/support/v4/media/session/ah;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;


# instance fields
.field private a:Landroid/support/v4/media/session/af;


# direct methods
.method public constructor <init>(Landroid/support/v4/media/session/af;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/media/session/ah;->a:Landroid/support/v4/media/session/af;

    return-void
.end method


# virtual methods
.method public final onPlaybackPositionUpdate(J)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/ah;->a:Landroid/support/v4/media/session/af;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/media/session/af;->onSeekTo(J)V

    return-void
.end method
