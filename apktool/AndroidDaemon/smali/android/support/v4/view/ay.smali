.class Landroid/support/v4/view/ay;
.super Landroid/support/v4/view/ax;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/view/ax;-><init>()V

    return-void
.end method


# virtual methods
.method final a()J
    .locals 2

    invoke-static {}, Landroid/animation/ValueAnimator;->getFrameDelay()J

    move-result-wide v0

    return-wide v0
.end method

.method public combineMeasuredStates(II)I
    .locals 1

    invoke-static {p1, p2}, Landroid/support/v4/view/c;->combineMeasuredStates(II)I

    move-result v0

    return v0
.end method

.method public getAlpha(Landroid/view/View;)F
    .locals 1

    invoke-static {p1}, Landroid/support/v4/view/c;->getAlpha(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public getLayerType(Landroid/view/View;)I
    .locals 1

    invoke-static {p1}, Landroid/support/v4/view/c;->getLayerType(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public getMeasuredHeightAndState(Landroid/view/View;)I
    .locals 1

    invoke-static {p1}, Landroid/support/v4/view/c;->getMeasuredHeightAndState(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public getMeasuredState(Landroid/view/View;)I
    .locals 1

    invoke-static {p1}, Landroid/support/v4/view/c;->getMeasuredState(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public getMeasuredWidthAndState(Landroid/view/View;)I
    .locals 1

    invoke-static {p1}, Landroid/support/v4/view/c;->getMeasuredWidthAndState(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public getPivotX(Landroid/view/View;)F
    .locals 1

    invoke-static {p1}, Landroid/support/v4/view/c;->getPivotX(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public getPivotY(Landroid/view/View;)F
    .locals 1

    invoke-static {p1}, Landroid/support/v4/view/c;->getPivotY(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public getRotation(Landroid/view/View;)F
    .locals 1

    invoke-static {p1}, Landroid/support/v4/view/c;->getRotation(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public getRotationX(Landroid/view/View;)F
    .locals 1

    invoke-static {p1}, Landroid/support/v4/view/c;->getRotationX(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public getRotationY(Landroid/view/View;)F
    .locals 1

    invoke-static {p1}, Landroid/support/v4/view/c;->getRotationY(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public getScaleX(Landroid/view/View;)F
    .locals 1

    invoke-static {p1}, Landroid/support/v4/view/c;->getScaleX(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public getScaleY(Landroid/view/View;)F
    .locals 1

    invoke-static {p1}, Landroid/support/v4/view/c;->getScaleY(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public getTranslationX(Landroid/view/View;)F
    .locals 1

    invoke-static {p1}, Landroid/support/v4/view/c;->getTranslationX(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public getTranslationY(Landroid/view/View;)F
    .locals 1

    invoke-static {p1}, Landroid/support/v4/view/c;->getTranslationY(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public getX(Landroid/view/View;)F
    .locals 1

    invoke-static {p1}, Landroid/support/v4/view/c;->getX(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public getY(Landroid/view/View;)F
    .locals 1

    invoke-static {p1}, Landroid/support/v4/view/c;->getY(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method public jumpDrawablesToCurrentState(Landroid/view/View;)V
    .locals 0

    invoke-static {p1}, Landroid/support/v4/view/c;->jumpDrawablesToCurrentState(Landroid/view/View;)V

    return-void
.end method

.method public resolveSizeAndState(III)I
    .locals 1

    invoke-static {p1, p2, p3}, Landroid/support/v4/view/c;->resolveSizeAndState(III)I

    move-result v0

    return v0
.end method

.method public setActivated(Landroid/view/View;Z)V
    .locals 0

    invoke-static {p1, p2}, Landroid/support/v4/view/c;->setActivated(Landroid/view/View;Z)V

    return-void
.end method

.method public setAlpha(Landroid/view/View;F)V
    .locals 0

    invoke-static {p1, p2}, Landroid/support/v4/view/c;->setAlpha(Landroid/view/View;F)V

    return-void
.end method

.method public setLayerPaint(Landroid/view/View;Landroid/graphics/Paint;)V
    .locals 1

    invoke-virtual {p0, p1}, Landroid/support/v4/view/ay;->getLayerType(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Landroid/support/v4/view/ay;->setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V
    .locals 0

    invoke-static {p1, p2, p3}, Landroid/support/v4/view/c;->setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V

    return-void
.end method

.method public setPivotX(Landroid/view/View;F)V
    .locals 0

    invoke-static {p1, p2}, Landroid/support/v4/view/c;->setPivotX(Landroid/view/View;F)V

    return-void
.end method

.method public setPivotY(Landroid/view/View;F)V
    .locals 0

    invoke-static {p1, p2}, Landroid/support/v4/view/c;->setPivotY(Landroid/view/View;F)V

    return-void
.end method

.method public setRotation(Landroid/view/View;F)V
    .locals 0

    invoke-static {p1, p2}, Landroid/support/v4/view/c;->setRotation(Landroid/view/View;F)V

    return-void
.end method

.method public setRotationX(Landroid/view/View;F)V
    .locals 0

    invoke-static {p1, p2}, Landroid/support/v4/view/c;->setRotationX(Landroid/view/View;F)V

    return-void
.end method

.method public setRotationY(Landroid/view/View;F)V
    .locals 0

    invoke-static {p1, p2}, Landroid/support/v4/view/c;->setRotationY(Landroid/view/View;F)V

    return-void
.end method

.method public setSaveFromParentEnabled(Landroid/view/View;Z)V
    .locals 0

    invoke-static {p1, p2}, Landroid/support/v4/view/c;->setSaveFromParentEnabled(Landroid/view/View;Z)V

    return-void
.end method

.method public setScaleX(Landroid/view/View;F)V
    .locals 0

    invoke-static {p1, p2}, Landroid/support/v4/view/c;->setScaleX(Landroid/view/View;F)V

    return-void
.end method

.method public setScaleY(Landroid/view/View;F)V
    .locals 0

    invoke-static {p1, p2}, Landroid/support/v4/view/c;->setScaleY(Landroid/view/View;F)V

    return-void
.end method

.method public setTranslationX(Landroid/view/View;F)V
    .locals 0

    invoke-static {p1, p2}, Landroid/support/v4/view/c;->setTranslationX(Landroid/view/View;F)V

    return-void
.end method

.method public setTranslationY(Landroid/view/View;F)V
    .locals 0

    invoke-static {p1, p2}, Landroid/support/v4/view/c;->setTranslationY(Landroid/view/View;F)V

    return-void
.end method

.method public setX(Landroid/view/View;F)V
    .locals 0

    invoke-static {p1, p2}, Landroid/support/v4/view/c;->setX(Landroid/view/View;F)V

    return-void
.end method

.method public setY(Landroid/view/View;F)V
    .locals 0

    invoke-static {p1, p2}, Landroid/support/v4/view/c;->setY(Landroid/view/View;F)V

    return-void
.end method
