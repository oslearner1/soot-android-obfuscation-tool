.class final Landroid/support/v4/widget/ap;
.super Landroid/support/v4/view/a;


# instance fields
.field private final a:Landroid/graphics/Rect;

.field private synthetic b:Landroid/support/v4/widget/SlidingPaneLayout;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/SlidingPaneLayout;)V
    .locals 1

    iput-object p1, p0, Landroid/support/v4/widget/ap;->b:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-direct {p0}, Landroid/support/v4/view/a;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/ap;->a:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final filter(Landroid/view/View;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/ap;->b:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/SlidingPaneLayout;->d(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/support/v4/view/a;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    const-class v0, Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/a/k;)V
    .locals 4

    invoke-static {p2}, Landroid/support/v4/view/a/k;->obtain(Landroid/support/v4/view/a/k;)Landroid/support/v4/view/a/k;

    move-result-object v0

    invoke-super {p0, p1, v0}, Landroid/support/v4/view/a;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/a/k;)V

    iget-object v1, p0, Landroid/support/v4/widget/ap;->a:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/a/k;->getBoundsInParent(Landroid/graphics/Rect;)V

    invoke-virtual {p2, v1}, Landroid/support/v4/view/a/k;->setBoundsInParent(Landroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/a/k;->getBoundsInScreen(Landroid/graphics/Rect;)V

    invoke-virtual {p2, v1}, Landroid/support/v4/view/a/k;->setBoundsInScreen(Landroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/support/v4/view/a/k;->isVisibleToUser()Z

    move-result v1

    invoke-virtual {p2, v1}, Landroid/support/v4/view/a/k;->setVisibleToUser(Z)V

    invoke-virtual {v0}, Landroid/support/v4/view/a/k;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/support/v4/view/a/k;->setPackageName(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/support/v4/view/a/k;->getClassName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/support/v4/view/a/k;->setClassName(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/support/v4/view/a/k;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/support/v4/view/a/k;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/support/v4/view/a/k;->isEnabled()Z

    move-result v1

    invoke-virtual {p2, v1}, Landroid/support/v4/view/a/k;->setEnabled(Z)V

    invoke-virtual {v0}, Landroid/support/v4/view/a/k;->isClickable()Z

    move-result v1

    invoke-virtual {p2, v1}, Landroid/support/v4/view/a/k;->setClickable(Z)V

    invoke-virtual {v0}, Landroid/support/v4/view/a/k;->isFocusable()Z

    move-result v1

    invoke-virtual {p2, v1}, Landroid/support/v4/view/a/k;->setFocusable(Z)V

    invoke-virtual {v0}, Landroid/support/v4/view/a/k;->isFocused()Z

    move-result v1

    invoke-virtual {p2, v1}, Landroid/support/v4/view/a/k;->setFocused(Z)V

    invoke-virtual {v0}, Landroid/support/v4/view/a/k;->isAccessibilityFocused()Z

    move-result v1

    invoke-virtual {p2, v1}, Landroid/support/v4/view/a/k;->setAccessibilityFocused(Z)V

    invoke-virtual {v0}, Landroid/support/v4/view/a/k;->isSelected()Z

    move-result v1

    invoke-virtual {p2, v1}, Landroid/support/v4/view/a/k;->setSelected(Z)V

    invoke-virtual {v0}, Landroid/support/v4/view/a/k;->isLongClickable()Z

    move-result v1

    invoke-virtual {p2, v1}, Landroid/support/v4/view/a/k;->setLongClickable(Z)V

    invoke-virtual {v0}, Landroid/support/v4/view/a/k;->getActions()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/support/v4/view/a/k;->addAction(I)V

    invoke-virtual {v0}, Landroid/support/v4/view/a/k;->getMovementGranularities()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/support/v4/view/a/k;->setMovementGranularities(I)V

    invoke-virtual {v0}, Landroid/support/v4/view/a/k;->recycle()V

    const-class v0, Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/k;->setClassName(Ljava/lang/CharSequence;)V

    invoke-virtual {p2, p1}, Landroid/support/v4/view/a/k;->setSource(Landroid/view/View;)V

    invoke-static {p1}, Landroid/support/v4/view/av;->getParentForAccessibility(Landroid/view/View;)Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/support/v4/view/a/k;->setParent(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/ap;->b:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-virtual {v0}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildCount()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    iget-object v2, p0, Landroid/support/v4/widget/ap;->b:Landroid/support/v4/widget/SlidingPaneLayout;

    invoke-virtual {v2, v0}, Landroid/support/v4/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/support/v4/widget/ap;->filter(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/support/v4/view/av;->setImportantForAccessibility(Landroid/view/View;I)V

    invoke-virtual {p2, v2}, Landroid/support/v4/view/a/k;->addChild(Landroid/view/View;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    invoke-virtual {p0, p2}, Landroid/support/v4/widget/ap;->filter(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/view/a;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
