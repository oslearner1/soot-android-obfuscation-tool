.class final Landroid/support/v4/media/routing/f;
.super Landroid/support/v4/media/routing/c;


# direct methods
.method public constructor <init>(Landroid/support/v4/media/routing/MediaRouterJellybeanMr1$Callback;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v4/media/routing/c;-><init>(Landroid/support/v4/media/routing/b;)V

    return-void
.end method


# virtual methods
.method public final onRoutePresentationDisplayChanged(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/routing/f;->a:Landroid/support/v4/media/routing/b;

    check-cast v0, Landroid/support/v4/media/routing/MediaRouterJellybeanMr1$Callback;

    invoke-interface {v0, p2}, Landroid/support/v4/media/routing/MediaRouterJellybeanMr1$Callback;->onRoutePresentationDisplayChanged(Ljava/lang/Object;)V

    return-void
.end method
