.class final Landroid/support/v4/media/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;

.field private synthetic b:Ljava/util/List;

.field private synthetic c:Ljava/lang/String;

.field private synthetic d:Landroid/support/v4/media/d;


# direct methods
.method constructor <init>(Landroid/support/v4/media/d;Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/media/j;->d:Landroid/support/v4/media/d;

    iput-object p2, p0, Landroid/support/v4/media/j;->a:Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;

    iput-object p3, p0, Landroid/support/v4/media/j;->b:Ljava/util/List;

    iput-object p4, p0, Landroid/support/v4/media/j;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/media/j;->d:Landroid/support/v4/media/d;

    iget-object v1, p0, Landroid/support/v4/media/j;->a:Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;

    const-string v2, "onLoadChildren"

    invoke-static {v0, v1, v2}, Landroid/support/v4/media/d;->a(Landroid/support/v4/media/d;Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v4/media/j;->b:Ljava/util/List;

    if-nez v0, :cond_2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    :goto_1
    iget-object v0, p0, Landroid/support/v4/media/j;->d:Landroid/support/v4/media/d;

    invoke-static {v0}, Landroid/support/v4/media/d;->e(Landroid/support/v4/media/d;)Landroid/support/v4/util/ArrayMap;

    move-result-object v0

    iget-object v2, p0, Landroid/support/v4/media/j;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/m;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/support/v4/media/m;->a:Lcom/vivo/PCTools/Pcserver/a;

    iget-object v2, p0, Landroid/support/v4/media/j;->c:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/vivo/PCTools/Pcserver/a;->onChildrenLoaded(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    :cond_2
    move-object v1, v0

    goto :goto_1
.end method
