.class Landroid/support/v4/view/cn;
.super Landroid/support/v4/view/cl;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/view/cl;-><init>()V

    return-void
.end method


# virtual methods
.method public alpha(Landroid/support/v4/view/ck;Landroid/view/View;F)V
    .locals 0

    invoke-static {p2, p3}, Landroid/support/v4/view/c;->alpha(Landroid/view/View;F)V

    return-void
.end method

.method public alphaBy(Landroid/support/v4/view/ck;Landroid/view/View;F)V
    .locals 0

    invoke-static {p2, p3}, Landroid/support/v4/view/c;->alphaBy(Landroid/view/View;F)V

    return-void
.end method

.method public cancel(Landroid/support/v4/view/ck;Landroid/view/View;)V
    .locals 0

    invoke-static {p2}, Landroid/support/v4/view/c;->cancel(Landroid/view/View;)V

    return-void
.end method

.method public getDuration(Landroid/support/v4/view/ck;Landroid/view/View;)J
    .locals 2

    invoke-static {p2}, Landroid/support/v4/view/c;->getDuration(Landroid/view/View;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getStartDelay(Landroid/support/v4/view/ck;Landroid/view/View;)J
    .locals 2

    invoke-static {p2}, Landroid/support/v4/view/c;->getStartDelay(Landroid/view/View;)J

    move-result-wide v0

    return-wide v0
.end method

.method public rotation(Landroid/support/v4/view/ck;Landroid/view/View;F)V
    .locals 0

    invoke-static {p2, p3}, Landroid/support/v4/view/c;->rotation(Landroid/view/View;F)V

    return-void
.end method

.method public rotationBy(Landroid/support/v4/view/ck;Landroid/view/View;F)V
    .locals 0

    invoke-static {p2, p3}, Landroid/support/v4/view/c;->rotationBy(Landroid/view/View;F)V

    return-void
.end method

.method public rotationX(Landroid/support/v4/view/ck;Landroid/view/View;F)V
    .locals 0

    invoke-static {p2, p3}, Landroid/support/v4/view/c;->rotationX(Landroid/view/View;F)V

    return-void
.end method

.method public rotationXBy(Landroid/support/v4/view/ck;Landroid/view/View;F)V
    .locals 0

    invoke-static {p2, p3}, Landroid/support/v4/view/c;->rotationXBy(Landroid/view/View;F)V

    return-void
.end method

.method public rotationY(Landroid/support/v4/view/ck;Landroid/view/View;F)V
    .locals 0

    invoke-static {p2, p3}, Landroid/support/v4/view/c;->rotationY(Landroid/view/View;F)V

    return-void
.end method

.method public rotationYBy(Landroid/support/v4/view/ck;Landroid/view/View;F)V
    .locals 0

    invoke-static {p2, p3}, Landroid/support/v4/view/c;->rotationYBy(Landroid/view/View;F)V

    return-void
.end method

.method public scaleX(Landroid/support/v4/view/ck;Landroid/view/View;F)V
    .locals 0

    invoke-static {p2, p3}, Landroid/support/v4/view/c;->scaleX(Landroid/view/View;F)V

    return-void
.end method

.method public scaleXBy(Landroid/support/v4/view/ck;Landroid/view/View;F)V
    .locals 0

    invoke-static {p2, p3}, Landroid/support/v4/view/c;->scaleXBy(Landroid/view/View;F)V

    return-void
.end method

.method public scaleY(Landroid/support/v4/view/ck;Landroid/view/View;F)V
    .locals 0

    invoke-static {p2, p3}, Landroid/support/v4/view/c;->scaleY(Landroid/view/View;F)V

    return-void
.end method

.method public scaleYBy(Landroid/support/v4/view/ck;Landroid/view/View;F)V
    .locals 0

    invoke-static {p2, p3}, Landroid/support/v4/view/c;->scaleYBy(Landroid/view/View;F)V

    return-void
.end method

.method public setDuration(Landroid/support/v4/view/ck;Landroid/view/View;J)V
    .locals 0

    invoke-static {p2, p3, p4}, Landroid/support/v4/view/c;->setDuration(Landroid/view/View;J)V

    return-void
.end method

.method public setInterpolator(Landroid/support/v4/view/ck;Landroid/view/View;Landroid/view/animation/Interpolator;)V
    .locals 0

    invoke-static {p2, p3}, Landroid/support/v4/view/c;->setInterpolator(Landroid/view/View;Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method public setListener(Landroid/support/v4/view/ck;Landroid/view/View;Landroid/support/v4/view/cx;)V
    .locals 1

    const/high16 v0, 0x7e000000

    invoke-virtual {p2, v0, p3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    new-instance v0, Landroid/support/v4/view/co;

    invoke-direct {v0, p1}, Landroid/support/v4/view/co;-><init>(Landroid/support/v4/view/ck;)V

    invoke-static {p2, v0}, Landroid/support/v4/view/c;->setListener(Landroid/view/View;Landroid/support/v4/view/cx;)V

    return-void
.end method

.method public setStartDelay(Landroid/support/v4/view/ck;Landroid/view/View;J)V
    .locals 0

    invoke-static {p2, p3, p4}, Landroid/support/v4/view/c;->setStartDelay(Landroid/view/View;J)V

    return-void
.end method

.method public start(Landroid/support/v4/view/ck;Landroid/view/View;)V
    .locals 0

    invoke-static {p2}, Landroid/support/v4/view/c;->start(Landroid/view/View;)V

    return-void
.end method

.method public translationX(Landroid/support/v4/view/ck;Landroid/view/View;F)V
    .locals 0

    invoke-static {p2, p3}, Landroid/support/v4/view/c;->translationX(Landroid/view/View;F)V

    return-void
.end method

.method public translationXBy(Landroid/support/v4/view/ck;Landroid/view/View;F)V
    .locals 0

    invoke-static {p2, p3}, Landroid/support/v4/view/c;->translationXBy(Landroid/view/View;F)V

    return-void
.end method

.method public translationY(Landroid/support/v4/view/ck;Landroid/view/View;F)V
    .locals 0

    invoke-static {p2, p3}, Landroid/support/v4/view/c;->translationY(Landroid/view/View;F)V

    return-void
.end method

.method public translationYBy(Landroid/support/v4/view/ck;Landroid/view/View;F)V
    .locals 0

    invoke-static {p2, p3}, Landroid/support/v4/view/c;->translationYBy(Landroid/view/View;F)V

    return-void
.end method

.method public withEndAction(Landroid/support/v4/view/ck;Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 1

    new-instance v0, Landroid/support/v4/view/co;

    invoke-direct {v0, p1}, Landroid/support/v4/view/co;-><init>(Landroid/support/v4/view/ck;)V

    invoke-static {p2, v0}, Landroid/support/v4/view/c;->setListener(Landroid/view/View;Landroid/support/v4/view/cx;)V

    invoke-static {p1, p3}, Landroid/support/v4/view/ck;->a(Landroid/support/v4/view/ck;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    return-void
.end method

.method public withLayer(Landroid/support/v4/view/ck;Landroid/view/View;)V
    .locals 1

    invoke-static {p2}, Landroid/support/v4/view/av;->getLayerType(Landroid/view/View;)I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/view/ck;->a(Landroid/support/v4/view/ck;I)I

    new-instance v0, Landroid/support/v4/view/co;

    invoke-direct {v0, p1}, Landroid/support/v4/view/co;-><init>(Landroid/support/v4/view/ck;)V

    invoke-static {p2, v0}, Landroid/support/v4/view/c;->setListener(Landroid/view/View;Landroid/support/v4/view/cx;)V

    return-void
.end method

.method public withStartAction(Landroid/support/v4/view/ck;Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 1

    new-instance v0, Landroid/support/v4/view/co;

    invoke-direct {v0, p1}, Landroid/support/v4/view/co;-><init>(Landroid/support/v4/view/ck;)V

    invoke-static {p2, v0}, Landroid/support/v4/view/c;->setListener(Landroid/view/View;Landroid/support/v4/view/cx;)V

    invoke-static {p1, p3}, Landroid/support/v4/view/ck;->b(Landroid/support/v4/view/ck;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    return-void
.end method

.method public x(Landroid/support/v4/view/ck;Landroid/view/View;F)V
    .locals 0

    invoke-static {p2, p3}, Landroid/support/v4/view/c;->x(Landroid/view/View;F)V

    return-void
.end method

.method public xBy(Landroid/support/v4/view/ck;Landroid/view/View;F)V
    .locals 0

    invoke-static {p2, p3}, Landroid/support/v4/view/c;->xBy(Landroid/view/View;F)V

    return-void
.end method

.method public y(Landroid/support/v4/view/ck;Landroid/view/View;F)V
    .locals 0

    invoke-static {p2, p3}, Landroid/support/v4/view/c;->y(Landroid/view/View;F)V

    return-void
.end method

.method public yBy(Landroid/support/v4/view/ck;Landroid/view/View;F)V
    .locals 0

    invoke-static {p2, p3}, Landroid/support/v4/view/c;->yBy(Landroid/view/View;F)V

    return-void
.end method
