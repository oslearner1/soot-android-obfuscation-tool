.class Landroid/support/v4/view/b;
.super Landroid/support/v4/view/c;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/view/c;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    invoke-static {p1, p2, p3}, Landroid/support/v4/view/e;->dispatchPopulateAccessibilityEvent(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public newAccessiblityDelegateBridge(Landroid/support/v4/view/a;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Landroid/support/v4/view/e;

    invoke-direct {v0, p0, p1}, Landroid/support/v4/view/e;-><init>(Landroid/support/v4/view/b;Landroid/support/v4/view/a;)V

    invoke-static {v0}, Landroid/support/v4/view/e;->newAccessibilityDelegateBridge$17062cc3(Landroid/support/v4/view/e;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public newAccessiblityDelegateDefaultImpl()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Landroid/support/v4/view/e;->newAccessibilityDelegateDefaultImpl()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public onInitializeAccessibilityEvent(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    invoke-static {p1, p2, p3}, Landroid/support/v4/view/e;->onInitializeAccessibilityEvent(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Ljava/lang/Object;Landroid/view/View;Landroid/support/v4/view/a/k;)V
    .locals 1

    invoke-virtual {p3}, Landroid/support/v4/view/a/k;->getInfo()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, p2, v0}, Landroid/support/v4/view/e;->onInitializeAccessibilityNodeInfo(Ljava/lang/Object;Landroid/view/View;Ljava/lang/Object;)V

    return-void
.end method

.method public onPopulateAccessibilityEvent(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    invoke-static {p1, p2, p3}, Landroid/support/v4/view/e;->onPopulateAccessibilityEvent(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public onRequestSendAccessibilityEvent(Ljava/lang/Object;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    invoke-static {p1, p2, p3, p4}, Landroid/support/v4/view/e;->onRequestSendAccessibilityEvent(Ljava/lang/Object;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public sendAccessibilityEvent(Ljava/lang/Object;Landroid/view/View;I)V
    .locals 0

    invoke-static {p1, p2, p3}, Landroid/support/v4/view/e;->sendAccessibilityEvent(Ljava/lang/Object;Landroid/view/View;I)V

    return-void
.end method

.method public sendAccessibilityEventUnchecked(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    invoke-static {p1, p2, p3}, Landroid/support/v4/view/e;->sendAccessibilityEventUnchecked(Ljava/lang/Object;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method
