.class Landroid/support/v4/view/bb;
.super Landroid/support/v4/view/az;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/view/az;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccessibilityNodeProvider(Landroid/view/View;)Landroid/support/v4/view/a/x;
    .locals 2

    invoke-static {p1}, Landroid/support/v4/view/c;->getAccessibilityNodeProvider(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/support/v4/view/a/x;

    invoke-direct {v0, v1}, Landroid/support/v4/view/a/x;-><init>(Ljava/lang/Object;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFitsSystemWindows(Landroid/view/View;)Z
    .locals 1

    invoke-static {p1}, Landroid/support/v4/view/c;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public getImportantForAccessibility(Landroid/view/View;)I
    .locals 1

    invoke-static {p1}, Landroid/support/v4/view/c;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public getMinimumHeight(Landroid/view/View;)I
    .locals 1

    invoke-static {p1}, Landroid/support/v4/view/c;->getMinimumHeight(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public getMinimumWidth(Landroid/view/View;)I
    .locals 1

    invoke-static {p1}, Landroid/support/v4/view/c;->getMinimumWidth(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public getParentForAccessibility(Landroid/view/View;)Landroid/view/ViewParent;
    .locals 1

    invoke-static {p1}, Landroid/support/v4/view/c;->getParentForAccessibility(Landroid/view/View;)Landroid/view/ViewParent;

    move-result-object v0

    return-object v0
.end method

.method public hasOverlappingRendering(Landroid/view/View;)Z
    .locals 1

    invoke-static {p1}, Landroid/support/v4/view/c;->hasOverlappingRendering(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public hasTransientState(Landroid/view/View;)Z
    .locals 1

    invoke-static {p1}, Landroid/support/v4/view/c;->hasTransientState(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    invoke-static {p1, p2, p3}, Landroid/support/v4/view/c;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public postInvalidateOnAnimation(Landroid/view/View;)V
    .locals 0

    invoke-static {p1}, Landroid/support/v4/view/c;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method

.method public postInvalidateOnAnimation(Landroid/view/View;IIII)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p5}, Landroid/support/v4/view/c;->postInvalidateOnAnimation(Landroid/view/View;IIII)V

    return-void
.end method

.method public postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p1, p2}, Landroid/support/v4/view/c;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method

.method public postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, Landroid/support/v4/view/c;->postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public requestApplyInsets(Landroid/view/View;)V
    .locals 0

    invoke-static {p1}, Landroid/support/v4/view/c;->requestApplyInsets(Landroid/view/View;)V

    return-void
.end method

.method public setHasTransientState(Landroid/view/View;Z)V
    .locals 0

    invoke-static {p1, p2}, Landroid/support/v4/view/c;->setHasTransientState(Landroid/view/View;Z)V

    return-void
.end method

.method public setImportantForAccessibility(Landroid/view/View;I)V
    .locals 1

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    const/4 p2, 0x2

    :cond_0
    invoke-static {p1, p2}, Landroid/support/v4/view/c;->setImportantForAccessibility(Landroid/view/View;I)V

    return-void
.end method
