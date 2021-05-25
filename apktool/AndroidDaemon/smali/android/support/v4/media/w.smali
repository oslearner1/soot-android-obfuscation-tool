.class final Landroid/support/v4/media/w;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;

.field private synthetic b:Landroid/support/v4/media/u;


# direct methods
.method constructor <init>(Landroid/support/v4/media/u;Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/media/w;->b:Landroid/support/v4/media/u;

    iput-object p2, p0, Landroid/support/v4/media/w;->a:Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/media/w;->a:Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;

    invoke-interface {v0}, Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/media/w;->b:Landroid/support/v4/media/u;

    iget-object v1, v1, Landroid/support/v4/media/u;->a:Landroid/support/v4/media/MediaBrowserServiceCompat;

    invoke-static {v1}, Landroid/support/v4/media/MediaBrowserServiceCompat;->a(Landroid/support/v4/media/MediaBrowserServiceCompat;)Landroid/support/v4/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
