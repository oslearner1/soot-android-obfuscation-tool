.class final Landroid/support/v4/media/session/ai;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/RemoteControlClient$OnMetadataUpdateListener;


# instance fields
.field private a:Landroid/support/v4/media/session/af;


# direct methods
.method public constructor <init>(Landroid/support/v4/media/session/af;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/media/session/ai;->a:Landroid/support/v4/media/session/af;

    return-void
.end method


# virtual methods
.method public final onMetadataUpdate(ILjava/lang/Object;)V
    .locals 1

    const v0, 0x10000001

    if-ne p1, v0, :cond_0

    instance-of v0, p2, Landroid/media/Rating;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/media/session/ai;->a:Landroid/support/v4/media/session/af;

    invoke-virtual {v0, p2}, Landroid/support/v4/media/session/af;->onSetRating(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
