.class Landroid/support/v4/media/routing/c;
.super Landroid/media/MediaRouter$Callback;


# instance fields
.field protected final a:Landroid/support/v4/media/routing/b;


# direct methods
.method public constructor <init>(Landroid/support/v4/media/routing/b;)V
    .locals 0

    invoke-direct {p0}, Landroid/media/MediaRouter$Callback;-><init>()V

    iput-object p1, p0, Landroid/support/v4/media/routing/c;->a:Landroid/support/v4/media/routing/b;

    return-void
.end method


# virtual methods
.method public onRouteAdded(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/routing/c;->a:Landroid/support/v4/media/routing/b;

    invoke-interface {v0, p2}, Landroid/support/v4/media/routing/b;->onRouteAdded(Ljava/lang/Object;)V

    return-void
.end method

.method public onRouteChanged(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/routing/c;->a:Landroid/support/v4/media/routing/b;

    invoke-interface {v0, p2}, Landroid/support/v4/media/routing/b;->onRouteChanged(Ljava/lang/Object;)V

    return-void
.end method

.method public onRouteGrouped(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;Landroid/media/MediaRouter$RouteGroup;I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/routing/c;->a:Landroid/support/v4/media/routing/b;

    invoke-interface {v0, p2, p3, p4}, Landroid/support/v4/media/routing/b;->onRouteGrouped(Ljava/lang/Object;Ljava/lang/Object;I)V

    return-void
.end method

.method public onRouteRemoved(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/routing/c;->a:Landroid/support/v4/media/routing/b;

    invoke-interface {v0, p2}, Landroid/support/v4/media/routing/b;->onRouteRemoved(Ljava/lang/Object;)V

    return-void
.end method

.method public onRouteSelected(Landroid/media/MediaRouter;ILandroid/media/MediaRouter$RouteInfo;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/routing/c;->a:Landroid/support/v4/media/routing/b;

    invoke-interface {v0, p2, p3}, Landroid/support/v4/media/routing/b;->onRouteSelected(ILjava/lang/Object;)V

    return-void
.end method

.method public onRouteUngrouped(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;Landroid/media/MediaRouter$RouteGroup;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/routing/c;->a:Landroid/support/v4/media/routing/b;

    invoke-interface {v0, p2, p3}, Landroid/support/v4/media/routing/b;->onRouteUngrouped(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public onRouteUnselected(Landroid/media/MediaRouter;ILandroid/media/MediaRouter$RouteInfo;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/routing/c;->a:Landroid/support/v4/media/routing/b;

    invoke-interface {v0, p2, p3}, Landroid/support/v4/media/routing/b;->onRouteUnselected(ILjava/lang/Object;)V

    return-void
.end method

.method public onRouteVolumeChanged(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/routing/c;->a:Landroid/support/v4/media/routing/b;

    invoke-interface {v0, p2}, Landroid/support/v4/media/routing/b;->onRouteVolumeChanged(Ljava/lang/Object;)V

    return-void
.end method
