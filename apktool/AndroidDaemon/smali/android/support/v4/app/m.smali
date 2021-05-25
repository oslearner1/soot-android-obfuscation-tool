.class final Landroid/support/v4/app/m;
.super Landroid/app/SharedElementCallback;


# instance fields
.field private a:Landroid/support/v4/app/l;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/l;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/SharedElementCallback;-><init>()V

    iput-object p1, p0, Landroid/support/v4/app/m;->a:Landroid/support/v4/app/l;

    return-void
.end method


# virtual methods
.method public final onCaptureSharedElementSnapshot(Landroid/view/View;Landroid/graphics/Matrix;Landroid/graphics/RectF;)Landroid/os/Parcelable;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/m;->a:Landroid/support/v4/app/l;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/l;->onCaptureSharedElementSnapshot(Landroid/view/View;Landroid/graphics/Matrix;Landroid/graphics/RectF;)Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public final onCreateSnapshotView(Landroid/content/Context;Landroid/os/Parcelable;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/m;->a:Landroid/support/v4/app/l;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/l;->onCreateSnapshotView(Landroid/content/Context;Landroid/os/Parcelable;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/m;->a:Landroid/support/v4/app/l;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/l;->onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V

    return-void
.end method

.method public final onRejectSharedElements(Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/m;->a:Landroid/support/v4/app/l;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/l;->onRejectSharedElements(Ljava/util/List;)V

    return-void
.end method

.method public final onSharedElementEnd(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/m;->a:Landroid/support/v4/app/l;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/l;->onSharedElementEnd(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public final onSharedElementStart(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/m;->a:Landroid/support/v4/app/l;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/l;->onSharedElementStart(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method
