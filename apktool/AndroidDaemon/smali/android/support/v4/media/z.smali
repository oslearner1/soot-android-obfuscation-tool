.class final Landroid/support/v4/media/z;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Landroid/support/v4/os/ResultReceiver;

.field private synthetic c:Landroid/support/v4/media/u;


# direct methods
.method constructor <init>(Landroid/support/v4/media/u;Ljava/lang/String;Landroid/support/v4/os/ResultReceiver;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/media/z;->c:Landroid/support/v4/media/u;

    iput-object p2, p0, Landroid/support/v4/media/z;->a:Ljava/lang/String;

    iput-object p3, p0, Landroid/support/v4/media/z;->b:Landroid/support/v4/os/ResultReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/media/z;->c:Landroid/support/v4/media/u;

    iget-object v0, v0, Landroid/support/v4/media/u;->a:Landroid/support/v4/media/MediaBrowserServiceCompat;

    iget-object v1, p0, Landroid/support/v4/media/z;->a:Ljava/lang/String;

    iget-object v2, p0, Landroid/support/v4/media/z;->b:Landroid/support/v4/os/ResultReceiver;

    invoke-static {v0, v1, v2}, Landroid/support/v4/media/MediaBrowserServiceCompat;->a(Landroid/support/v4/media/MediaBrowserServiceCompat;Ljava/lang/String;Landroid/support/v4/os/ResultReceiver;)V

    return-void
.end method
