.class final Landroid/support/v4/view/g;
.super Landroid/view/View$AccessibilityDelegate;


# instance fields
.field private synthetic a:Landroid/support/v4/view/h;


# direct methods
.method constructor <init>(Landroid/support/v4/view/h;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/view/g;->a:Landroid/support/v4/view/h;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public final dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/view/g;->a:Landroid/support/v4/view/h;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/h;->dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public final getAccessibilityNodeProvider(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/view/g;->a:Landroid/support/v4/view/h;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/h;->getAccessibilityNodeProvider(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeProvider;

    return-object v0
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/view/g;->a:Landroid/support/v4/view/h;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/h;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/view/g;->a:Landroid/support/v4/view/h;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/h;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Ljava/lang/Object;)V

    return-void
.end method

.method public final onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/view/g;->a:Landroid/support/v4/view/h;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/h;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public final onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/view/g;->a:Landroid/support/v4/view/h;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/view/h;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public final performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/view/g;->a:Landroid/support/v4/view/h;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/view/h;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public final sendAccessibilityEvent(Landroid/view/View;I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/view/g;->a:Landroid/support/v4/view/h;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/h;->sendAccessibilityEvent(Landroid/view/View;I)V

    return-void
.end method

.method public final sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/view/g;->a:Landroid/support/v4/view/h;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/h;->sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method
