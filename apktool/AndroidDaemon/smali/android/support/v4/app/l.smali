.class public Landroid/support/v4/app/l;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/support/v4/app/cj;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/cj;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/app/l;-><init>()V

    iput-object p1, p0, Landroid/support/v4/app/l;->a:Landroid/support/v4/app/cj;

    return-void
.end method


# virtual methods
.method public onCaptureSharedElementSnapshot(Landroid/view/View;Landroid/graphics/Matrix;Landroid/graphics/RectF;)Landroid/os/Parcelable;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/l;->a:Landroid/support/v4/app/cj;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/cj;->onCaptureSharedElementSnapshot(Landroid/view/View;Landroid/graphics/Matrix;Landroid/graphics/RectF;)Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public onCreateSnapshotView(Landroid/content/Context;Landroid/os/Parcelable;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/l;->a:Landroid/support/v4/app/cj;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/cj;->onCreateSnapshotView(Landroid/content/Context;Landroid/os/Parcelable;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/l;->a:Landroid/support/v4/app/cj;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/cj;->onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V

    return-void
.end method

.method public onRejectSharedElements(Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/l;->a:Landroid/support/v4/app/cj;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/cj;->onRejectSharedElements(Ljava/util/List;)V

    return-void
.end method

.method public onSharedElementEnd(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/l;->a:Landroid/support/v4/app/cj;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/cj;->onSharedElementEnd(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public onSharedElementStart(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/l;->a:Landroid/support/v4/app/cj;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/cj;->onSharedElementStart(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method
