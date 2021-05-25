.class public final Landroid/support/v4/widget/x;
.super Ljava/lang/Object;


# static fields
.field private static final b:Landroid/support/v4/widget/aa;


# instance fields
.field private a:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v4/widget/ab;

    invoke-direct {v0}, Landroid/support/v4/widget/ab;-><init>()V

    sput-object v0, Landroid/support/v4/widget/x;->b:Landroid/support/v4/widget/aa;

    :goto_0
    return-void

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    new-instance v0, Landroid/support/v4/widget/z;

    invoke-direct {v0}, Landroid/support/v4/widget/z;-><init>()V

    sput-object v0, Landroid/support/v4/widget/x;->b:Landroid/support/v4/widget/aa;

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/support/v4/widget/y;

    invoke-direct {v0}, Landroid/support/v4/widget/y;-><init>()V

    sput-object v0, Landroid/support/v4/widget/x;->b:Landroid/support/v4/widget/aa;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/support/v4/widget/x;->b:Landroid/support/v4/widget/aa;

    invoke-interface {v0, p1}, Landroid/support/v4/widget/aa;->newEdgeEffect(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/widget/x;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)Z
    .locals 2

    sget-object v0, Landroid/support/v4/widget/x;->b:Landroid/support/v4/widget/aa;

    iget-object v1, p0, Landroid/support/v4/widget/x;->a:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/widget/aa;->draw(Ljava/lang/Object;Landroid/graphics/Canvas;)Z

    move-result v0

    return v0
.end method

.method public final finish()V
    .locals 2

    sget-object v0, Landroid/support/v4/widget/x;->b:Landroid/support/v4/widget/aa;

    iget-object v1, p0, Landroid/support/v4/widget/x;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/widget/aa;->finish(Ljava/lang/Object;)V

    return-void
.end method

.method public final isFinished()Z
    .locals 2

    sget-object v0, Landroid/support/v4/widget/x;->b:Landroid/support/v4/widget/aa;

    iget-object v1, p0, Landroid/support/v4/widget/x;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/widget/aa;->isFinished(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final onAbsorb(I)Z
    .locals 2

    sget-object v0, Landroid/support/v4/widget/x;->b:Landroid/support/v4/widget/aa;

    iget-object v1, p0, Landroid/support/v4/widget/x;->a:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/widget/aa;->onAbsorb(Ljava/lang/Object;I)Z

    move-result v0

    return v0
.end method

.method public final onPull(F)Z
    .locals 2

    sget-object v0, Landroid/support/v4/widget/x;->b:Landroid/support/v4/widget/aa;

    iget-object v1, p0, Landroid/support/v4/widget/x;->a:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/widget/aa;->onPull(Ljava/lang/Object;F)Z

    move-result v0

    return v0
.end method

.method public final onPull(FF)Z
    .locals 2

    sget-object v0, Landroid/support/v4/widget/x;->b:Landroid/support/v4/widget/aa;

    iget-object v1, p0, Landroid/support/v4/widget/x;->a:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2}, Landroid/support/v4/widget/aa;->onPull(Ljava/lang/Object;FF)Z

    move-result v0

    return v0
.end method

.method public final onRelease()Z
    .locals 2

    sget-object v0, Landroid/support/v4/widget/x;->b:Landroid/support/v4/widget/aa;

    iget-object v1, p0, Landroid/support/v4/widget/x;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/widget/aa;->onRelease(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final setSize(II)V
    .locals 2

    sget-object v0, Landroid/support/v4/widget/x;->b:Landroid/support/v4/widget/aa;

    iget-object v1, p0, Landroid/support/v4/widget/x;->a:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2}, Landroid/support/v4/widget/aa;->setSize(Ljava/lang/Object;II)V

    return-void
.end method
