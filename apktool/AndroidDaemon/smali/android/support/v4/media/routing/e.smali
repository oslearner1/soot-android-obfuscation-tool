.class final Landroid/support/v4/media/routing/e;
.super Landroid/media/MediaRouter$VolumeCallback;


# instance fields
.field private a:Landroid/support/v4/media/routing/d;


# direct methods
.method public constructor <init>(Landroid/support/v4/media/routing/d;)V
    .locals 0

    invoke-direct {p0}, Landroid/media/MediaRouter$VolumeCallback;-><init>()V

    iput-object p1, p0, Landroid/support/v4/media/routing/e;->a:Landroid/support/v4/media/routing/d;

    return-void
.end method


# virtual methods
.method public final onVolumeSetRequest(Landroid/media/MediaRouter$RouteInfo;I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/routing/e;->a:Landroid/support/v4/media/routing/d;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/media/routing/d;->onVolumeSetRequest(Ljava/lang/Object;I)V

    return-void
.end method

.method public final onVolumeUpdateRequest(Landroid/media/MediaRouter$RouteInfo;I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/routing/e;->a:Landroid/support/v4/media/routing/d;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/media/routing/d;->onVolumeUpdateRequest(Ljava/lang/Object;I)V

    return-void
.end method
